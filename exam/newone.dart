

import 'dart:collection';

class Graph {

  HashMap<int, List<int>> graph = HashMap();

  void insert(int vertex, int edge, bool isBidirect) {
    if (!graph.containsKey(vertex)) {
      graph[vertex] = [];
    }
    if (!graph.containsKey(edge)) {
      graph[edge] = [];
    }
    graph[vertex]!.add(edge);
    if (isBidirect) {
      graph[edge]!.add(vertex);
    }
  }

  void bfsTraversal(int startVertex){
    Queue<int>queue =Queue();
    Set<int> visited =Set();

    queue.add(startVertex);
    visited.add(startVertex);
    while(queue.isNotEmpty){
      int currentVertex = queue.removeFirst();
      print(currentVertex);
    }
  }
}