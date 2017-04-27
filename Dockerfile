FROM michaeltigr/zebra-build-php-drush:latest

LABEL maintainer "Michael Molchanov <mmolchanov@adyax.com>"

USER root

# Install docman.
  && rm -rf /var/cache/apk/* \
  && gem install --no-ri --no-rdoc specific_install \
  && gem specific_install https://github.com/Adyax/docman.git develop
