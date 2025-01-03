FROM ghcr.io/postalserver/postal:3.3.4

# find line containing only the word 'end' in /opt/postal/app/config/environments/production.rb
# and add the following lines before it
#   config.hosts << "postal-web.postal.svc.cluster.local"
#   config.hosts << "postal-web"
RUN sed -i '/^end$/i \ \ config.hosts << "postal-web.postal.svc.cluster.local"\n\ \ config.hosts << "postal-web"' /opt/postal/app/config/environments/production.rb
