package §@!i§
{
   import § !r§.§%s§;
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §+]§.§"U§;
   import §1!F§.§@!D§;
   import §=!3§.§;!!§;
   import §false§.§!!o§;
   import §false§.§0!4§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §@!D§
   {
      
      public static const STATE_NAME:String = "StateLevelEditorTestPlay";
      
      private static var §8H§:BitmapData;
       
      
      private var §&!E§:§0!4§;
      
      private var §4-§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §8H§ = param1;
      }
      
      public static function §^!`§() : BitmapData
      {
         return §8H§;
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPlayEditor[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §"U§.§#!t§(onScreenshotReady);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.updateCurrentScore();
         §+!$§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
         §-!D§.§?5§("onPreviewStarted");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §-!D§.§?5§("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§!!o§.isOpen)
         {
            return _loc2_;
         }
         this.updateCurrentScore();
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §#S§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §0!§.STATE_NAME;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.STATE_NAME;
         }
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
            case "HELP":
               this.§&!E§ = new §0!4§(§+!$§,§=!Z§.§;K§.Views.PopupView_PlayHelp[0]);
               this.§&!E§.open();
               break;
            case "HELP_CLOSE":
               this.§&!E§.close();
               break;
            case "CLOSE_TUTORIAL":
               §!!o§.§7§();
               break;
            case "PAUSE":
               mNextState = §[!_§.STATE_NAME;
               break;
            case "RESTART_LEVEL":
               §@!n§.§!=§(StateLevelEditorTestPlay.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               §-!D§.§?5§("onFullscreenToggle");
         }
      }
      
      private function updateCurrentScore() : void
      {
         var _loc1_:int = §5!J§.getScore();
         §+!$§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
