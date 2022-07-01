package § J§
{
   import §"!2§.§>9§;
   import §""6§.§4V§;
   import §&!!§.§3j§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §,Q§.§="2§;
   import §1g§.§4T§;
   import §2!5§.§"^§;
   import §2!O§.§,w§;
   import §;!A§.§2v§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §;X§.§ "2§;
   import §?!k§.§0!t§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §4V§
   {
      
      public static const §^z§:String = "StateLevelEditorTestPlay";
      
      public static const §+[§:String = "Test-PlayLevel";
      
      private static var §8z§:BitmapData;
       
      
      private var §@P§:§4T§;
      
      private var §%!§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §8z§ = param1;
      }
      
      public static function §;h§() : BitmapData
      {
         return §8z§;
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPreview[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §"^§.§#w§(onScreenshotReady);
      }
      
      override public function activate() : void
      {
         §+"%§.§9!'§ = §+[§;
         super.activate();
         this.§#!h§();
         §%""§.getItemByName("Container_TopRight").goToFrame(2,false);
         §="2§.doJsCall("onPreviewStarted");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §="2§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§3j§.isOpen)
         {
            return _loc2_;
         }
         this.§#!h§();
         if(mNextState.length > 0)
         {
            (AngryBirdsFP11.§8!I§ as §>9§).§3!n§(§+[§,§`"5§.getScore());
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §2u§.§^z§;
      }
      
      override public function getLoserState() : String
      {
         return §#!r§.§^z§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§^z§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         if(param3 is §2v§)
         {
            if(param1 == §6=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               § "2§.§=i§();
            }
            else if(param1 == §6=§.LISTENER_EVENT_MOUSE_UP)
            {
               § "2§.§'9§();
            }
         }
         switch(param2)
         {
            case "HELP":
               this.§@P§ = new §4T§(§%""§,§8!O§.§'!J§.Views.PopupView_PlayHelp[0]);
               this.§@P§.open();
               break;
            case "HELP_CLOSE":
               this.§@P§.close();
               break;
            case "CLOSE_TUTORIAL":
               §3j§.§<,§();
               break;
            case "RESTART_LEVEL":
               §6"6§.§0!f§(StateLevelEditorTestPlay.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            case "CANCEL":
               §6"6§.§0!f§(StateLevelEditor.§^z§);
               §0!t§.§,!S§();
               mNextState = §6"6§.§^z§;
               break;
            case "FULLSCREEN_BUTTON":
               §="2§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §#!h§() : void
      {
         var _loc1_:int = §`"5§.getScore();
         §%""§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
