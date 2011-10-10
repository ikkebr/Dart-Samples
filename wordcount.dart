int howmany(Collection collection, element){
	var i=0;
	var occurrences = 0;
	for(i=0; i < collection.length; i++){
		if (collection[i] == element){
			occurrences++;
		}
	}
	return occurrences;
}

main() {
  String text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in nisl eu neque pharetra vulputate. Ut congue risus at nulla vestibulum nec tristique metus semper. Aliquam aliquam ipsum commodo nisi sagittis facilisis fringilla sem ornare. Cras ac nisi massa, eget malesuada dui. Curabitur in tristique eros. Aliquam et nulla ligula, ac mattis lacus. Nulla purus nibh, consequat et dignissim et, commodo id felis. Donec sit amet orci non lectus auctor commodo. Donec sem ligula, scelerisque sagittis faucibus sit amet, feugiat viverra ipsum. Nullam non mi mi. Nunc consequat ultrices varius. Pellentesque eros nisi, suscipit vitae laoreet a, vestibulum sed lectus. Nam ut semper lacus. Sed scelerisque velit aliquam nisl tempus non pharetra neque malesuada. Praesent semper leo et justo dictum nec vehicula dui mollis.';
  text = text.replaceAll(',',' ');
  text = text.replaceAll('.',' ');
  text = text.replaceAll('  ',' ');
  text = text.toLowerCase();
  
  var words = text.split(' ');
  
  var unique = new Set<String>.from(words);

  print(unique.length);

  var counter = new Map<String, int>();

  var n0 = unique.iterator();
  
  while(n0.hasNext()){
	var word = n0.next();
	counter[word] = howmany(words, word);
  }
  
  counter.forEach( (word, number) {
    print("${word}\t${number}");
  });

}