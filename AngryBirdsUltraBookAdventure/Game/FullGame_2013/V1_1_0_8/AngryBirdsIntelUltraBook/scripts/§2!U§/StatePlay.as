package §2!U§
{
   import §!!j§.§!!9§;
   import §"!i§.LevelManager;
   import §1!B§.§7n§;
   import §2y§.§54§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §40§.§1!g§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §<-§.§5Z§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §]!y§
   {
      
      public static const §'!q§:String = "StatePlay";
      
      public static const §>!b§:int = 50;
      
      protected static const §;z§:String = "MightyEagleButtonVisible";
      
      protected static const §5!0§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §]A§:String = "MightyEagleButtonHide";
       
      
      protected var §9!L§:§2B§;
      
      protected var § !G§:§^v§;
      
      protected var §"!Y§:String;
      
      protected var §<5§:Boolean;
      
      private var §]K§:Vector.<int>;
      
      private var §5" §:Boolean;
      
      private var §=!O§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§9!L§ = new §2B§();
         this.§]K§ = new Vector.<int>(32);
         super(param1,param2);
         this.§]K§[3] = 5000;
         this.§]K§[7] = 5000;
         this.§]K§[8] = 5000;
         this.§]K§[9] = 5000;
         this.§]K§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelPlay[0]);
      }
      
      protected function §-s§() : void
      {
      }
      
      private function §#!p§(param1:TimerEvent) : void
      {
         (§'!Q§.getItemByName("TextField_METimer") as §54§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§"f§();
         super.levelStarted();
         if(§'!Q§.getItemByName("Button_MightyEagle"))
         {
            §'!Q§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §-!Q§.§#3§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      protected function §"f§() : void
      {
         §-!Q§.§4!$§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §'!Q§.getItemByName("TextField_METimer").setVisibility(false);
         §'!Q§.getItemByName("Container_MEScore").setVisibility(false);
         §'!Q§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §'!Q§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         this.§9!L§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         this.§"!Y§ = §;z§;
         this.§ !G§ = null;
         this.§<5§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§'!Q§.getItemByName("Button_Pause") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§ !G§ != null)
         {
            this.§ !G§.stop();
            this.§ !G§ = null;
         }
      }
      
      protected function §'""§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§5" §)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§]K§.length)
            {
               _loc1_ += this.§]K§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§5" § = true;
               §5Z§.§&!v§(§5Z§.§8!D§,LevelManager.§"L§);
            }
         }
         if(this.§=!O§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §2!D§() : void
      {
         var _loc1_:int = §5!P§.getScore();
         var _loc2_:int = this.§9!L§.getValue();
         if(_loc2_ < _loc1_ && this.§5" §)
         {
            this.§=!O§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§!!9§.isOpen)
         {
            return §9![§.STATE_STATUS_RUNNING;
         }
         if(§,!s§.§=!I§.objects.mSardineCanAdded)
         {
            (§'!Q§.getItemByName("Container_MEScore") as §^! §).setVisibility(true);
         }
         this.§'""§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§"!Y§ == §;z§ && !§,!s§.§=!I§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§"!Y§ == §;z§ || this.§"!Y§ == §5!0§) && §,!s§.§=!I§.slingshot.mSlingShotState == §1!g§.§"9§)
         {
            this.hideMightyEagleButton();
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§"!Y§ = §5!0§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentState(§-0§.§6!q§);
         (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§ !G§ == null)
         {
            this.§ !G§ = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§"!Y§ = §]A§;
         this.§ !G§.onComplete = this.onHideMightyEagle;
         this.§ !G§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§ !G§ = §`!G§.§[U§.§-]§(§'!Q§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§ !G§.play();
         this.§"!Y§ = §]A§;
      }
      
      override public function getVictoryState() : String
      {
         if(§,!s§.§=!I§.objects.mMightyEagleAdded)
         {
            return §0!>§.§'!q§;
         }
         return §=<§.§'!q§;
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
      
      override public function getLoserState() : String
      {
         return §>!"§.§'!q§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §3!;§.§0!1§();
               mNextState = this.§[!Q§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§,!s§.§?C§)
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
                  §3!;§.§0!1§();
                  mNextState = §3!;§.§'!q§;
                  break;
               case 54:
                  §3!;§.§9!G§();
                  mNextState = §3!;§.§'!q§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         if(param3 is §[!i§)
         {
            if(param1 == §'!o§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §7n§.§@1§();
            }
            else if(param1 == §'!o§.LISTENER_EVENT_MOUSE_UP)
            {
               §7n§.§3F§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §!!9§.§6S§();
               break;
            case "PAUSE":
               mNextState = this.§8!S§();
               break;
            case "RESTART_LEVEL":
               §3!;§.§0!1§();
               mNextState = §3!;§.§'!q§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      protected function §8!S§() : String
      {
         return §@!A§.§'!q§;
      }
      
      protected function useMightyEagle() : void
      {
         §,!s§.§=!I§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§);
         §'!Q§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§<5§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§2!D§();
      }
   }
}
