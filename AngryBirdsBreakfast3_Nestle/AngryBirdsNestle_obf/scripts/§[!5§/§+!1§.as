package §[!5§
{
   import flash.events.Event;
   
   public class §+!1§ extends Event
   {
      
      public static const §[!U§:String = "ErrorPaneEvent.OnHideComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!U§ = "ErrorPaneEvent.OnHideComplete";
         }
      }
      
      public function §+!1§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §+!1§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
