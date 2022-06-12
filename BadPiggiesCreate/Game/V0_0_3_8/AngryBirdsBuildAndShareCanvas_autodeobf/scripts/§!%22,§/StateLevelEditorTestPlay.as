package §!",§
{
   import §!!T§.§"!S§;
   import §!D§.§3!6§;
   import §'!O§.§[!m§;
   import §-D§.§2!w§;
   import §-P§.§+!>§;
   import §1S§.§<!n§;
   import §4u§.§9<§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9e§.§"!e§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §]!b§.§40§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §+!>§
   {
      
      public static const §#!w§:String = "StateLevelEditorTestPlay";
      
      public static const §4"&§:String = "Test-PlayLevel";
      
      private static var §0!n§:BitmapData;
       
      
      private var §1V§:§<!n§;
      
      private var §=e§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §0!n§ = param1;
      }
      
      public static function §+!T§() : BitmapData
      {
         return §0!n§;
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPreview[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §40§.§!_§(onScreenshotReady);
      }
      
      override public function activate() : void
      {
         §[!m§.§<!D§ = §4"&§;
         super.activate();
         this.§[!z§();
         §1!j§.getItemByName("Container_TopRight").goToFrame(2,false);
         §"!S§.doJsCall("onPreviewStarted");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §"!S§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§2!w§.isOpen)
         {
            return _loc2_;
         }
         this.§[!z§();
         if(mNextState.length > 0)
         {
            (AngryBirdsFP11.§8!v§ as §"!e§).§8"#§(§4"&§,§8",§.getScore());
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return § 7§.§#!w§;
      }
      
      override public function getLoserState() : String
      {
         return §'!%§.§#!w§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§#!w§;
         }
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
            case "HELP":
               this.§1V§ = new §<!n§(§1!j§,§"a§.§-!g§.Views.PopupView_PlayHelp[0]);
               this.§1V§.open();
               break;
            case "HELP_CLOSE":
               this.§1V§.close();
               break;
            case "CLOSE_TUTORIAL":
               §2!w§.§-x§();
               break;
            case "RESTART_LEVEL":
               §"F§.§%!,§(StateLevelEditorTestPlay.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            case "CANCEL":
               §"F§.§%!,§(StateLevelEditor.§#!w§);
               §?!7§.§@"!§();
               mNextState = §"F§.§#!w§;
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §[!z§() : void
      {
         var _loc1_:int = §8",§.getScore();
         §1!j§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
