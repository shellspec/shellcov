# TODO: Implement a parser to detect executable lines of shell scripts

{
  lineno = sprintf("%" width "d", NR)
  print lineno "|" $0
}
