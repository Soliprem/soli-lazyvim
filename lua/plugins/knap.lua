return {

  "frabjous/knap",
  keys = {
    {
      "<F5>",
      function()
        require("knap").process_once()
      end,
      desc = "compile file",
    },
    {
      "<F6>",
      function()
        require("knap").close_viewer()
      end,
      desc = "close viewer",
    },
    {
      "<F7>",
      function()
        require("knap").toggle_autopreviewing()
      end,
      desc = "autocompile",
    },
    {
      "<F8>",
      function()
        require("knap").forward_jump()
      end,
      desc = "jump to text",
    },
  },
  config = function()
    vim.g.knap_settings = {
      htmloutputext = "html",
      htmltohtml = "none",
      htmltohtmlviewerlaunch = "falkon %outputfile%",
      htmltohtmlviewerrefresh = "none",
      mdoutputext = "html",
      rmdoutputext = "html",
      rmdtohtml = "Rscript -e \"rmarkdown::render('%docroot%')\"",
      rmdtohtmlviewerlaunch = "falkon %outputfile%",
      rmdtohtmlviewerrefresh = "none",
      mdtohtml = "pandoc -f commonmark_x --standalone %docroot% -o %outputfile%",
      mdtohtmlviewerlaunch = "falkon %outputfile%",
      mdtohtmlviewerrefresh = "none",
      mdtopdf = "pandoc %docroot% -o %outputfile%",
      mdtopdfviewerlaunch = "sioyek %outputfile%",
      mdtopdfviewerrefresh = "none",
      markdownoutputext = "html",
      markdowntohtml = "pandoc --standalone %docroot% -o %outputfile%",
      markdowntohtmlviewerlaunch = "falkon %outputfile%",
      markdowntohtmlviewerrefresh = "none",
      markdowntopdf = "pandoc %docroot% -o %outputfile%",
      markdowntopdfviewerlaunch = "sioyek %outputfile%",
      markdowntopdfviewerrefresh = "none",
      typoutputext = "pdf",
      typtopdf = "typst compile %docroot%",
      typtopdfviewerlaunch = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --new-window %outputfile%",
      typtopdfviewerrefresh = "none",
      typtopdfforwardjump = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --reuse-window --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
      texoutputext = "pdf",
      textopdf = "pdflatex -interaction=batchmode -halt-on-error -synctex=1 %docroot%",
      textopdfviewerlaunch = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --new-window %outputfile%",
      textopdfviewerrefresh = "none",
      textopdfforwardjump = "sioyek --inverse-search 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%1'\"'\"',%2,%3)\"' --reuse-window --forward-search-file %srcfile% --forward-search-line %line% %outputfile%",
      textopdfshorterror = 'A=%outputfile% ; LOGFILE="${A%.pdf}.log" ; rubber-info "$LOGFILE" 2>&1 | head -n 1',
      delay = 250,
    }
  end,
}
