package §=!i§
{
   import flash.events.Event;
   
   public class CachedDataEvent extends Event
   {
      
      public static const DATA_LOADED:String = "dataLoaded";
      
      public static const TOTAL_ITEM_COUNT_UPDATED:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function CachedDataEvent(type:String, index:int = -1, count:int = -1, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
      }
      
      override public function clone() : Event
      {
         return new CachedDataEvent(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
