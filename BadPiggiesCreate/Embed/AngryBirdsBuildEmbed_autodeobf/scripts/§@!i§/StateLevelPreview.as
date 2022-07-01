package §@!i§
{
   import § !r§.§%s§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const STATE_NAME:String = "StateLevelPreview";
       
      
      private var §4-§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         if(param3 is §#!'§)
         {
            if(param1 == §+!S§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%s§.§[!@§();
            }
            else if(param1 == §+!S§.LISTENER_EVENT_MOUSE_UP)
            {
               §%s§.§<1§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §@!n§.§!=§(STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §,!F§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §?!q§.STATE_NAME;
      }
   }
}
