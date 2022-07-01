package §2!"§
{
   import flash.events.Event;
   
   public class §+^§ extends Event
   {
      
      public static const §1!b§:String = "ErrorPaneEvent.OnHideComplete";
       
      
      public function §+^§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §+^§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
