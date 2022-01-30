package §!!+§
{
   import §!q§.§;@§;
   import §%!Z§.§;!c§;
   import §,"$§.§5!P§;
   import §,i§.§^"3§;
   import §0!d§.§8!r§;
   import §1!p§.§`!#§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §8"'§.§?!`§;
   import §9!G§.§>!n§;
   import §<8§.§7!n§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §^"3§
   {
      
      public static const §]"2§:String = "StateLevelEditorTestPlay";
      
      public static const §!"%§:String = "Test-PlayLevel";
      
      private static var §&A§:BitmapData;
       
      
      private var §'!B§:§;!c§;
      
      private var §`E§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         super(param1,param2);
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         §&A§ = param1;
      }
      
      public static function §#5§() : BitmapData
      {
         return §&A§;
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelPreview[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §;@§.§-y§(onScreenshotReady);
      }
      
      override public function activate() : void
      {
         §"?§.§4M§ = §!"%§;
         super.activate();
         this.§,z§();
         §'K§.getItemByName("Container_TopRight").goToFrame(2,false);
         §?!`§.doJsCall("onPreviewStarted");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?!`§.doJsCall("onPreviewEnded");
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§5!P§.isOpen)
         {
            return _loc2_;
         }
         this.§,z§();
         if(mNextState.length > 0)
         {
            (AngryBirdsFP11.§<U§ as §`!#§).§+!Y§(§!"%§,§]c§.getScore());
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §"Z§.§]"2§;
      }
      
      override public function getLoserState() : String
      {
         return §?! §.§]"2§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.ESCAPE:
               mNextState = StateLevelEditor.§]"2§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         if(param3 is §8!r§)
         {
            if(param1 == §7!n§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §>!n§.§ V§();
            }
            else if(param1 == §7!n§.LISTENER_EVENT_MOUSE_UP)
            {
               §>!n§.§`!H§();
            }
         }
         switch(param2)
         {
            case "HELP":
               this.§'!B§ = new §;!c§(§'K§,§1!=§.§8X§.Views.PopupView_PlayHelp[0]);
               this.§'!B§.open();
               break;
            case "HELP_CLOSE":
               this.§'!B§.close();
               break;
            case "CLOSE_TUTORIAL":
               §5!P§.§^X§();
               break;
            case "RESTART_LEVEL":
               §4!l§.§"l§(StateLevelEditorTestPlay.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            case "CANCEL":
               §4!l§.§"l§(StateLevelEditor.§]"2§);
               § !x§.§ X§();
               mNextState = §4!l§.§]"2§;
               break;
            case "FULLSCREEN_BUTTON":
               §?!`§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §,z§() : void
      {
         var _loc1_:int = §]c§.getScore();
         §'K§.setText(_loc1_.toString(),"TextField_CurrentScore");
      }
   }
}
