// ?  -> null hoi too error naa ape ena badle null ape...
// ?? -> null hoi n tyre 0 value assign karva mate..
// ?= -> 
// !  -> 

void main() {
  String? name;
  print(name);
  // print(name.length);
  print(name?.length ?? 0);
}
