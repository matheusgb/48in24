import std/algorithm
import std/strutils
  
proc reverse*(s: string): string =
  var str: string = s.reversed().join();
  str