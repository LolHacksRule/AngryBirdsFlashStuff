package §^>§
{
   import flash.events.Event;
   
   public class §<!j§ extends Event
   {
      
      public static const §89§:String = "ErrorPaneEvent.OnHideComplete";
       
      
      public function §<!j§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §<!j§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
