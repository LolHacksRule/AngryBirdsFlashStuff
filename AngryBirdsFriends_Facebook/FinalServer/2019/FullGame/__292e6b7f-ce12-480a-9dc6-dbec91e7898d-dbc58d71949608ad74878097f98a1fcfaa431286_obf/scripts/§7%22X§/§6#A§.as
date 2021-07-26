package §7"X§
{
   import flash.events.Event;
   
   public class §6#A§ extends Event
   {
      
      public static const §4$&§:String = "dataLoaded";
      
      public static const §%i§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §6#A§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §6#A§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
