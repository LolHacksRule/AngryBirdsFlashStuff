package §_-AZ§
{
   import flash.events.Event;
   
   public class §_-Vh§ extends Event
   {
      
      public static const §_-04P§:String = "dataLoaded";
      
      public static const §_-SO§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §_-Vh§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §_-Vh§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
