import { defineClientConfig } from '@vuepress/client'

export default defineClientConfig({
  enhance({ app, router, siteData }) {
    // This client app enhance file is loaded on both client and server
  },
})
