package §"!>§
{
   import flash.events.Event;
   
   public class §8";§ extends Event
   {
      
      public static const §]!T§:String = "dataLoaded";
      
      public static const §2e§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §8";§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §8";§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
