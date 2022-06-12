package §^^§
{
   import § ^§.§%!4§;
   import § true§.§8K§;
   import §""§.§-"§;
   import §#!8§.§&!'§;
   import §&W§.§1!w§;
   import §-!H§.§0!]§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §1!5§.§1&§;
   import §2x§.§?!<§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §?!<§
   {
      
      public static const §>H§:String = "StateLevelEditorTestPlay";
      
      public static const §'"-§:String = "Test-PlayLevel";
      
      private static var §&q§:BitmapData;
      
      private static var §`0§:Boolean = false;
       
      
      private var §>"+§:Boolean = true;
      
      private var §3"<§:§1&§;
      
      private var §^!a§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §&q§ = param1;
      }
      
      public static function §9!t§() : BitmapData
      {
         return §&q§;
      }
      
      public static function set §#"?§(param1:Boolean) : void
      {
         §`0§ = param1;
      }
      
      public static function get §#"?§() : Boolean
      {
         return §`0§;
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelPreview[0]);
      }
      
      override public function activate() : void
      {
         §8!z§.§>!&§ = §'"-§;
         super.activate();
         this.§`!9§();
         §3?§.getItemByName("Container_TopRight").goToFrame(2,false);
         §&!'§.doJsCall("onPreviewStarted");
         this.§>"+§ = true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&!'§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(this.§>"+§)
         {
            this.§>"+§ = false;
            §%!4§.§0D§(onScreenshotReady);
         }
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§-"§.isOpen)
         {
            return _loc2_;
         }
         this.§`!9§();
         if(mNextState.length > 0)
         {
            §`0§ = §5!U§.§,!E§.§4!1§.§3E§() > 0 && §5!U§.§,!E§.§4!1§.getPigCount() == 0 && §5!U§.§,!E§.§4!1§.§,!2§() > 0;
            (AngryBirdsFP11.§"!c§ as §0!]§).§1!"§(§'"-§,§6!f§.getScore());
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return StateLevelEditor.§>H§;
      }
      
      override public function getLoserState() : String
      {
         return §+J§.§>H§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§>H§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         if(param3 is §8K§)
         {
            if(param1 == §0p§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §1!w§.§@I§();
            }
            else if(param1 == §0p§.LISTENER_EVENT_MOUSE_UP)
            {
               §1!w§.§9i§();
            }
         }
         switch(param2)
         {
            case "HELP":
               this.§3"<§ = new §1&§(§3?§,§,!h§.§`C§.Views.PopupView_PlayHelp[0]);
               this.§3"<§.open();
               break;
            case "HELP_CLOSE":
               this.§3"<§.close();
               break;
            case "CLOSE_TUTORIAL":
               §-"§.§<" §();
               break;
            case "RESTART_LEVEL":
               §1§.§+!u§(StateLevelEditorTestPlay.§>H§);
               mNextState = §1§.§>H§;
               break;
            case "CANCEL":
               §1§.§+!u§(StateLevelEditor.§>H§);
               §5;§.§8X§();
               mNextState = §1§.§>H§;
               break;
            case "FULLSCREEN_BUTTON":
               §&!'§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §`!9§() : void
      {
         var _loc1_:int = §6!f§.getScore();
         §3?§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
