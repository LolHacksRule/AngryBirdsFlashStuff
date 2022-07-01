package §1!F§
{
   import § !r§.§%s§;
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §8!Q§.§2!7§;
   import §=!3§.§;!!§;
   import §@!X§.§7j§;
   import §@!i§.§@!n§;
   import §`a§.§^7§;
   import §false§.§!!o§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §@!D§
   {
      
      public static const STATE_NAME:String = "StatePlayBS";
      
      public static const §@f§:int = 50;
       
      
      private var §4-§:Boolean = true;
      
      protected var §1!l§:§2!7§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§1!l§ = new §2!7§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^7§.§>!B§(false);
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPlayBS[0]);
         §7j§.§else§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §+!§.§4c§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1!l§.assign(0);
         this.updateCurrentScore(0);
         §+!$§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§!!o§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §"![§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §2!i§.STATE_NAME;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §@!n§.§!=§(STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
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
            case "CLOSE_TUTORIAL":
               §!!o§.§7§();
               break;
            case "PAUSE":
               mNextState = §>P§.STATE_NAME;
               break;
            case "RESTART_LEVEL":
               §@!n§.§!=§(StatePlayBS.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               §-!D§.§?5§("onFullscreenToggle");
         }
      }
      
      private function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §5!J§.getScore();
         var _loc3_:int = this.§1!l§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§1!l§.getValue() + param1 * §@f§);
            this.§1!l§.assign(_loc3_);
         }
         §+!$§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§!7§(§1^§.§ ]§);
         §+!$§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
