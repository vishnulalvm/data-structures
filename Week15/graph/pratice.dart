import 'dart:collection';

class Graph{
  HashMap<int, List<int>>graph = HashMap();

  void insert(int vertex, int edge, bool isBidirect){
    if(!graph.containsKey(vertex)){
      graph[vertex]=[];
    }
    if(!graph.containsKey(edge)){
      graph[edge] =[];
    }
    graph[vertex]!.add(edge);
    if(isBidirect){
      graph[edge]!.add(vertex);
    }
  }

  void display(){
    graph.forEach((key, value) {
      print("$key,$value");
    });
  }

  void remove(int data){
    if(graph.containsKey(data)){
      graph.remove(data);
    }
  }
void bfsTraversal(int startVertex){
  Queue<int>queue = Queue();
  Set<int> visited =Set();
  queue.add(startVertex);
  visited.add(startVertex);
  while(queue.isNotEmpty){
    int currentVertex = queue.removeFirst();
    print(currentVertex);

    List<int>? list = graph[currentVertex];
    if(list != null){
      for(int neighbor in list){
        if(queue.contains(neighbor)){
          queue.add(neighbor);
          visited.add(neighbor);
        }
      }
    }
  }
}

// void dfs(int startVertex){
//   Set<int> visited = Set();
//   void dfsRecursive(int currentVertex){
//     pri
//   }
// }



}