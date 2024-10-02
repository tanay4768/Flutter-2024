// The Dart language has special support for the following:
/*
  1. Numbers (int, double)
  2. Strings (String)
  3. Booleans (bool)
  4. Records ((value1, value2))
  5.Lists (List, also known as arrays)
  6.Sets (Set)
  7.Maps (Map)
  8.Runes (Runes; often replaced by the characters API)
  9.Symbols (Symbol)
  10.The value null (Null)
*/
void main() {
  // main() similar to every language this is the starting point of your code
//Number
/*  int (Integers) 
      32 bit signed integers
*/

  var a = -10;
  print(a);
//Bonus info (About BigInt)
/* bigint
      64 bit signed integers.
      Tip: I had used this for storing time in milliseconds from epoch .
 */
  BigInt bignum = BigInt.from(1111111111112222222);
  print(bignum);

/*
    double (Double)
    64-bit (double-precision) floating-point numbers, as specified by the IEEE 754 standard.
*/
  var b = 1.0;
  var c = 1.2e-4; //1.2 x 10^-4
  print(c);

// String to store sequence of characters
  String string = "Dart";

// Tip: Your can you $var_name for interpolation

  String example = "Hello my name is $string";
  print(example);

  //boolean (true or false)
  bool truthvalue = false;
  print(truthvalue);

  // Records
  /* Records are an anonymous, immutable, aggregate type. Like other collection types, they let you bundle multiple objects into a single object. Unlike other collection types, records are fixed-sized, heterogeneous, and typed. Records are real values; you can store them in variables, nest them, pass them to and from functions, and store them in data structures such as lists, maps, and sets.
   */

  var record = ('first', a: 2, b: true, 'last');

  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'
/*----------------------------------------------------------
  Record type annotation in a variable declaration:
  (String, int) record;
  Initialize it with a record expression:
  record = ('A string', 123);

    In a record type annotation, named fields go inside a curly brace-delimited section of type-and-name pairs, after all positional fields. In a record expression, the names go before each field value with a colon after:

    Record type annotation in a variable declaration:
  ({int a, bool b}) record;

   Initialize it with a record expression:
  record = (a: 123, b: true);

  The names of named fields in a record type are part of the record's type definition, or its shape. Two records with named fields with different names have different types:

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

     Compile error! These records don't have the same type.
  // // recordAB = recordXY;
--------------------------------------------------------------------- */
  // Lists (my favorite datatype)

  var list = [1, 2, 3];
  /* 
➡️ Operations on the list:
        Creating a list: List<String> myList = ['apple', 'banana', 'orange'];
        Accessing an element: print(myList[0]); // prints 'apple'
        Assigning a value: myList[0] = 'grape';
        Add/Remove Operations

        Adding an element: myList.add('watermelon');
        Inserting an element at a specific position: myList.insert(1, 'mango');
        Removing an element: myList.remove('banana');
        Removing an element at a specific position: myList.removeAt(1);
        Clearing the list: myList.clear();
        Search Operations

        Checking if a list contains an element: if (myList.contains('orange')) { print('orange is in the list'); }
        Finding the index of an element: int index = myList.indexOf('banana');
        Checking if a list is empty: if (myList.isEmpty) { print('the list is empty'); }
        Manipulation Operations

        Reversing a list: myList = myList.reversed.toList();
        Sorting a list: myList.sort();
        Shuffling a list: myList.shuffle();
        Iteration Operations

        Iterating over a list using a for loop: for (String fruit in myList) { print(fruit); }
        Iterating over a list using a foreach function: myList.forEach((fruit) => print(fruit)); */

  //Sets
//      A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type.
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  print(elements.length);

  /*Maps
In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and the Map type.
*/
  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

//adding a new element
  nobleGases[11] = 'sodium';
//retriving a value from key
  print("10 : $nobleGases[10]");

/*
        Basic Operations

        Creating a map: Map<String, int> myMap = {'apple': 1, 'banana': 2, 'orange': 3};
        Accessing a value: print(myMap['apple']); // prints 1
        Assigning a value: myMap['grape'] = 4;
        Add/Remove Operations

        Adding a key-value pair: myMap['watermelon'] = 5;
        Removing a key-value pair: myMap.remove('banana');
        Clearing the map: myMap.clear();
        Search Operations

        Checking if a map contains a key: if (myMap.containsKey('orange')) { print('orange is in the map'); }
        Checking if a map contains a value: if (myMap.containsValue(2)) { print('2 is in the map'); }
        Checking if a map is empty: if (myMap.isEmpty) { print('the map is empty'); }
        Manipulation Operations

        Updating a value: myMap.update('apple', (value) => value + 1);
        Merging two maps: myMap.addAll({'peach': 6, 'pineapple': 7});
        Iteration Operations

        Iterating over a map using a for loop: for (var entry in myMap.entries) { print('${entry.key}: ${entry.value}'); }
        Iterating over a map's keys: for (var key in myMap.keys) { print(key); }
        Iterating over a map's values: for (var value in myMap.values) { print(value); }

*/

//Symbols (These are run time constants) not much used in programming
  #ffeid;

// the value null
  var str = null;


//Runes (often replaced by character API)
  //Try out running the following print statement
  print("Thanks! \u{1F490} For reading till end.");
}
