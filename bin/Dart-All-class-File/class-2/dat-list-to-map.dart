void main(){
  var List =  ['name' 'momin','mom'];
  var map = Map.fromIterable(List,key:(item) => item, value: (item) => item.length);
  print(map);
}