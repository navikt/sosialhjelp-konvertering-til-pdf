FROM gotenberg/gotenberg:9.6.0-libreoffice@sha256:f925f5e2fa2b6e58953c2d56baddc8e82e550c4b8acf91995af36f323089ff4d

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
