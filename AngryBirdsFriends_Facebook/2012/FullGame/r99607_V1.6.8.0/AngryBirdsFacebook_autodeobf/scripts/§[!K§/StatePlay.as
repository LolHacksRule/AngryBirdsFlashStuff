package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §"",§.§+§;
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §+I§.§9!%§;
   import §0!?§.§<K§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §3,§.§,!;§;
   import §7N§.§0X§;
   import §<!<§.§,V§;
   import §<!<§.§7c§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §%E§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §1!e§:int = 50;
      
      protected static const §!"$§:String = "MightyEagleButtonVisible";
      
      protected static const §3E§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §?-§:String = "MightyEagleButtonHide";
       
      
      protected var §-"2§:§,V§;
      
      protected var §,"$§:§-!F§;
      
      protected var §=-§:String;
      
      protected var §?g§:Boolean;
      
      private var §&D§:Vector.<int>;
      
      private var §2"?§:Boolean;
      
      private var §5D§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§-"2§ = new §,V§();
         this.§&D§ = new Vector.<int>(32);
         super(param1,param2);
         this.§&D§[3] = 5000;
         this.§&D§[7] = 5000;
         this.§&D§[8] = 5000;
         this.§&D§[9] = 5000;
         this.§&D§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelPlay[0]);
      }
      
      protected function §@h§() : void
      {
      }
      
      private function §'!6§(param1:TimerEvent) : void
      {
         (§2"-§.getItemByName("TextField_METimer") as §+§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.stopSoundsOnLevelStart();
         super.levelStarted();
         if(§2"-§.getItemByName("Button_MightyEagle"))
         {
            §2"-§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §%4§.§>f§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         §%4§.§9!0§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §'!k§() : void
      {
         §2"-§.getItemByName("TextField_METimer").setVisibility(false);
         §2"-§.getItemByName("Container_MEScore").setVisibility(false);
         §2"-§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §2"-§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§-"2§.assign(0);
         this.updateCurrentScore(0);
         this.§'!k§();
         if(§&!x§.§8!O§ != null)
         {
            _loc1_ = new Bitmap(§&!x§.§8!O§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§2"-§.getItemByName("MovieClip_AvatarPlaceholder") as §"Z§).changeMovieClip(_loc2_);
            §2"-§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§=-§ = §!"$§;
         this.§,"$§ = null;
         this.§?g§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§2"-§.getItemByName("Button_Pause") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§,"$§ != null)
         {
            this.§,"$§.stop();
            this.§,"$§ = null;
         }
      }
      
      protected function §=<§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§2"?§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§&D§.length)
            {
               _loc1_ += this.§&D§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§2"?§ = true;
               §7c§.§'"-§(§7c§.§-!I§,LevelManager.§[!<§);
            }
         }
         if(this.§5D§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §0! §() : void
      {
         var _loc1_:int = §2!J§.getScore();
         var _loc2_:int = this.§-"2§.getValue();
         if(_loc2_ < _loc1_ && this.§2"?§)
         {
            this.§5D§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§0X§.isOpen)
         {
            return §,-§.STATE_STATUS_RUNNING;
         }
         if(§9!%§.§!!M§.objects.mSardineCanAdded)
         {
            (§2"-§.getItemByName("Container_MEScore") as §<+§).setVisibility(true);
         }
         this.§=<§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§=-§ == §!"$§ && !§9!%§.§!!M§.objects.isPigsAlive())
         {
            this.§>^§();
         }
         if((this.§=-§ == §!"$§ || this.§=-§ == §3E§) && §9!%§.§!!M§.slingshot.mSlingShotState == §,!;§.§'!!§)
         {
            this.hideMightyEagleButton();
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      protected function §>^§() : void
      {
         this.§=-§ = §3E§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setComponentState(§ F§.§<!7§);
         (§2"-§.getItemByName("Button_MightyEagle") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§,"$§ == null)
         {
            this.§,"$§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§=-§ = §?-§;
         this.§,"$§.onComplete = this.§,c§;
         this.§,"$§.play();
      }
      
      protected function §,c§() : void
      {
         this.§,"$§ = §7!b§.§8c§.§4&§(§2"-§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§,"$§.play();
         this.§=-§ = §?-§;
      }
      
      override public function getVictoryState() : String
      {
         if(§9!%§.§!!M§.objects.mMightyEagleAdded)
         {
            return §2"§.STATE_NAME;
         }
         return §!!x§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §"c§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §,+§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §"c§.§@!z§();
               mNextState = this.getLevelLoadState();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§9!%§.§+1§)
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
                  §"c§.§@!z§();
                  mNextState = §"c§.STATE_NAME;
                  break;
               case 54:
                  §"c§.§^!8§();
                  mNextState = §"c§.STATE_NAME;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         if(param3 is §<?§)
         {
            if(param1 == §,!]§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §<K§.§%L§();
            }
            else if(param1 == §,!]§.LISTENER_EVENT_MOUSE_UP)
            {
               §<K§.§#K§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §0X§.§^!%§();
               break;
            case "PAUSE":
               mNextState = this.getPauseState();
               break;
            case "RESTART_LEVEL":
               §"c§.§@!z§();
               mNextState = §"c§.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      protected function getPauseState() : String
      {
         return §-!M§.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §9!%§.§!!M§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§[!<§);
         §2"-§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§?g§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§0! §();
      }
   }
}
