package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§-§;
   import §%!'§.§>A§;
   import §&!"§.§?!S§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §0!2§.§,!W§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §[x§.§]"!§;
   import §`!n§.LevelManager;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §9!L§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §!m§:int = 50;
      
      protected static const § !w§:String = "MightyEagleButtonVisible";
      
      protected static const §4!!§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §'!1§:String = "MightyEagleButtonHide";
       
      
      protected var §#K§:§-§;
      
      protected var § !f§:§!"&§;
      
      protected var §@!T§:String;
      
      protected var §'!B§:Boolean;
      
      private var §0!L§:Vector.<int>;
      
      private var §+_§:Boolean;
      
      private var §1>§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§#K§ = new §-§();
         this.§0!L§ = new Vector.<int>(32);
         super(param1,param2);
         this.§0!L§[3] = 5000;
         this.§0!L§[7] = 5000;
         this.§0!L§[8] = 5000;
         this.§0!L§[9] = 5000;
         this.§0!L§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_LevelPlay[0]);
      }
      
      protected function §#"B§() : void
      {
      }
      
      private function §<K§(param1:TimerEvent) : void
      {
         (§2!K§.getItemByName("TextField_METimer") as §#p§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.stopSoundsOnLevelStart();
         super.levelStarted();
         if(§2!K§.getItemByName("Button_MightyEagle"))
         {
            §2!K§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §+m§.§]!N§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         §+m§.§2!2§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §6!5§() : void
      {
         §2!K§.getItemByName("TextField_METimer").setVisibility(false);
         §2!K§.getItemByName("Container_MEScore").setVisibility(false);
         §2!K§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §2!K§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§#K§.assign(0);
         this.updateCurrentScore(0);
         this.§6!5§();
         if(§5"7§.§#!5§ != null)
         {
            _loc1_ = new Bitmap(§5"7§.§#!5§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§2!K§.getItemByName("MovieClip_AvatarPlaceholder") as §="0§).changeMovieClip(_loc2_);
            §2!K§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§@!T§ = § !w§;
         this.§ !f§ = null;
         this.§'!B§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§2!K§.getItemByName("Button_Pause") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§ !f§ != null)
         {
            this.§ !f§.stop();
            this.§ !f§ = null;
         }
      }
      
      protected function §!!h§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§+_§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§0!L§.length)
            {
               _loc1_ += this.§0!L§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§+_§ = true;
               §>A§.§7"9§(§>A§.§3!M§,LevelManager.§`-§);
            }
         }
         if(this.§1>§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §#!K§() : void
      {
         var _loc1_:int = §8R§.getScore();
         var _loc2_:int = this.§#K§.getValue();
         if(_loc2_ < _loc1_ && this.§+_§)
         {
            this.§1>§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§?!S§.isOpen)
         {
            return §5!S§.STATE_STATUS_RUNNING;
         }
         if(§&2§.§],§.objects.mSardineCanAdded)
         {
            (§2!K§.getItemByName("Container_MEScore") as §?!j§).setVisibility(true);
         }
         this.§!!h§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§@!T§ == § !w§ && !§&2§.§],§.objects.isPigsAlive())
         {
            this.§="7§();
         }
         if((this.§@!T§ == § !w§ || this.§@!T§ == §4!!§) && §&2§.§],§.slingshot.mSlingShotState == §,!W§.§4!T§)
         {
            this.hideMightyEagleButton();
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      protected function §="7§() : void
      {
         this.§@!T§ = §4!!§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setComponentState(§^q§.§?!0§);
         (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§ !f§ == null)
         {
            this.§ !f§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§@!T§ = §'!1§;
         this.§ !f§.onComplete = this.§8!1§;
         this.§ !f§.play();
      }
      
      protected function §8!1§() : void
      {
         this.§ !f§ = §&p§.§1[§.§7!3§(§2!K§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§ !f§.play();
         this.§@!T§ = §'!1§;
      }
      
      override public function getVictoryState() : String
      {
         if(§&2§.§],§.objects.mMightyEagleAdded)
         {
            return §>G§.STATE_NAME;
         }
         return §!W§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §'!N§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §9!M§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §'!N§.§^R§();
               mNextState = this.getLevelLoadState();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§&2§.§&!M§)
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
                  §'!N§.§^R§();
                  mNextState = §'!N§.STATE_NAME;
                  break;
               case 54:
                  §'!N§.§7!Z§();
                  mNextState = §'!N§.STATE_NAME;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         if(param3 is §]!<§)
         {
            if(param1 == §^!;§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §]"!§.§#B§();
            }
            else if(param1 == §^!;§.LISTENER_EVENT_MOUSE_UP)
            {
               §]"!§.§2!S§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §?!S§.§-f§();
               break;
            case "PAUSE":
               mNextState = this.getPauseState();
               break;
            case "RESTART_LEVEL":
               §'!N§.§^R§();
               mNextState = §'!N§.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      protected function getPauseState() : String
      {
         return §9!p§.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §&2§.§],§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§`-§);
         §2!K§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§'!B§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§#!K§();
      }
   }
}
