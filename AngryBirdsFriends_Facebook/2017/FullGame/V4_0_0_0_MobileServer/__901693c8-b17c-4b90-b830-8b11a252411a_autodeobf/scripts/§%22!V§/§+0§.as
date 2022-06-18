package §"!V§
{
   import flash.events.Event;
   
   public class §+0§ extends Event
   {
      
      public static const §5!I§:String = "EventOK";
      
      public static const §4!O§:String = "EventCancel";
       
      
      public var data:Object;
      
      public function §+0§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
   }
}
