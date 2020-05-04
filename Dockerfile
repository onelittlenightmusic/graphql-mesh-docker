FROM node:14.1.0
COPY work /work
WORKDIR /work
RUN yarn add graphql @graphql-mesh/runtime @graphql-mesh/cli
CMD ["yarn", "start"]