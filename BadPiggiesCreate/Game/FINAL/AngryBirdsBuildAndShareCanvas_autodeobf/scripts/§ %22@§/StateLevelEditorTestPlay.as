package § "@§
{
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'i§.§ "+§;
   import §'p§.§="#§;
   import §+h§.§5h§;
   import §-!n§.§5!U§;
   import §0![§.§6l§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §2H§.§,J§;
   import §5"-§.§5y§;
   import §=!M§.§"o§;
   import §^!y§.§'"#§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §6l§
   {
      
      public static const §'=§:String = "StateLevelEditorTestPlay";
      
      public static const §3Y§:String = "Test-PlayLevel";
      
      private static var § R§:BitmapData;
      
      private static var §&"-§:Boolean = false;
       
      
      private var §7"6§:Boolean = true;
      
      private var §^-§:§,J§;
      
      private var §^'§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         § R§ = param1;
      }
      
      public static function §%P§() : BitmapData
      {
         return § R§;
      }
      
      public static function set §^!M§(param1:Boolean) : void
      {
         §&"-§ = param1;
      }
      
      public static function get §^!M§() : Boolean
      {
         return §&"-§;
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelPreview[0]);
      }
      
      override public function activate() : void
      {
         §3!w§.§%n§ = §3Y§;
         super.activate();
         this.§9!+§();
         §?E§.getItemByName("Container_TopRight").goToFrame(2,false);
         §4m§.doJsCall("onPreviewStarted");
         this.§7"6§ = true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4m§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(this.§7"6§)
         {
            this.§7"6§ = false;
            § "+§.§2&§(onScreenshotReady);
         }
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§5h§.isOpen)
         {
            return _loc2_;
         }
         this.§9!+§();
         if(mNextState.length > 0)
         {
            §&"-§ = §=!X§.§!'§.§1!V§.§5!7§() > 0 && §=!X§.§!'§.§1!V§.getPigCount() == 0 && §=!X§.§!'§.§1!V§.§""2§() > 0;
            (AngryBirdsFP11.§>" § as §'"#§).§0!§(§3Y§,§-!K§.getScore());
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return StateLevelEditor.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §;q§.§'=§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§'=§;
         }
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
            case "HELP":
               this.§^-§ = new §,J§(§?E§,§`7§.§>"?§.Views.PopupView_PlayHelp[0]);
               this.§^-§.open();
               break;
            case "HELP_CLOSE":
               this.§^-§.close();
               break;
            case "CLOSE_TUTORIAL":
               §5h§.§7h§();
               break;
            case "RESTART_LEVEL":
               §%!3§.§4[§(StateLevelEditorTestPlay.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            case "CANCEL":
               §%!3§.§4[§(StateLevelEditor.§'=§);
               §5!U§.§9&§();
               mNextState = §%!3§.§'=§;
               break;
            case "FULLSCREEN_BUTTON":
               §4m§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §9!+§() : void
      {
         var _loc1_:int = §-!K§.getScore();
         §?E§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
