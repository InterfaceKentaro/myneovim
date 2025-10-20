return {
  'nvim-telescope/telescope-fzf-native.nvim',
  build = 'make -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
}
