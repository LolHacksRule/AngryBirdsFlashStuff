package §`@§
{
   import § !;§.§^Y§;
   import § !;§.§`! §;
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §%x§.§3=§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §2§.§=h§;
   import §=!4§.§7!1§;
   import §>!C§.§6M§;
   import §^@§.§!"§;
   import §^@§.§2q§;
   import §^@§.§=^§;
   import §^@§.§`Y§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §;i§
   {
      
      public static const §0!7§:String = "StatePlay";
      
      public static const §[2§:int = 50;
      
      protected static const §"2§:String = "MightyEagleButtonVisible";
      
      protected static const §&4§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §=;§:String = "MightyEagleButtonHide";
       
      
      protected var §4!G§:§`! §;
      
      protected var §=!@§:§ !5§;
      
      protected var §?P§:String;
      
      protected var §;1§:Boolean;
      
      private var §5!B§:Vector.<int>;
      
      private var §[!9§:Boolean;
      
      private var §#P§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§4!G§ = new §`! §();
         this.§5!B§ = new Vector.<int>(32);
         super(param1,param2);
         this.§5!B§[3] = 5000;
         this.§5!B§[7] = 5000;
         this.§5!B§[8] = 5000;
         this.§5!B§[9] = 5000;
         this.§5!B§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_LevelPlay[0]);
      }
      
      protected function §=e§() : void
      {
      }
      
      private function §%!1§(param1:TimerEvent) : void
      {
         (§#Z§.getItemByName("TextField_METimer") as §`Y§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §?!?§.§%!%§();
         super.levelStarted();
         if(§#Z§.getItemByName("Button_MightyEagle"))
         {
            §#Z§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §?!?§.§#'§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§7=§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §#Z§.getItemByName("TextField_METimer").setVisibility(false);
         §#Z§.getItemByName("Container_MEScore").setVisibility(false);
         §#Z§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §#Z§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §7=§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§4!G§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§9!@§.§=S§ != null)
         {
            _loc1_ = new Bitmap(§9!@§.§=S§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§#Z§.getItemByName("MovieClip_AvatarPlaceholder") as §!"§).changeMovieClip(_loc2_);
            §#Z§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§?P§ = §"2§;
         this.§=!@§ = null;
         this.§;1§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setComponentState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§#Z§.getItemByName("Button_Pause") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§=!@§ != null)
         {
            this.§=!@§.stop();
            this.§=!@§ = null;
         }
      }
      
      protected function §-M§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§[!9§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§5!B§.length)
            {
               _loc1_ += this.§5!B§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§[!9§ = true;
               §^Y§.§#r§(§^Y§.§!u§,§6M§.§[z§);
            }
         }
         if(this.§#P§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §6X§() : void
      {
         var _loc1_:int = § !>§.getScore();
         var _loc2_:int = this.§4!G§.getValue();
         if(_loc2_ < _loc1_ && this.§[!9§)
         {
            this.§#P§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§7!1§.isOpen)
         {
            return §0!5§.STATE_STATUS_RUNNING;
         }
         if(§,!!§.§;4§.objects.mSardineCanAdded)
         {
            (§#Z§.getItemByName("Container_MEScore") as §2q§).setVisibility(true);
         }
         this.§-M§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§?P§ == §"2§ && !§,!!§.§;4§.objects.isPigsAlive())
         {
            this.§"d§();
         }
         if((this.§?P§ == §"2§ || this.§?P§ == §&4§) && §,!!§.§;4§.slingshot.mSlingShotState == §3=§.§,z§)
         {
            this.hideMightyEagleButton();
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      protected function §"d§() : void
      {
         this.§?P§ = §&4§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setComponentState(§ use§.§?J§);
         (§#Z§.getItemByName("Button_MightyEagle") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§=!@§ == null)
         {
            this.§=!@§ = §%!>§.§-]§.§?U§(§#Z§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§?P§ = §=;§;
         this.§=!@§.onComplete = this.§^v§;
         this.§=!@§.play();
      }
      
      protected function §^v§() : void
      {
         this.§=!@§ = §%!>§.§-]§.§?U§(§#Z§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§=!@§.play();
         this.§?P§ = §=;§;
      }
      
      override public function getVictoryState() : String
      {
         if(§,!!§.§;4§.objects.mMightyEagleAdded)
         {
            return §4d§.§0!7§;
         }
         return §#!6§.§0!7§;
      }
      
      protected function §^J§() : String
      {
         return § @§.§0!7§;
      }
      
      override public function getLoserState() : String
      {
         return §`!%§.§0!7§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               § @§.§'d§();
               mNextState = this.§^J§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§,!!§.§[!2§)
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
                  § @§.§'d§();
                  mNextState = § @§.§0!7§;
                  break;
               case 54:
                  § @§.§-!-§();
                  mNextState = § @§.§0!7§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         if(param3 is §=^§)
         {
            if(param1 == §@s§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §=h§.§-H§();
            }
            else if(param1 == §@s§.LISTENER_EVENT_MOUSE_UP)
            {
               §=h§.§'m§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §7!1§.§3!;§();
               break;
            case "PAUSE":
               mNextState = this.§-!E§();
               break;
            case "RESTART_LEVEL":
               § @§.§'d§();
               mNextState = § @§.§0!7§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §-!E§() : String
      {
         return §77§.§0!7§;
      }
      
      protected function §6L§() : void
      {
         §,!!§.§;4§.§6L§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§);
         §#Z§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§;1§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§6X§();
      }
   }
}
