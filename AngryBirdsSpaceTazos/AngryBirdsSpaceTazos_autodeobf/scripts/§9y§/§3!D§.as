package §9y§
{
   import flash.events.Event;
   
   public class §3!D§ extends Event
   {
      
      public static const §7!I§:String = "ErrorPaneEvent.OnHideComplete";
       
      
      public function §3!D§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §3!D§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
