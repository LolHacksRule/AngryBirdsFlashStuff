package §2>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §'0§.§]!2§;
   import §0!>§.§<0§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §2T§.§5@§;
   import §3V§.§9p§;
   import §3V§.§;6§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §9s§.§[!?§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import §@!;§.§`P§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §^!C§
   {
      
      public static const §]! §:String = "StatePlay";
      
      public static const §'!!§:int = 50;
      
      protected static const §;!I§:String = "MightyEagleButtonVisible";
      
      protected static const §>E§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §3_§:String = "MightyEagleButtonHide";
       
      
      protected var §-s§:§9p§;
      
      protected var §1!>§:§9;§;
      
      protected var §]!L§:String;
      
      protected var §,!I§:Boolean;
      
      private var §?v§:Vector.<int>;
      
      private var §1!A§:Boolean;
      
      private var §!I§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§-s§ = new §9p§();
         this.§?v§ = new Vector.<int>(32);
         super(param1,param2);
         this.§?v§[3] = 5000;
         this.§?v§[7] = 5000;
         this.§?v§[8] = 5000;
         this.§?v§[9] = 5000;
         this.§?v§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_LevelPlay[0]);
      }
      
      protected function §#1§() : void
      {
      }
      
      private function §=`§(param1:TimerEvent) : void
      {
         (§!s§.getItemByName("TextField_METimer") as §5@§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§96§();
         super.levelStarted();
         if(§!s§.getItemByName("Button_MightyEagle"))
         {
            §!s§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §]!2§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§;!@§();
      }
      
      protected function §96§() : void
      {
         §]!2§.§^F§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §!s§.getItemByName("TextField_METimer").setVisibility(false);
         §!s§.getItemByName("Container_MEScore").setVisibility(false);
         §!s§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §!s§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §;!@§() : void
      {
         this.§-s§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         this.§]!L§ = §;!I§;
         this.§1!>§ = null;
         this.§,!I§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§!s§.getItemByName("Button_MightyEagle") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!s§.getItemByName("Button_MightyEagle") as §2H§).setComponentState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§!s§.getItemByName("Button_Pause") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§1!>§ != null)
         {
            this.§1!>§.stop();
            this.§1!>§ = null;
         }
      }
      
      protected function §%N§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§1!A§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§?v§.length)
            {
               _loc1_ += this.§?v§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§1!A§ = true;
               §;6§.§[V§(§;6§.§in §,§'?§.§"t§);
            }
         }
         if(this.§!I§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §[S§() : void
      {
         var _loc1_:int = §4!!§.getScore();
         var _loc2_:int = this.§-s§.getValue();
         if(_loc2_ < _loc1_ && this.§1!A§)
         {
            this.§!I§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§<0§.isOpen)
         {
            return §9Y§.STATE_STATUS_RUNNING;
         }
         if(§[!4§.§continue§.objects.mSardineCanAdded)
         {
            (§!s§.getItemByName("Container_MEScore") as §&M§).setVisibility(true);
         }
         this.§%N§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§]!L§ == §;!I§ && !§[!4§.§continue§.objects.isPigsAlive())
         {
            this.§3F§();
         }
         if((this.§]!L§ == §;!I§ || this.§]!L§ == §>E§) && §[!4§.§continue§.slingshot.mSlingShotState == §[!?§.§-!L§)
         {
            this.hideMightyEagleButton();
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      protected function §3F§() : void
      {
         this.§]!L§ = §>E§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§!s§.getItemByName("Button_MightyEagle") as §2H§).setComponentState(§=U§.§ S§);
         (§!s§.getItemByName("Button_MightyEagle") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§1!>§ == null)
         {
            this.§1!>§ = §'!A§.§5+§.§;h§(§!s§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§]!L§ = §3_§;
         this.§1!>§.onComplete = this.§?,§;
         this.§1!>§.play();
      }
      
      protected function §?,§() : void
      {
         this.§1!>§ = §'!A§.§5+§.§;h§(§!s§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§1!>§.play();
         this.§]!L§ = §3_§;
      }
      
      override public function getVictoryState() : String
      {
         if(§[!4§.§continue§.objects.mMightyEagleAdded)
         {
            return §[s§.§]! §;
         }
         return §-!5§.§]! §;
      }
      
      protected function §+e§() : String
      {
         return §9$§.§]! §;
      }
      
      override public function getLoserState() : String
      {
         return §'!=§.§]! §;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §9$§.§9g§();
               mNextState = this.§+e§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[!4§.§78§)
         {
            switch(param1.keyCode)
            {
               case 49:
                  break;
               case 50:
                  break;
               case 51:
                  break;
               case 52:
               case 53:
                  §9$§.§9g§();
                  mNextState = §9$§.§]! §;
                  break;
               case 54:
                  §9$§.§`a§();
                  mNextState = §9$§.§]! §;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         if(param3 is §2H§)
         {
            if(param1 == §<!?§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`P§.§[!0§();
            }
            else if(param1 == §<!?§.LISTENER_EVENT_MOUSE_UP)
            {
               §`P§.§;#§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §<0§.§8o§();
               break;
            case "PAUSE":
               mNextState = this.§!! §();
               break;
            case "RESTART_LEVEL":
               §9$§.§9g§();
               mNextState = §9$§.§]! §;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      protected function §!! §() : String
      {
         return §?!1§.§]! §;
      }
      
      protected function §;R§() : void
      {
         §[!4§.§continue§.§;R§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§%!E§(§'?§.§"t§);
         §!s§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§,!I§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§[S§();
      }
   }
}
