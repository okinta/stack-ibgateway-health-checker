FROM okinta/ibgateway-health-checker

COPY files /
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["run"]
