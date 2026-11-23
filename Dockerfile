FROM gotenberg/gotenberg:9.9.3-libreoffice@sha256:d7c238a1b1f5726c0e82e5838b2b5acbbead95a4f4a367c6ffa05c2dc20485f6

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
