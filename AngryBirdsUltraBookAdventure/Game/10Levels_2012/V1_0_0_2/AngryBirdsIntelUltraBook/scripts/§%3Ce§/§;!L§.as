package §<e§
{
   import flash.events.Event;
   
   public class §;!L§ extends Event
   {
      
      public static const §<!s§:String = "dataLoaded";
      
      public static const §-I§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §;!L§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §;!L§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
