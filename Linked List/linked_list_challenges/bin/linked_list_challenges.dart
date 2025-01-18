class Node {
  int value;
  Node? next;

  Node(this.value);
}

Node createNode(int value) {
  return Node(value);
}

void linkNodes(Node node1, Node node2) {
  node1.next = node2;
}

void printLinkedList(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

//Challenge 1: Print in Reverse
void printInReverse(Node? head) {
  if (head == null) return;
  printInReverse(head.next);
  print(head.value);
}

//Challenge 2: Find the Middle Node
Node? findMiddleNode(Node? head) {
  if (head == null) return null;

  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }

  return slow;
}

//Challenge 3: Reverse a Linked List
Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? next = null;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

// Challenge 4: Remove All Occurrences
void removeAllOccurrences(Node? head, int value) {
  while (head != null && head.value == value) {
    head = head.next;
  }

  Node? current = head;
  while (current != null && current.next != null) {
    if (current.next!.value == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }
}

void main() {
  Node node1 = createNode(1);
  Node node2 = createNode(2);
  Node node3 = createNode(2);
  Node node4 = createNode(2);
  Node node5 = createNode(3);
  Node node6 = createNode(4);
  Node node7 = createNode(5);

  linkNodes(node1, node2);
  linkNodes(node2, node3);
  linkNodes(node3, node4);
  linkNodes(node4, node5);
  linkNodes(node5, node6);
  linkNodes(node6, node7);

  print("Original Linked List:");
  printLinkedList(node1);

//Challenge 1: Print in Reverse
  print("\nLinked List in Reverse:");
  printInReverse(node1);

//Challenge 2: Find the Middle Node
  Node? middleNode = findMiddleNode(node1);
  if (middleNode != null) {
    print("\nMiddle Node: ${middleNode.value}");
  } else {
    print("\nThe list is empty.");
  }

//Challenge 3: Reverse a Linked List
  Node? reversedHead = reverseLinkedList(node1);

  print("\nReversed Linked List:");
  printLinkedList(reversedHead);

// Challenge 4: Remove All Occurrences of a Specific Value
  removeAllOccurrences(reversedHead, 2);

  print("\nLinked List after Removing All Occurrences of 2:");
  printLinkedList(reversedHead);
}
