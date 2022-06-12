package § "@§
{
   import §'!A§.§-!S§;
   import §'p§.§="#§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §'=§:String = "StateLevelPreview";
       
      
      private var §^'§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         if(param3 is §="#§)
         {
            if(param1 == §-!S§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §"o§.§2!a§();
            }
            else if(param1 == §-!S§.LISTENER_EVENT_MOUSE_UP)
            {
               §"o§.§[!?§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §%!3§.§4[§(§'=§);
               mNextState = §%!3§.§'=§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §-m§.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §#"?§.§'=§;
      }
   }
}
