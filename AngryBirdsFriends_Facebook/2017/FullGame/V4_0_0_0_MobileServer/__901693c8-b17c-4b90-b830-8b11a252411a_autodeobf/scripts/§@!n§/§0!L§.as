package §@!n§
{
   import flash.events.Event;
   
   public class §0!L§ extends Event
   {
      
      public static const §@>§:String = "dataLoaded";
      
      public static const §,!L§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §0!L§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §0!L§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
