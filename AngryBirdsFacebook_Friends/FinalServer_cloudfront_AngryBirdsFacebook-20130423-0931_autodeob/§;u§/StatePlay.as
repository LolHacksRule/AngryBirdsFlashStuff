package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §+!c§.§&!0§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§&=§;
   import §5!Y§.§'!V§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§3w§;
   import §9@§.§9!D§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §6!T§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §'"Q§:int = 50;
      
      protected static const §?"U§:String = "MightyEagleButtonVisible";
      
      protected static const §+!r§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §#!`§:String = "MightyEagleButtonHide";
       
      
      protected var §4">§:§9!D§;
      
      protected var §2">§:§6!K§;
      
      protected var §`"9§:String;
      
      protected var §9!h§:Boolean;
      
      private var §#"S§:Vector.<int>;
      
      private var § "=§:Boolean;
      
      private var §3!h§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§4">§ = new §9!D§();
         this.§#"S§ = new Vector.<int>(32);
         super(param1,param2);
         this.§#"S§[3] = 5000;
         this.§#"S§[7] = 5000;
         this.§#"S§[8] = 5000;
         this.§#"S§[9] = 5000;
         this.§#"S§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelPlay[0]);
      }
      
      protected function § "+§() : void
      {
      }
      
      private function §#""§(param1:TimerEvent) : void
      {
         (§2"@§.getItemByName("TextField_METimer") as §4"9§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.stopSoundsOnLevelStart();
         super.levelStarted();
         if(§2"@§.getItemByName("Button_MightyEagle"))
         {
            §2"@§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §@"M§.§3"C§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         §@"M§.§3!s§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §%"H§() : void
      {
         §2"@§.getItemByName("TextField_METimer").setVisibility(false);
         §2"@§.getItemByName("Container_MEScore").setVisibility(false);
         §2"@§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §2"@§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         this.§4">§.assign(0);
         this.updateCurrentScore(0);
         this.§%"H§();
         this.§`"9§ = §?"U§;
         this.§2">§ = null;
         this.§9!h§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§2"@§.getItemByName("Button_Pause") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§2">§ != null)
         {
            this.§2">§.stop();
            this.§2">§ = null;
         }
      }
      
      protected function §,!6§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§ "=§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§#"S§.length)
            {
               _loc1_ += this.§#"S§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§ "=§ = true;
               §3w§.§#!0§(§3w§.§+"V§,LevelManager.§ T§);
            }
         }
         if(this.§3!h§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §[c§() : void
      {
         var _loc1_:int = §%"9§.getScore();
         var _loc2_:int = this.§4">§.getValue();
         if(_loc2_ < _loc1_ && this.§ "=§)
         {
            this.§3!h§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§'!V§.isOpen)
         {
            return §+d§.STATE_STATUS_RUNNING;
         }
         if(§?l§.§'h§.objects.mSardineCanAdded)
         {
            (§2"@§.getItemByName("Container_MEScore") as §0!Y§).setVisibility(true);
         }
         this.§,!6§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§`"9§ == §?"U§ && !§?l§.§'h§.objects.isPigsAlive())
         {
            this.§@!c§();
         }
         if((this.§`"9§ == §?"U§ || this.§`"9§ == §+!r§) && §?l§.§'h§.slingshot.mSlingShotState == §&=§.§+!`§)
         {
            this.hideMightyEagleButton();
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      protected function §@!c§() : void
      {
         this.§`"9§ = §+!r§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentState(§!!G§.§[E§);
         (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§2">§ == null)
         {
            this.§2">§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§`"9§ = §#!`§;
         this.§2">§.onComplete = this.§!N§;
         this.§2">§.play();
      }
      
      protected function §!N§() : void
      {
         this.§2">§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§2">§.play();
         this.§`"9§ = §#!`§;
      }
      
      override public function getVictoryState() : String
      {
         if(§?l§.§'h§.objects.mMightyEagleAdded)
         {
            return §>!w§.STATE_NAME;
         }
         return § if§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §]S§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §-!v§.§^!$§();
               mNextState = this.getLevelLoadState();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§?l§.§#V§)
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
                  §-!v§.§^!$§();
                  mNextState = §-!v§.STATE_NAME;
                  break;
               case 54:
                  §-!v§.§>"@§();
                  mNextState = §-!v§.STATE_NAME;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         if(param3 is §7"0§)
         {
            if(param1 == §""B§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §&!0§.§8!R§();
            }
            else if(param1 == §""B§.LISTENER_EVENT_MOUSE_UP)
            {
               §&!0§.§!4§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §'!V§.§2!C§();
               break;
            case "PAUSE":
               mNextState = this.getPauseState();
               break;
            case "RESTART_LEVEL":
               §-!v§.§^!$§();
               mNextState = §-!v§.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      protected function getPauseState() : String
      {
         return §4!Q§.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §?l§.§'h§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§);
         §2"@§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§9!h§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§[c§();
      }
   }
}
