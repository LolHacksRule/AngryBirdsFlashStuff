package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§`a§;
   import §+!B§.§<!M§;
   import §+!B§.§[m§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §1!-§.§[4§;
   import §3a§.§'q§;
   import §5!L§.§=w§;
   import §6!C§.§!;§;
   import §6A§.§4!C§;
   import §7g§.§1Q§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §#<§
   {
      
      public static const §>9§:String = "StatePlay";
      
      public static const §9b§:int = 50;
      
      protected static const §[b§:String = "MightyEagleButtonVisible";
      
      protected static const §8!§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §`!$§:String = "MightyEagleButtonHide";
       
      
      protected var §+y§:§<!M§;
      
      protected var §6`§:§ !=§;
      
      protected var §0;§:String;
      
      protected var §#m§:Boolean;
      
      private var §+[§:Vector.<int>;
      
      private var §&3§:Boolean;
      
      private var §+!§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§+y§ = new §<!M§();
         this.§+[§ = new Vector.<int>(32);
         super(param1,param2);
         this.§+[§[3] = 5000;
         this.§+[§[7] = 5000;
         this.§+[§[8] = 5000;
         this.§+[§[9] = 5000;
         this.§+[§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_LevelPlay[0]);
      }
      
      protected function §'!3§() : void
      {
      }
      
      private function §`!1§(param1:TimerEvent) : void
      {
         (§]F§.getItemByName("TextField_METimer") as §`a§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§`R§();
         super.levelStarted();
         if(§]F§.getItemByName("Button_MightyEagle"))
         {
            §]F§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §,!F§.§;v§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§#c§();
      }
      
      protected function §`R§() : void
      {
         §,!F§.§?X§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §]F§.getItemByName("TextField_METimer").setVisibility(false);
         §]F§.getItemByName("Container_MEScore").setVisibility(false);
         §]F§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §]F§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §#c§() : void
      {
         this.§+y§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         this.§0;§ = §[b§;
         this.§6`§ = null;
         this.§#m§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§]F§.getItemByName("Button_Pause") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§6`§ != null)
         {
            this.§6`§.stop();
            this.§6`§ = null;
         }
      }
      
      protected function §+!+§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§&3§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§+[§.length)
            {
               _loc1_ += this.§+[§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§&3§ = true;
               §[m§.§"!A§(§[m§.§-!2§,§[4§.§"!>§);
            }
         }
         if(this.§+!§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §<_§() : void
      {
         var _loc1_:int = §!!&§.getScore();
         var _loc2_:int = this.§+y§.getValue();
         if(_loc2_ < _loc1_ && this.§&3§)
         {
            this.§+!§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§!;§.isOpen)
         {
            return §1Q§.STATE_STATUS_RUNNING;
         }
         if(§=w§.§ o§.objects.mSardineCanAdded)
         {
            (§]F§.getItemByName("Container_MEScore") as §4!=§).setVisibility(true);
         }
         this.§+!+§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§0;§ == §[b§ && !§=w§.§ o§.objects.isPigsAlive())
         {
            this.§;Q§();
         }
         if((this.§0;§ == §[b§ || this.§0;§ == §8!§) && §=w§.§ o§.slingshot.mSlingShotState == §4!C§.§?!>§)
         {
            this.hideMightyEagleButton();
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      protected function §;Q§() : void
      {
         this.§0;§ = §8!§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentState(§0K§.§]x§);
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§6`§ == null)
         {
            this.§6`§ = §@7§.§@6§.§3!%§(§]F§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§0;§ = §`!$§;
         this.§6`§.onComplete = this.§`c§;
         this.§6`§.play();
      }
      
      protected function §`c§() : void
      {
         this.§6`§ = §@7§.§@6§.§3!%§(§]F§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§6`§.play();
         this.§0;§ = §`!$§;
      }
      
      override public function getVictoryState() : String
      {
         if(§=w§.§ o§.objects.mMightyEagleAdded)
         {
            return §&b§.§>9§;
         }
         return §+W§.§>9§;
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
      
      override public function getLoserState() : String
      {
         return § !"§.§>9§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §^!K§.§@!<§();
               mNextState = this.§]!-§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§=w§.§%Z§)
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
                  §^!K§.§@!<§();
                  mNextState = §^!K§.§>9§;
                  break;
               case 54:
                  §^!K§.§+!4§();
                  mNextState = §^!K§.§>9§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         if(param3 is §7-§)
         {
            if(param1 == §-P§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §'q§.§3!4§();
            }
            else if(param1 == §-P§.LISTENER_EVENT_MOUSE_UP)
            {
               §'q§.§5e§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §!;§.§?"§();
               break;
            case "PAUSE":
               mNextState = this.§9!3§();
               break;
            case "RESTART_LEVEL":
               §^!K§.§@!<§();
               mNextState = §^!K§.§>9§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      protected function §9!3§() : String
      {
         return §7§.§>9§;
      }
      
      protected function §9!6§() : void
      {
         §=w§.§ o§.§9!6§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§);
         §]F§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§#m§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§<_§();
      }
   }
}
