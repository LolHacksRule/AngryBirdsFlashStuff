package §>§
{
   import flash.events.Event;
   
   public class §7!]§ extends Event
   {
      
      public static const §?X§:String = "dataLoaded";
      
      public static const §=!p§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §7!]§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §7!]§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
