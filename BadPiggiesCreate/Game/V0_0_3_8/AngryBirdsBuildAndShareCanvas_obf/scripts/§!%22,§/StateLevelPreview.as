package §!",§
{
   import §!D§.§3!6§;
   import §4u§.§9<§;
   import §9!7§.§#p§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §#!w§:String = "StateLevelPreview";
       
      
      private var §=e§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         if(param3 is §3!6§)
         {
            if(param1 == §#p§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9<§.§0!d§();
            }
            else if(param1 == §#p§.LISTENER_EVENT_MOUSE_UP)
            {
               §9<§.§,w§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §"F§.§%!,§(§#!w§);
               mNextState = §"F§.§#!w§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §>^§.§#!w§;
      }
      
      override public function getLoserState() : String
      {
         return §]7§.§#!w§;
      }
   }
}
