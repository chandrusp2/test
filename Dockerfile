# Use RHEL-based universal base image
FROM registry.access.redhat.com/ubi8/ubi

# Install Apache (httpd)
RUN dnf install -y httpd && \
    dnf clean all

# Copy local HTML file to Apache web root
COPY index.html /var/www/html/

# Expose port 80 for web traffics
EXPOSE 80

# Start Apache in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

