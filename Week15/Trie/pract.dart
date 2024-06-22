import 'dart:collection';

class TrieNode{
  HashMap<String,TrieNode>children =HashMap();
  bool end = false;
}
class Trie{
  TrieNode root = TrieNode();
  void insertWord(String word){
    TrieNode temp = root;
    for(int i = word.length -1;i>=0;i--){
      if(!temp.children.containsKey(word[i])){
        TrieNode newNode = TrieNode();
        temp.children[word[i]] = newNode;
      }
      temp = temp.children[word[i]]!;
    }
    temp.end = true;
  }

  bool contains(String suffix){
    TrieNode temp = root;
    for(int i = suffix.length -1;i>=0;i--){
      if(!temp.children.containsKey(suffix)||temp.children[suffix[i]] == null){
        return false;
      }
      temp = temp.children[suffix[i]]!;
    }
    return true;
  }
}

void main(){
Trie node = Trie();
node.insertWord('Vishny');
print(node.contains('vis'));

}