String longestUniqueSubstring(String str) {
    if (str.isEmpty) {return '';}
  String longest = '';
  String current = '';
  
  for (int j = 0; j < str.length; j++) {
    if (current.contains(str[j])) {
      current = current.substring(current.indexOf(str[j]) + 1);
    }
    current += str[j];
    if (current.length > longest.length) {
      longest = current;
    }
  }
  
  return longest;
}