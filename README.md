# kensaku-search.vim

[![kensaku.vim plugin](https://img.shields.io/badge/plugin-kensaku.vim-lightgray.svg)](https://github.com/lambdalisue/kensaku.vim)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![vim help](https://img.shields.io/badge/vim-%3Ah%20kensaku--search-orange.svg)](doc/kensaku-search.jax)

_kensaku-search.vim_ は [lambdalisue/kensaku.vim][lambdalisue/kensaku.vim] を
`/` や `?` で自然に利用するためのインテグレーションプラグインです。 `/` や `?`
で検索する際に、ローマ字を含む検索ワードが指定されている場合は自動的に正規表現に置き換えることで、自然にローマ字で日本語検索が可能です。

なお、オリジナルは [rhysd/migemo-search.vim][rhysd/migemo-search.vim]
で、このプラグインは同等の機能を
[lambdalisue/kensaku.vim][lambdalisue/kensaku.vim] を利用して提供しています。

[lambdalisue/kensaku.vim]: https://github.com/lambdalisue/kensaku.vim
[rhysd/migemo-search.vim]: https://github.com/rhysd/migemo-search.vim

## 必須条件

- [lambdalisue/kensaku.vim][lambdalisue/kensaku.vim]<br>CMigemo 非依存で Migemo
  を用いたローマ字による日本語検索機能を提供するためのプラグイン

## 利用方法

kensaku-search.vim
はデフォルトマッピングを提供していないため、ユーザーが以下のように `<CR>`
に対して `<Plug>(kensaku-search-replace)` を割り当てる必要があ ります。

```vim
cnoremap <CR> <Plug>(kensaku-search-replace)<CR>
```

その後 `/` や `?` に対してローマ字を指定すると `<CR>`
を押した時点で対応する正規表現に置き換わります。

## License

The code in this repository follows MIT license, texted in [LICENSE](./LICENSE).
Contributors need to agree that any modifications sent in this repository follow
the license.
