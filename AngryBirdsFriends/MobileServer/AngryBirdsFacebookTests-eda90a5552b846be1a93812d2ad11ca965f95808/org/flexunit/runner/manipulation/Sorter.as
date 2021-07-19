package org.flexunit.runner.manipulation
{
   import org.flexunit.runner.IDescription;
   
   public class Sorter implements ISorter
   {
       
      
      private var comparator:Function;
      
      public function Sorter(comparator:Function)
      {
         super();
         this.comparator = comparator;
      }
      
      public function apply(object:Object) : void
      {
         var sortable:ISortable = null;
         if(object is ISortable)
         {
            sortable = object as ISortable;
            sortable.sort(this);
         }
      }
      
      public function compare(o1:IDescription, o2:IDescription) : int
      {
         return this.comparator(o1,o2);
      }
   }
}
