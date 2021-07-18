package §%_§
{
   import flash.events.Event;
   
   public class §+!x§ extends Event
   {
      
      public static const §4!j§:String = "ErrorPaneEvent.OnHideComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!j§ = "ErrorPaneEvent.OnHideComplete";
         }
      }
      
      public function §+!x§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §+!x§(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("EpisodeButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
