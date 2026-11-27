FROM gotenberg/gotenberg:9.9.3-libreoffice@sha256:d7c238a1b1f5726c0e82e5838b2b5acbbead95a4f4a367c6ffa05c2dc20485f6

USER root

# Gotenberg-imaget henter Debian-pakker når det bygges, og kommer ikke med de
# sikkerhetsoppdateringene Debian publiserer etterpå. 9.9.3 mangler for eksempel
# DSA-6650-1 (krb5) og DSA-6651-1 (libeot), begge publisert 22.11.2026.
# Workflowene bygger med no_cache, ellers blir dette laget gjenbrukt og nye pakker hentes aldri.
# curl-kommandoen er bare med upstream for Docker-healthchecks. Nais bruker HTTP-prober.
# libcurl blir værende, fordi LibreOffice og poppler trenger det.
# dpkg --purge feiler bygget hvis en annen pakke avhenger av curl.
RUN apt-get update -qq \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -qq \
    && dpkg --purge curl \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER gotenberg

# --libreoffice-deny-*-ips: LibreOffice henter stilark som HTML-dokumenter lenker til,
# via libcurl. Brukere kan laste opp HTML, så dette sperrer all utgående trafikk fra
# LibreOffice, også til GCP metadata-serveren som podden når.
CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable", "--libreoffice-deny-private-ips", "--libreoffice-deny-public-ips"]
