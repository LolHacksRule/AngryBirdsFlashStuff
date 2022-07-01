package §""6§
{
   import § J§.§6"6§;
   import §&!!§.§3j§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §,Q§.§="2§;
   import §0P§.§!!l§;
   import §1"3§.§6!W§;
   import §2!O§.§,w§;
   import §2i§.§%!+§;
   import §;!A§.§2v§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §;X§.§ "2§;
   import §?!k§.§0!t§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §4V§
   {
      
      public static const §^z§:String = "StatePlayBS";
      
      public static const §<!v§:int = 50;
       
      
      private var §%!§:Boolean = true;
      
      protected var §-!Q§:§%!+§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§-!Q§ = new §%!+§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!W§.§?!G§(false);
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPlayBS[0]);
         §!!l§.§`7§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §0!t§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-!Q§.§`H§(0);
         this.§#!h§(0);
         §%""§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§3j§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#!h§(param1);
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §<a§.§^z§;
      }
      
      override public function getLoserState() : String
      {
         return §^"'§.§^z§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §6"6§.§0!f§(§^z§);
               mNextState = §6"6§.§^z§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         if(param3 is §2v§)
         {
            if(param1 == §6=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               § "2§.§=i§();
            }
            else if(param1 == §6=§.LISTENER_EVENT_MOUSE_UP)
            {
               § "2§.§'9§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §3j§.§<,§();
               break;
            case "PAUSE":
               mNextState = §!"1§.§^z§;
               break;
            case "RESTART_LEVEL":
               §6"6§.§0!f§(StatePlayBS.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            case "FULLSCREEN_BUTTON":
               §="2§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §#!h§(param1:Number) : void
      {
         var _loc2_:int = §`"5§.getScore();
         var _loc3_:int = this.§-!Q§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§-!Q§.getValue() + param1 * §<!v§);
            this.§-!Q§.§`H§(_loc3_);
         }
         §%""§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§8!I§.§`!K§(§+"%§.§9!'§);
         §%""§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
