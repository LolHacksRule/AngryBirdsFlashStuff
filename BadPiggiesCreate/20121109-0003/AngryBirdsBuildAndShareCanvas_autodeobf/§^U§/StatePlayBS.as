package §^U§
{
   import §#";§.§0"#§;
   import §%!j§.§%K§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,!g§.§>7§;
   import §05§.§?s§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§9"8§;
   import §?!'§.§3$§;
   import §@y§.§0=§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §%"3§
   {
      
      public static const §%!Q§:String = "StatePlayBS";
      
      public static const §&5§:int = 50;
       
      
      private var §>"&§:Boolean = true;
      
      protected var §-"9§:§9!=§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§-"9§ = new §9!=§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>7§.§];§(false);
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPlayBS[0]);
         §%K§.§`9§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §0"#§.§9"2§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-"9§.§2">§(0);
         this.§^!`§(0);
         §`!v§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§3$§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^!`§(param1);
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §<"5§.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §7!r§.§%!Q§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §@"0§.§%P§(§%!Q§);
               mNextState = §@"0§.§%!Q§;
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
            case "CLOSE_TUTORIAL":
               §3$§.§4!W§();
               break;
            case "PAUSE":
               mNextState = §4!T§.§%!Q§;
               break;
            case "RESTART_LEVEL":
               §@"0§.§%P§(StatePlayBS.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            case "FULLSCREEN_BUTTON":
               §?s§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §^!`§(param1:Number) : void
      {
         var _loc2_:int = §%!x§.getScore();
         var _loc3_:int = this.§-"9§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§-"9§.getValue() + param1 * §&5§);
            this.§-"9§.§2">§(_loc3_);
         }
         §`!v§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§);
         §`!v§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
