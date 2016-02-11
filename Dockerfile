FROM openshift/perl-520-centos7
MAINTAINER N. Harrison Ripps <nhr@zig.mx>

# Switch to root for package installations
USER root

# Throw in a bunch of pre-built Perl module prerequisites
RUN yum install -y rh-perl520-perl-Archive-Zip rh-perl520-perl-CGI rh-perl520-perl-Data-Dumper rh-perl520-perl-DBI rh-perl520-perl-DBD-SQLite gd-devel

# Add Module::Install to the first pass of cpanminus based
# module installations.
RUN sed -i '/CoreList/ s/$/ Module::Install/' /usr/local/sti/assemble

# Revert to non-root user
USER 1001
