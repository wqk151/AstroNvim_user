return{
"rcarriga/nvim-notify",
ops = {
   background_colour = "#000000",
},
  config = function(_, opts) 
    require("notify").setup(opts)
  end,
} 
