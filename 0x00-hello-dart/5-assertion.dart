void main(List<String> args) {
    /*
  Write Your code below 
   */
  int nb = int.parse(args[0]);
  assert(nb >= 80, 'The score must be bigger or equal to 80');
  print('You passed');
}