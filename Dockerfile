FROM node:14.1.0
ARG packagever
COPY work /work
WORKDIR /work
RUN yarn add graphql @graphql-mesh/runtime@$packagever @graphql-mesh/cli@$packagever @graphql-mesh/openapi@$packagever
CMD if [ -f "init.sh" ]; then sh init.sh; fi && yarn start