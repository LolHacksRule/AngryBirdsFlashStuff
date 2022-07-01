package §,r§
{
   import §"p§.§`!y§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §-!@§.§5!@§;
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §3",§.§0"<§;
   import §5!8§.§;!Z§;
   import §7N§.§@!x§;
   import §=e§.§1!@§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §@r§.§[i§;
   import §^x§.§<!w§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §,!3§
   {
      
      public static const §8n§:String = "StatePlayBS";
      
      public static const §5!N§:int = 50;
       
      
      private var §2!1§:Boolean = true;
      
      protected var §0!H§:§<s§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§0!H§ = new §<s§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[i§.§@b§(false);
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelPlayBS[0]);
         §0"<§.§<?§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §^k§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§0!H§.§8>§(0);
         this.§3"9§(0);
         §?F§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§5!@§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§3"9§(param1);
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return § !<§.§8n§;
      }
      
      override public function getLoserState() : String
      {
         return §2!_§.§8n§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §@!x§.§8U§(§8n§);
               mNextState = §@!x§.§8n§;
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
            case "CLOSE_TUTORIAL":
               §5!@§.§=!§();
               break;
            case "PAUSE":
               mNextState = §0>§.§8n§;
               break;
            case "RESTART_LEVEL":
               §@!x§.§8U§(StatePlayBS.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            case "FULLSCREEN_BUTTON":
               §1!@§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §3"9§(param1:Number) : void
      {
         var _loc2_:int = §<!#§.getScore();
         var _loc3_:int = this.§0!H§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§0!H§.getValue() + param1 * §5!N§);
            this.§0!H§.§8>§(_loc3_);
         }
         §?F§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§`!j§.§import§(§-!F§.§"!L§);
         §?F§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
