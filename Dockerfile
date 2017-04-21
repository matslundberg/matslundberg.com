FROM ubuntu:latest 
RUN apt-get install git
# Install Caddy
RUN curl https://getcaddy.com | bash -s dns,http.git,net,tls.dns.namecheap
# Install Hugo
RUN wget https://github.com/spf13/hugo/releases/download/v0.20.2/hugo_0.20.2-64bit.deb; sudo dpkg -i hugo*.deb
# Install theme
RUN mkdir themes; cd themes; git clone https://github.com/dldx/hpstr-hugo-theme.git hpstr
