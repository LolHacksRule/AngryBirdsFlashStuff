package § !§
{
   import flash.events.Event;
   
   public class §-q§ extends Event
   {
      
      public static const §-p§:String = "dataLoaded";
      
      public static const §<>§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §-q§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §-q§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
