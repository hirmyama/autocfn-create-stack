FROM mcr.microsoft.com/dotnet/core/sdk:3.0

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

#ENTRYPOINT ["/entrypoint.sh"]
CMD echo ok
