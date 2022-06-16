package flexunit.utils
{
   public class CollectionIterator implements Iterator
   {
       
      
      private var cursor:Number;
      
      private var collection:Collection;
      
      public function CollectionIterator(collection:Collection)
      {
         super();
         this.collection = collection;
         cursor = 0;
      }
      
      public function next() : Object
      {
         if(cursor >= collection.length())
         {
            throw new Error("Past end of collection");
         }
         return collection.getItemAt(cursor++);
      }
      
      public function hasNext() : Boolean
      {
         return cursor < collection.length();
      }
   }
}
