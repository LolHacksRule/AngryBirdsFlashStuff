package §`>§
{
   import flash.events.Event;
   
   public class §1!,§ extends Event
   {
      
      public static const §43§:String = "ErrorPaneEvent.OnHideComplete";
       
      
      public function §1!,§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §1!,§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
