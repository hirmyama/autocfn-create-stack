FROM mcr.microsoft.com/dotnet/core/sdk:3.0

# install node.js
# https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

# install AWS CDK
# https://www.npmjs.com/package/aws-cdk
RUN npm i -g aws-cdk

#ENTRYPOINT ["/entrypoint.sh"]
CMD echo ok
