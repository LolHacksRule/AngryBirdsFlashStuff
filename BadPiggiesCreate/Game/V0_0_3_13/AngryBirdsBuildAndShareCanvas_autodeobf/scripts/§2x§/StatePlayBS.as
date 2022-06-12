package §2x§
{
   import § true§.§8K§;
   import §""§.§-"§;
   import §#!8§.§&!'§;
   import §&W§.§1!w§;
   import §,!!§.§0"!§;
   import §-!+§.§6"6§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §2b§.§8!m§;
   import §4!j§.§0p§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §^^§.§1§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §?!<§
   {
      
      public static const §>H§:String = "StatePlayBS";
      
      public static const §+#§:int = 50;
       
      
      private var §^!a§:Boolean = true;
      
      protected var §;"§:§0"!§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§;"§ = new §0"!§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §8!m§.§&!<§(false);
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelPlayBS[0]);
         §6"6§.§^F§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §5;§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;"§.§`S§(0);
         this.§`!9§(0);
         §3?§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§-"§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`!9§(param1);
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §5!h§.§>H§;
      }
      
      override public function getLoserState() : String
      {
         return §<!`§.§>H§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §1§.§+!u§(§>H§);
               mNextState = §1§.§>H§;
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
            case "CLOSE_TUTORIAL":
               §-"§.§<" §();
               break;
            case "PAUSE":
               mNextState = §7o§.§>H§;
               break;
            case "RESTART_LEVEL":
               §1§.§+!u§(StatePlayBS.§>H§);
               mNextState = §1§.§>H§;
               break;
            case "FULLSCREEN_BUTTON":
               §&!'§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §`!9§(param1:Number) : void
      {
         var _loc2_:int = §6!f§.getScore();
         var _loc3_:int = this.§;"§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§;"§.getValue() + param1 * §+#§);
            this.§;"§.§`S§(_loc3_);
         }
         §3?§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§"!c§.§7!9§(§8!z§.§>!&§);
         §3?§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
