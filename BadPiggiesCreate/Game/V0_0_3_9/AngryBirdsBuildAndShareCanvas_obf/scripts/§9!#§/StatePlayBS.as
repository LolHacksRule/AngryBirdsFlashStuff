package §9!#§
{
   import §!!A§.§""5§;
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §&"&§.§8!"§;
   import §-N§.§=!]§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §<!I§.§="5§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=;§.§=!"§;
   import §@!;§.§%"-§;
   import §@!N§.§3E§;
   import §]J§.§6!A§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §#!I§
   {
      
      public static const §8G§:String = "StatePlayBS";
      
      public static const §true§:int = 50;
       
      
      private var §8!&§:Boolean = true;
      
      protected var §"d§:§""5§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§"d§ = new §""5§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3E§.§!`§(false);
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPlayBS[0]);
         §=!]§.§@§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §'!B§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"d§.§9!<§(0);
         this.§#!x§(0);
         §;i§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§6!A§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§#!x§(param1);
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §4X§.§8G§;
      }
      
      override public function getLoserState() : String
      {
         return §=!A§.§8G§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §=!"§.§2!2§(§8G§);
               mNextState = §=!"§.§8G§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         if(param3 is §="5§)
         {
            if(param1 == §7!8§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%"-§.§in §();
            }
            else if(param1 == §7!8§.LISTENER_EVENT_MOUSE_UP)
            {
               §%"-§.§5!Q§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §6!A§.§8F§();
               break;
            case "PAUSE":
               mNextState = §#!R§.§8G§;
               break;
            case "RESTART_LEVEL":
               §=!"§.§2!2§(StatePlayBS.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            case "FULLSCREEN_BUTTON":
               §8!"§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §#!x§(param1:Number) : void
      {
         var _loc2_:int = § !V§.getScore();
         var _loc3_:int = this.§"d§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§"d§.getValue() + param1 * §true§);
            this.§"d§.§9!<§(_loc3_);
         }
         §;i§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§5!c§.§0!^§(§1!c§.§'Z§);
         §;i§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
