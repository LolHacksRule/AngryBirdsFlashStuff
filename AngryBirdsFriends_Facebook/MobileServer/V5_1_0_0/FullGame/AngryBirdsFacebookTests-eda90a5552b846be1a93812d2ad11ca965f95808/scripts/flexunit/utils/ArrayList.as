package flexunit.utils
{
   public class ArrayList implements Collection
   {
       
      
      private var items:Array;
      
      public function ArrayList()
      {
         super();
         items = new Array();
      }
      
      public function isEmpty() : Boolean
      {
         return items.length == 0;
      }
      
      private function getItemIndex(item:Object) : Number
      {
         var i:uint = 0;
         for(i = 0; i < items.length; i++)
         {
            if(items[i] == item)
            {
               return i;
            }
         }
         return -1;
      }
      
      public function contains(item:Object) : Boolean
      {
         return getItemIndex(item) > -1;
      }
      
      public function clear() : void
      {
         items = new Array();
      }
      
      public function addItem(item:Object) : Boolean
      {
         if(item == null)
         {
            return false;
         }
         items.push(item);
         return true;
      }
      
      public function toArray() : Array
      {
         return items;
      }
      
      public function getItemAt(index:Number) : Object
      {
         return items[index];
      }
      
      public function length() : Number
      {
         return items.length;
      }
      
      public function iterator() : Iterator
      {
         return Iterator(new CollectionIterator(this));
      }
      
      public function removeItem(item:Object) : Boolean
      {
         var itemIndex:Number = NaN;
         itemIndex = getItemIndex(item);
         if(itemIndex < 0)
         {
            return false;
         }
         items.splice(itemIndex,1);
         return true;
      }
   }
}
