on run argv
  if (count of argv) is not 2 then error "usage: export_pptx_to_pdf.applescript INPUT.pptx OUTPUT.pdf"
  set inputFile to POSIX file (item 1 of argv)
  set outputFile to POSIX file (item 2 of argv)
  tell application "Microsoft PowerPoint"
    activate
    open inputFile
    delay 2
    save active presentation in outputFile as save as PDF
    close active presentation saving no
  end tell
end run
