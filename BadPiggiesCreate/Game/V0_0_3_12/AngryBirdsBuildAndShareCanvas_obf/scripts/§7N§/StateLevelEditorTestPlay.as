package §7N§
{
   import §"p§.§`!y§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §,!x§.§1g§;
   import §,r§.§,!3§;
   import §-!@§.§5!@§;
   import §0E§.§-!F§;
   import §5!8§.§;!Z§;
   import §7!%§.§]j§;
   import §7"1§.§%W§;
   import §=e§.§1!@§;
   import §>";§.§#§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §,!3§
   {
      
      public static const §8n§:String = "StateLevelEditorTestPlay";
      
      public static const § try§:String = "Test-PlayLevel";
      
      private static var §>"%§:BitmapData;
      
      private static var §!k§:Boolean = false;
       
      
      private var §2!^§:§]j§;
      
      private var §2!1§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §>"%§ = param1;
      }
      
      public static function §"!&§() : BitmapData
      {
         return §>"%§;
      }
      
      public static function set §+c§(param1:Boolean) : void
      {
         §!k§ = param1;
      }
      
      public static function get §+c§() : Boolean
      {
         return §!k§;
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelPreview[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §1g§.§>!7§(onScreenshotReady);
      }
      
      override public function activate() : void
      {
         §-!F§.§"!L§ = § try§;
         super.activate();
         this.§3"9§();
         §?F§.getItemByName("Container_TopRight").goToFrame(2,false);
         §1!@§.doJsCall("onPreviewStarted");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §1!@§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§5!@§.isOpen)
         {
            return _loc2_;
         }
         this.§3"9§();
         if(mNextState.length > 0)
         {
            §!k§ = §%W§.§5"8§.§2![§.§4F§() > 0 && §%W§.§5"8§.§2![§.getPigCount() == 0 && §%W§.§5"8§.§2![§.§&x§() > 0;
            (AngryBirdsFP11.§`!j§ as §#§).§`!M§(§ try§,§<!#§.getScore());
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return StateLevelEditor.§8n§;
      }
      
      override public function getLoserState() : String
      {
         return §]",§.§8n§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§8n§;
         }
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
            case "HELP":
               this.§2!^§ = new §]j§(§?F§,§#! §.§5!;§.Views.PopupView_PlayHelp[0]);
               this.§2!^§.open();
               break;
            case "HELP_CLOSE":
               this.§2!^§.close();
               break;
            case "CLOSE_TUTORIAL":
               §5!@§.§=!§();
               break;
            case "RESTART_LEVEL":
               §@!x§.§8U§(StateLevelEditorTestPlay.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            case "CANCEL":
               §@!x§.§8U§(StateLevelEditor.§8n§);
               §^k§.§3,§();
               mNextState = §@!x§.§8n§;
               break;
            case "FULLSCREEN_BUTTON":
               §1!@§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §3"9§() : void
      {
         var _loc1_:int = §<!#§.getScore();
         §?F§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
