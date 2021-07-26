package org.flexunit.runner.manipulation
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.manipulation.sortingInheritance.ISortingInheritanceCache;
   
   public class OrderArgumentPlusInheritanceSorter implements ISorter, IFixtureSorter
   {
      
      public static var DEFAULT_SORTER:ISorter = new OrderArgumentPlusInheritanceSorter(OrderArgumentSorter.ORDER_ARG_SORTER);
       
      
      private var existingSorter:ISorter;
      
      public function OrderArgumentPlusInheritanceSorter(existingSorter:ISorter)
      {
         super();
         this.existingSorter = existingSorter;
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
      
      public function compareFixtureElements(o1:IDescription, o2:IDescription, cache:ISortingInheritanceCache, superFirst:Boolean = true) : int
      {
         var o1InheritedOrder:int = cache.getInheritedOrder(o1,superFirst);
         var o2InheritedOrder:int = cache.getInheritedOrder(o2,superFirst);
         if(o1InheritedOrder < o2InheritedOrder)
         {
            return 1;
         }
         if(o1InheritedOrder > o2InheritedOrder)
         {
            return -1;
         }
         return this.compare(o1,o2);
      }
      
      public function compare(o1:IDescription, o2:IDescription) : int
      {
         return this.existingSorter.compare(o1,o2);
      }
   }
}
