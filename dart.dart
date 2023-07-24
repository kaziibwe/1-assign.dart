  //1 
  
void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  // Using a for-in loop to iterate through the list and print elements less than 5.
  for (int element in a) {
    if (element < 5) {
      print(element);
    }
  }
}




//2

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> commonElements = findCommonElements(a, b);
  print(commonElements);
}
//fuction is defined out the main void because of the promotecode reusability.
List<int> findCommonElements(List<int> list1, List<int> list2) {
  Set<int> set1 = list1.toSet();
  Set<int> set2 = list2.toSet();

  Set<int> commonSet = set1.intersection(set2);

  return commonSet.toList();
}




//3

bool isPalindrome(String input) {
  String reversed = input.split('').reversed.join('');
  return input == reversed;
}

void main() {
  String testString = "hello";
  bool result = isPalindrome(testString);
  print("$testString is${result ? '' : ' not'} a palindrome.");
}


//4


// List<int> extractFirstAndLast(List<int> numbers) {
//   if (numbers.isEmpty) {
//     throw ArgumentError("The list must not be empty.");
//   }

//   int firstElement = numbers.first;
//   int lastElement = numbers.last;
//   return [firstElement, lastElement];
// }

// void main() {
//   List<int> a = [5, 10, 15, 20, 25];
//   List<int> result = extractFirstAndLast(a);
//   print("Original list: $a");
//   print("New list: $result");
// }


//5






//6

List<T> removeDuplicates<T>(List<T> list) {
  List<T> uniqueList = [];
  for (var item in list) {
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
    }
  }
  return uniqueList;
}

void main() {
  List<int> originalList = [1, 2, 2, 3, 4, 4, 5, 5, 5];
  List<int> newList = removeDuplicates(originalList);
  print("Original List: $originalList");
  print("New List without duplicates: $newList");
}


