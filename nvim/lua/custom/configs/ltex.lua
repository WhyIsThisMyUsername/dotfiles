return {
  require('lspconfig').ltex.setup {
    settings = {
      ltex = {
        language = 'en',
        additionalRules = {
          languageModel = '~/models/ngrams/',
        },
      },
    },
  },
}
