package §0![§
{
   import § "@§.§%!3§;
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §'!A§.§-!S§;
   import §'@§.§^J§;
   import §'p§.§="#§;
   import §+h§.§5h§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import §=!#§.§2"-§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §6l§
   {
      
      public static const §'=§:String = "StatePlayBS";
      
      public static const §#!q§:int = 50;
       
      
      private var §^'§:Boolean = true;
      
      protected var §&"$§:§^J§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§&"$§ = new §^J§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.§@&§(false);
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelPlayBS[0]);
         §?%§.§%b§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §5!U§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§&"$§.§&!Y§(0);
         this.§9!+§(0);
         §?E§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§5h§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9!+§(param1);
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §@8§.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §7!Y§.§'=§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §%!3§.§4[§(§'=§);
               mNextState = §%!3§.§'=§;
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
            case "CLOSE_TUTORIAL":
               §5h§.§7h§();
               break;
            case "PAUSE":
               mNextState = §@l§.§'=§;
               break;
            case "RESTART_LEVEL":
               §%!3§.§4[§(StatePlayBS.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            case "FULLSCREEN_BUTTON":
               §4m§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §9!+§(param1:Number) : void
      {
         var _loc2_:int = §-!K§.getScore();
         var _loc3_:int = this.§&"$§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§&"$§.getValue() + param1 * §#!q§);
            this.§&"$§.§&!Y§(_loc3_);
         }
         §?E§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§);
         §?E§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
