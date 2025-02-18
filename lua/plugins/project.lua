return {
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup({
        -- Настройки для поиска корня
        detection_methods = { 'pattern' },
        patterns = { '.git' },
      })
    end,
  }
}

