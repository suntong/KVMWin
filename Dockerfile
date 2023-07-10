ARG BASE_IMAGE=debian
FROM ${BASE_IMAGE}

# Set the env variables to non-interactive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes 
ENV LANG C.UTF-8

RUN echo "Installing standard (and $PACKAGES) packages"; apt-get update && apt-get install --no-install-recommends -yq bridge-utils qemu-kvm virt-manager libvirt-daemon-system libosinfo-bin libvirt-clients libvirt0 gir1.2-spiceclientgtk-3.0 cifs-utils
