package § true§
{
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §"!B§.§6!"§;
   import §'6§.§^t§;
   import §'d§.§"6§;
   import §+[§.§%G§;
   import §3y§.§"!G§;
   import §3y§.§4!%§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import §`!4§.§^H§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §-g§
   {
      
      public static const §`W§:String = "StatePlay";
      
      public static const §"!,§:int = 50;
      
      protected static const §0"§:String = "MightyEagleButtonVisible";
      
      protected static const §2!<§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §0!H§:String = "MightyEagleButtonHide";
       
      
      protected var §,!<§:§"!G§;
      
      protected var §,#§:§'a§;
      
      protected var §[S§:String;
      
      protected var §`k§:Boolean;
      
      private var §%k§:Vector.<int>;
      
      private var §;x§:Boolean;
      
      private var §][§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§,!<§ = new §"!G§();
         this.§%k§ = new Vector.<int>(32);
         super(param1,param2);
         this.§%k§[3] = 5000;
         this.§%k§[7] = 5000;
         this.§%k§[8] = 5000;
         this.§%k§[9] = 5000;
         this.§%k§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_LevelPlay[0]);
      }
      
      protected function §"K§() : void
      {
      }
      
      private function §]!M§(param1:TimerEvent) : void
      {
         (§while§.getItemByName("TextField_METimer") as §6!"§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§>n§();
         super.levelStarted();
         if(§while§.getItemByName("Button_MightyEagle"))
         {
            §while§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §%G§.§48§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§%>§();
      }
      
      protected function §>n§() : void
      {
         §%G§.§^R§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §while§.getItemByName("TextField_METimer").setVisibility(false);
         §while§.getItemByName("Container_MEScore").setVisibility(false);
         §while§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §while§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §%>§() : void
      {
         this.§,!<§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         this.§[S§ = §0"§;
         this.§,#§ = null;
         this.§`k§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§while§.getItemByName("Button_MightyEagle") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§while§.getItemByName("Button_MightyEagle") as §+!9§).setComponentState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§while§.getItemByName("Button_Pause") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§,#§ != null)
         {
            this.§,#§.stop();
            this.§,#§ = null;
         }
      }
      
      protected function §]!&§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§;x§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§%k§.length)
            {
               _loc1_ += this.§%k§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§;x§ = true;
               §4!%§.§#H§(§4!%§.§=4§,§`R§.§7S§);
            }
         }
         if(this.§][§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §'#§() : void
      {
         var _loc1_:int = §='§.getScore();
         var _loc2_:int = this.§,!<§.getValue();
         if(_loc2_ < _loc1_ && this.§;x§)
         {
            this.§][§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§"6§.isOpen)
         {
            return §,!?§.STATE_STATUS_RUNNING;
         }
         if(§[+§.§,!&§.objects.mSardineCanAdded)
         {
            (§while§.getItemByName("Container_MEScore") as §58§).setVisibility(true);
         }
         this.§]!&§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§[S§ == §0"§ && !§[+§.§,!&§.objects.isPigsAlive())
         {
            this.§5Z§();
         }
         if((this.§[S§ == §0"§ || this.§[S§ == §2!<§) && §[+§.§,!&§.slingshot.mSlingShotState == §^H§.§;@§)
         {
            this.hideMightyEagleButton();
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      protected function §5Z§() : void
      {
         this.§[S§ = §2!<§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§while§.getItemByName("Button_MightyEagle") as §+!9§).setComponentState(§&P§.§0!1§);
         (§while§.getItemByName("Button_MightyEagle") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§,#§ == null)
         {
            this.§,#§ = §-!&§.§;R§.§2w§(§while§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§[S§ = §0!H§;
         this.§,#§.onComplete = this.§var §;
         this.§,#§.play();
      }
      
      protected function §var §() : void
      {
         this.§,#§ = §-!&§.§;R§.§2w§(§while§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§,#§.play();
         this.§[S§ = §0!H§;
      }
      
      override public function getVictoryState() : String
      {
         if(§[+§.§,!&§.objects.mMightyEagleAdded)
         {
            return §[!B§.§`W§;
         }
         return §"!>§.§`W§;
      }
      
      protected function §6F§() : String
      {
         return §case §.§`W§;
      }
      
      override public function getLoserState() : String
      {
         return §0!§.§`W§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §case §.§"n§();
               mNextState = this.§6F§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[+§.§^!I§)
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
                  §case §.§"n§();
                  mNextState = §case §.§`W§;
                  break;
               case 54:
                  §case §.§-!5§();
                  mNextState = §case §.§`W§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         if(param3 is §+!9§)
         {
            if(param1 == §;!6§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §^t§.§'x§();
            }
            else if(param1 == §;!6§.LISTENER_EVENT_MOUSE_UP)
            {
               §^t§.§@=§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §"6§.§+@§();
               break;
            case "PAUSE":
               mNextState = this.§1a§();
               break;
            case "RESTART_LEVEL":
               §case §.§"n§();
               mNextState = §case §.§`W§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      protected function §1a§() : String
      {
         return §5z§.§`W§;
      }
      
      protected function §-!?§() : void
      {
         §[+§.§,!&§.§-!?§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§!!#§(§`R§.§7S§);
         §while§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§`k§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§'#§();
      }
   }
}
