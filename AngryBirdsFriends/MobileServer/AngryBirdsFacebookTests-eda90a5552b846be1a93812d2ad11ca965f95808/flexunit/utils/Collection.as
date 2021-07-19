package flexunit.utils
{
   public interface Collection
   {
       
      
      function isEmpty() : Boolean;
      
      function length() : Number;
      
      function clear() : void;
      
      function iterator() : Iterator;
      
      function addItem(param1:Object) : Boolean;
      
      function removeItem(param1:Object) : Boolean;
      
      function getItemAt(param1:Number) : Object;
      
      function toArray() : Array;
      
      function contains(param1:Object) : Boolean;
   }
}
