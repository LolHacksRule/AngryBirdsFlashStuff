package §=;§
{
   import § !%§.§^2§;
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §&!P§.§#!5§;
   import §&"&§.§8!"§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §7"2§.§ 2§;
   import §9!#§.§#!I§;
   import §<!I§.§="5§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §@!;§.§%"-§;
   import §]J§.§6!A§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §#!I§
   {
      
      public static const §8G§:String = "StateLevelEditorTestPlay";
      
      public static const §>0§:String = "Test-PlayLevel";
      
      private static var §;!v§:BitmapData;
       
      
      private var §^=§:§#!5§;
      
      private var §8!&§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §;!v§ = param1;
      }
      
      public static function §>M§() : BitmapData
      {
         return §;!v§;
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPreview[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         § 2§.§6x§(onScreenshotReady);
      }
      
      override public function activate() : void
      {
         §1!c§.§'Z§ = §>0§;
         super.activate();
         this.§#!x§();
         §;i§.getItemByName("Container_TopRight").goToFrame(2,false);
         §8!"§.doJsCall("onPreviewStarted");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §8!"§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§6!A§.isOpen)
         {
            return _loc2_;
         }
         this.§#!x§();
         if(mNextState.length > 0)
         {
            (AngryBirdsFP11.§5!c§ as §^2§).§0"&§(§>0§,§ !V§.getScore());
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §%!B§.§8G§;
      }
      
      override public function getLoserState() : String
      {
         return §=&§.§8G§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§8G§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         if(param3 is §="5§)
         {
            if(param1 == §7!8§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%"-§.§in §();
            }
            else if(param1 == §7!8§.LISTENER_EVENT_MOUSE_UP)
            {
               §%"-§.§5!Q§();
            }
         }
         switch(param2)
         {
            case "HELP":
               this.§^=§ = new §#!5§(§;i§,§"!f§.§%!1§.Views.PopupView_PlayHelp[0]);
               this.§^=§.open();
               break;
            case "HELP_CLOSE":
               this.§^=§.close();
               break;
            case "CLOSE_TUTORIAL":
               §6!A§.§8F§();
               break;
            case "RESTART_LEVEL":
               §=!"§.§2!2§(StateLevelEditorTestPlay.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            case "CANCEL":
               §=!"§.§2!2§(StateLevelEditor.§8G§);
               §'!B§.§>T§();
               mNextState = §=!"§.§8G§;
               break;
            case "FULLSCREEN_BUTTON":
               §8!"§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §#!x§() : void
      {
         var _loc1_:int = § !V§.getScore();
         §;i§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
