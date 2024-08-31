return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                                                          ",
      "      l\\;'                                                                      .^_+     ",
      "       ,%Bc_^                                                                ';(**>       ",
      "        `WBBB8|:.                                                         ^+x****,        ",
      "         'zBBBBBBv+`                        .'                        ':)******c^         ",
      "          .jBBBBBBBB8(,.            !       I(       l'            `<x*******cj'          ",
      "           .}WMWBBBBBBBBn<`        1~   .   u%'      `#.       .,{z*****vuuuut.           ",
      "             +BBMMM##BBBBBBW1,.   `%(   .  :c8)      :%?    `>j****nnnnuz***1.            ",
      "              ;BBBBBBM##MWBBBBBx>`,%%\"    .rv8B'    'M%t.,}z**vvvuu********].            ",
      "               \"8BBBBBBBBB&&88%BBB%BB%+.  :zxM8|   :M8W***zzzc***********z;              ",
      "                `#BBBBBBBBBBBBB%88BBBBB81,rnfcWWI-zM#***vc**************r`                ",
      "                 .\\%BBBBBBBBBBBBB8##BBBBBW**|#BBB%#***unz*************ut`                ",
      "                   [#BBBBBBBBBBBBBBB**&BB#*nftBBBW**nxz*************zx/.                  ",
      "                    ]*WBBBBBBBBBBBBBBB&W8W*/nn*BB*urz***z**********xn|.                   ",
      "                     !Wz%BBBBBBBB%BBBBBBB8tc/xr%#uz*****zn*******vrz]                     ",
      "                      \"8#*BBBBBB8&BBBBBBBWx1x#uf*********zj****cjv*i                     ",
      "                       `W8cWBBBM#BBB%W88%uxxv#Btn*********cj**xx**,                       ",
      "                        .cBWz%M*BBBBB%M*tn?ffxv}1tjxu******ctrz*v`                        ",
      "                         .rBBnxBBBBBBBB8zBcfvMvf*j********cjnn*n'                         ",
      "                           18#8c&BBBBBB*BBBn|jt**cu******rn***\\.                         ",
      "                            <BBBMzBBBB#WBBBBMz****r****ur****1.                           ",
      "                             :BBBB*#BB%*BBBBWu****n**zxv****+                             ",
      "                              ^&BBB8z&BuBB8Mvjuc*vn*nn*****;                              ",
      "                               '#BBBBW*&nBB%ztu**\\vxz****z\"                             ",
      "                                .nBBBBBM\\BBBMn**z1v*****u`                               ",
      "                                 ./BBBBBMr%B#n**tn*****r.                                 ",
      "                                   ]BBBBBxBBMn**t*****(.                                  ",
      "                                    lBBBBv%BMn**/****]                                    ",
      "                                     \"%BBBnB#u*vx***i                                    ",
      "                                      `MBBuB*c*t**z,                                      ",
      "                                       'zB8*#c*f*c`                                       ",
      "                                        .fBc#cnvx'                                        ",
      "                                          1#cvjt.                                         ",
      "                                           ~uv_                                           ",
      "                                            ,~                                            ",
      "                                             .                                            ",
      "                                             .                                            ",
      "                                            ..                                            ",
      "                                            .                                             ",
      "                                                                                          ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

  end
}
