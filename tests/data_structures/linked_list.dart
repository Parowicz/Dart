import 'package:test/test.dart';
import '../../data_structures/linked_list.dart';

void main() {
  test(".add is adding elements in order", () {
    LinkedList<double> linkedList = new LinkedList();
    linkedList.add(1);
    linkedList.add(2);
    linkedList.add(3);

    expect(linkedList, equals([1, 2, 3]));
  });

  test(".remove is removing all elements with given value", () {
    LinkedList<double> linkedList = new LinkedList();
    linkedList.add(1);
    linkedList.add(2);
    linkedList.add(3);
    linkedList.add(2);

    linkedList.remove(2);

    expect(linkedList, equals([1, 3]));
  });

  test(".remove on empty list do nothing", () {
    LinkedList<double> linkedList = new LinkedList();

    linkedList.remove(2);

    expect(linkedList, isEmpty);
  });

  test(".push is appending first element", () {
    LinkedList<double> linkedList = new LinkedList();

    linkedList.push(1);
    expect(linkedList, equals([1]));

    linkedList.push(2);
    expect(linkedList, equals([2, 1]));

    linkedList.push(3);
    expect(linkedList, equals([3, 2, 1]));
  });

  test(".pop is returning and removing first element", () {
    LinkedList<double> linkedList = new LinkedList();

    linkedList.add(1);
    linkedList.add(2);
    linkedList.add(3);

    expect(linkedList.pop(), equals(1));
    expect(linkedList, equals([2, 3]));

    expect(linkedList.pop(), equals(2));
    expect(linkedList, equals([3]));

    expect(linkedList.pop(), equals(3));
    expect(linkedList, equals([]));
  });

  test(".pop is returning null when list is empty", () {
    LinkedList<double> linkedList = new LinkedList();

    expect(linkedList.pop(), isNull);
  });
}
