FROM node:14.0.0
RUN yarn add graphql @graphql-mesh/runtime @graphql-mesh/cli
COPY work /work
WORKDIR /work
RUN rm /package.json
CMD yarn graphql-mesh serve