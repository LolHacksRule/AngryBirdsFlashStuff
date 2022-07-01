package §,i§
{
   import §!!+§.§4!l§;
   import §&!&§.§1"7§;
   import §,"$§.§5!P§;
   import §0!d§.§8!r§;
   import §2!§.§>B§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5!5§.§^e§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §8"'§.§?!`§;
   import §9!G§.§>!n§;
   import §<8§.§7!n§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §^"3§
   {
      
      public static const §]"2§:String = "StatePlayBS";
      
      public static const §&j§:int = 50;
       
      
      private var §`E§:Boolean = true;
      
      protected var §'!A§:§1"7§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         this.§'!A§ = new §1"7§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>B§.§^"-§(false);
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelPlayBS[0]);
         §^e§.§-_§.start();
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         § !x§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§'!A§.§ <§(0);
         this.§,z§(0);
         §'K§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
      }
      
      override public function run(param1:Number) : int
      {
         if(§5!P§.isOpen)
         {
            return 0;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,z§(param1);
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §4!q§.§]"2§;
      }
      
      override public function getLoserState() : String
      {
         return §&"9§.§]"2§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               §4!l§.§"l§(§]"2§);
               mNextState = §4!l§.§]"2§;
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
            case "CLOSE_TUTORIAL":
               §5!P§.§^X§();
               break;
            case "PAUSE":
               mNextState = §#!5§.§]"2§;
               break;
            case "RESTART_LEVEL":
               §4!l§.§"l§(StatePlayBS.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            case "FULLSCREEN_BUTTON":
               §?!`§.doJsCall("onFullscreenToggle");
         }
      }
      
      private function §,z§(param1:Number) : void
      {
         var _loc2_:int = §]c§.getScore();
         var _loc3_:int = this.§'!A§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§'!A§.getValue() + param1 * §&j§);
            this.§'!A§.§ <§(_loc3_);
         }
         §'K§.setText(_loc2_.toString(),"TextField_CurrentScore");
         var _loc4_:int = AngryBirdsFP11.§<U§.§,s§(§"?§.§4M§);
         §'K§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
      }
   }
}
