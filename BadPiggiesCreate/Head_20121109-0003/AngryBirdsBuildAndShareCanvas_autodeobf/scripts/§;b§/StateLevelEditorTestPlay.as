package §;b§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §-"'§.§&"#§;
   import §05§.§?s§;
   import §1" §.§6!2§;
   import §6]§.§8!W§;
   import §7!@§.§+`§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §=!7§.§9"8§;
   import §?!'§.§3$§;
   import §@y§.§0=§;
   import §^U§.§%"3§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §%"3§
   {
      
      public static const §%!Q§:String = "StateLevelEditorTestPlay";
      
      public static const §55§:String = "Test-PlayLevel";
      
      private static var §;!?§:BitmapData;
      
      private static var §%!+§:Boolean = false;
       
      
      private var §^!A§:Boolean = true;
      
      private var §#!q§:§&"#§;
      
      private var §>"&§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §;!?§ = param1;
      }
      
      public static function §5"+§() : BitmapData
      {
         return §;!?§;
      }
      
      public static function set §3!%§(param1:Boolean) : void
      {
         §%!+§ = param1;
      }
      
      public static function get §3!%§() : Boolean
      {
         return §%!+§;
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPreview[0]);
      }
      
      override public function activate() : void
      {
         §`!r§.§0B§ = §55§;
         super.activate();
         this.§^!`§();
         §`!v§.getItemByName("Container_TopRight").goToFrame(2,false);
         §?s§.doJsCall("onPreviewStarted");
         this.§^!A§ = true;
         §0"#§.§<"0§(StateLevelEditor.§&!d§);
         §0"#§.§9"2§("BadPiggies_Play",StateLevelEditor.§&!d§,1000);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?s§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(this.§^!A§)
         {
            this.§^!A§ = false;
            §6!2§.§'" §(onScreenshotReady);
         }
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§3$§.isOpen)
         {
            return _loc2_;
         }
         this.§^!`§();
         if(mNextState.length > 0)
         {
            §%!+§ = §'_§.§=M§.§0n§.§=!_§() > 0 && §'_§.§=M§.§0n§.getPigCount() == 0 && §'_§.§=M§.§0n§.§5">§() > 0;
            (AngryBirdsFP11.§>!7§ as §+`§).§0!Y§(§55§,§%!x§.getScore());
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return StateLevelEditor.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §&H§.§%!Q§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§%!Q§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         if(param3 is §9"8§)
         {
            if(param1 == §0=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §8!W§.§for§();
            }
            else if(param1 == §0=§.LISTENER_EVENT_MOUSE_UP)
            {
               §8!W§.§^!R§();
            }
         }
         switch(param2)
         {
            case "HELP":
               this.§#!q§ = new §&"#§(§`!v§,§]!M§.§"!V§.Views.PopupView_PlayHelp[0]);
               this.§#!q§.open();
               break;
            case "HELP_CLOSE":
               this.§#!q§.close();
               break;
            case "CLOSE_TUTORIAL":
               §3$§.§4!W§();
               break;
            case "RESTART_LEVEL":
               §@"0§.§%P§(StateLevelEditorTestPlay.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            case "CANCEL":
               §@"0§.§%P§(StateLevelEditor.§%!Q§);
               §0"#§.§4"#§();
               mNextState = §@"0§.§%!Q§;
               break;
            case "FULLSCREEN_BUTTON":
               §?s§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §^!`§() : void
      {
         var _loc1_:int = §%!x§.getScore();
         §`!v§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
