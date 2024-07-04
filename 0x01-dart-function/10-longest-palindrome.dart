String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }
  
  String longest = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }

  return longest.isNotEmpty ? longest : 'none';
}

bool isPalindrome(String s) {
    if (s.length < 3) {
        return false;
    }
  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}