int add(int a, int b) {
    return a + b;
}
int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    String addStr = 'Add $a + $b = ${add(a, b)}';
    String subStr = 'Sub $a - $b = ${sub(a, b)}';
    return addStr + '\n' + subStr;
}