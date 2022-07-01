package §7N§
{
   import §"p§.§`!y§;
   import §5!8§.§;!Z§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §8n§:String = "StateLevelPreview";
       
      
      private var §2!1§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         if(param3 is §;!Z§)
         {
            if(param1 == §<!w§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`!y§.§%0§();
            }
            else if(param1 == §<!w§.LISTENER_EVENT_MOUSE_UP)
            {
               §`!y§.§6>§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §@!x§.§8U§(§8n§);
               mNextState = §@!x§.§8n§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §!F§.§8n§;
      }
      
      override public function getLoserState() : String
      {
         return §]! §.§8n§;
      }
   }
}
