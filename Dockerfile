FROM mcr.microsoft.com/dotnet/core/sdk:3.0

# install node.js
# https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# install AWS CDK
# https://www.npmjs.com/package/aws-cdk
RUN npm i -g aws-cdk

# install AWS CLI
# RUN apt-get install -y python3-distutils
# RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# RUN python3 get-pip.py
# RUN pip3 install awscli

COPY entrypoint.sh .
RUN ["chmod", "+x", "/entrypoint.sh"]

CMD ["/entrypoint.sh"]
