package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §&U§.§05§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8!=§.§;D§;
   import §8!=§.§]Q§;
   import §8T§.§@o§;
   import §;'§.§8!;§;
   import §<!M§.§[i§;
   import §?!8§.§7X§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import §@r§.§8K§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §3n§
   {
      
      public static const §&! §:String = "StatePlay";
      
      public static const §6_§:int = 50;
      
      protected static const §4V§:String = "MightyEagleButtonVisible";
      
      protected static const §+!D§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §4-§:String = "MightyEagleButtonHide";
       
      
      protected var §2t§:§]Q§;
      
      protected var §9^§:§+!B§;
      
      protected var §@!F§:String;
      
      protected var §>q§:Boolean;
      
      private var §4!=§:Vector.<int>;
      
      private var §3!B§:Boolean;
      
      private var §<t§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§2t§ = new §]Q§();
         this.§4!=§ = new Vector.<int>(32);
         super(param1,param2);
         this.§4!=§[3] = 5000;
         this.§4!=§[7] = 5000;
         this.§4!=§[8] = 5000;
         this.§4!=§[9] = 5000;
         this.§4!=§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_LevelPlay[0]);
      }
      
      protected function §"!6§() : void
      {
      }
      
      private function §9H§(param1:TimerEvent) : void
      {
         (§=V§.getItemByName("TextField_METimer") as § 3§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§92§();
         super.levelStarted();
         if(§=V§.getItemByName("Button_MightyEagle"))
         {
            §=V§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §@o§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§%s§();
      }
      
      protected function §92§() : void
      {
         §@o§.§#!;§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §=V§.getItemByName("TextField_METimer").setVisibility(false);
         §=V§.getItemByName("Container_MEScore").setVisibility(false);
         §=V§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §=V§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §%s§() : void
      {
         this.§2t§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         this.§@!F§ = §4V§;
         this.§9^§ = null;
         this.§>q§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setComponentState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§=V§.getItemByName("Button_Pause") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§9^§ != null)
         {
            this.§9^§.stop();
            this.§9^§ = null;
         }
      }
      
      protected function §-6§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§3!B§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§4!=§.length)
            {
               _loc1_ += this.§4!=§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§3!B§ = true;
               §;D§.§<!L§(§;D§.§+>§,§[i§.§0A§);
            }
         }
         if(this.§<t§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §;e§() : void
      {
         var _loc1_:int = §>G§.getScore();
         var _loc2_:int = this.§2t§.getValue();
         if(_loc2_ < _loc1_ && this.§3!B§)
         {
            this.§<t§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§8K§.isOpen)
         {
            return §2q§.STATE_STATUS_RUNNING;
         }
         if(§'5§.§^;§.objects.mSardineCanAdded)
         {
            (§=V§.getItemByName("Container_MEScore") as §05§).setVisibility(true);
         }
         this.§-6§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§@!F§ == §4V§ && !§'5§.§^;§.objects.isPigsAlive())
         {
            this.§=!-§();
         }
         if((this.§@!F§ == §4V§ || this.§@!F§ == §+!D§) && §'5§.§^;§.slingshot.mSlingShotState == §8!;§.§;!?§)
         {
            this.hideMightyEagleButton();
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      protected function §=!-§() : void
      {
         this.§@!F§ = §+!D§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setComponentState(§-!M§.§,!-§);
         (§=V§.getItemByName("Button_MightyEagle") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§9^§ == null)
         {
            this.§9^§ = §6;§.§&e§.§42§(§=V§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§@!F§ = §4-§;
         this.§9^§.onComplete = this.§]h§;
         this.§9^§.play();
      }
      
      protected function §]h§() : void
      {
         this.§9^§ = §6;§.§&e§.§42§(§=V§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§9^§.play();
         this.§@!F§ = §4-§;
      }
      
      override public function getVictoryState() : String
      {
         if(§'5§.§^;§.objects.mMightyEagleAdded)
         {
            return §'!;§.§&! §;
         }
         return §9X§.§&! §;
      }
      
      protected function static() : String
      {
         return §`!J§.§&! §;
      }
      
      override public function getLoserState() : String
      {
         return §5z§.§&! §;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §`!J§.§@J§();
               mNextState = this.static();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§'5§.§7!!§)
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
                  §`!J§.§@J§();
                  mNextState = §`!J§.§&! §;
                  break;
               case 54:
                  §`!J§.§[[§();
                  mNextState = §`!J§.§&! §;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         if(param3 is §^!@§)
         {
            if(param1 == §`!B§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §7X§.§&!7§();
            }
            else if(param1 == §`!B§.LISTENER_EVENT_MOUSE_UP)
            {
               §7X§.§2Y§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §8K§.§4!N§();
               break;
            case "PAUSE":
               mNextState = this.§,6§();
               break;
            case "RESTART_LEVEL":
               §`!J§.§@J§();
               mNextState = §`!J§.§&! §;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      protected function §,6§() : String
      {
         return §7!A§.§&! §;
      }
      
      protected function §5!+§() : void
      {
         §'5§.§^;§.§5!+§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§&H§(§[i§.§0A§);
         §=V§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§>q§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§;e§();
      }
   }
}
