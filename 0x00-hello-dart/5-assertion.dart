void main(List<String> args) {
  if (args.isEmpty || int.tryParse(args[0]) == null) {
    print('Please provide a valid integer argument.');
    return;
  }

  int value = int.parse(args[0]);

  if (value >= 80) {
    print('you passed');
  }
}