package §-P§
{
   import §!!T§.§"!S§;
   import §!",§.§"F§;
   import §!D§.§3!6§;
   import §'!O§.§[!m§;
   import §,E§.§ t§;
   import §-D§.§2!w§;
   import §0!F§.§^d§;
   import §4u§.§9<§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §>0§.§=D§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §+!>§
   {
      
      public static const §#!w§:String = "StatePlayBS";
      
      public static const §3!'§:int = 50;
       
      
      private var §=e§:Boolean = true;
      
      protected var §]!w§:§ t§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§]!w§ = new § t§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=D§.§0!E§(false);
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPlayBS[0]);
         §^d§.§+!f§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §?!7§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§]!w§.§,V§(0);
         this.§[!z§(0);
         §1!j§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§2!w§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§[!z§(param1);
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §1""§.§#!w§;
      }
      
      override public function getLoserState() : String
      {
         return §1!I§.§#!w§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §"F§.§%!,§(§#!w§);
               mNextState = §"F§.§#!w§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         if(param3 is §3!6§)
         {
            if(param1 == §#p§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9<§.§0!d§();
            }
            else if(param1 == §#p§.LISTENER_EVENT_MOUSE_UP)
            {
               §9<§.§,w§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §2!w§.§-x§();
               break;
            case "PAUSE":
               mNextState = §"c§.§#!w§;
               break;
            case "RESTART_LEVEL":
               §"F§.§%!,§(StatePlayBS.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §[!z§(param1:Number) : void
      {
         var _loc2_:int = §8",§.getScore();
         var _loc3_:int = this.§]!w§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§]!w§.getValue() + param1 * §3!'§);
            this.§]!w§.§,V§(_loc3_);
         }
         §1!j§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§8!v§.§]!Q§(§[!m§.§<!D§);
         §1!j§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
