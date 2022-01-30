package §;!y§
{
   import flash.events.Event;
   
   public class §&o§ extends Event
   {
      
      public static const §[!C§:String = "ErrorPaneEvent.OnHideComplete";
       
      
      public function §&o§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §&o§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
