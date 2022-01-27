package §>Y§
{
   import §!6§.§[!<§;
   import §"^§.§9=§;
   import §,!F§.§,!7§;
   import §3!%§.§-k§;
   import §4!6§.§<!1§;
   import §4!6§.§use§;
   import §4q§.§;w§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §+#§
   {
      
      public static const §4!C§:String = "StatePlay";
      
      public static const §0@§:int = 50;
      
      protected static const §]!1§:String = "MightyEagleButtonVisible";
      
      protected static const §#G§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §?y§:String = "MightyEagleButtonHide";
       
      
      protected var §6!@§:§use§;
      
      protected var §%X§:§6q§;
      
      protected var §[!7§:String;
      
      protected var §<X§:Boolean;
      
      private var §continue§:Vector.<int>;
      
      private var §'w§:Boolean;
      
      private var §;a§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§6!@§ = new §use§();
         this.§continue§ = new Vector.<int>(32);
         super(param1,param2);
         this.§continue§[3] = 5000;
         this.§continue§[7] = 5000;
         this.§continue§[8] = 5000;
         this.§continue§[9] = 5000;
         this.§continue§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelPlay[0]);
      }
      
      protected function §5!-§() : void
      {
      }
      
      private function §-!!§(param1:TimerEvent) : void
      {
         (§3g§.getItemByName("TextField_METimer") as §2"§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.each();
         super.levelStarted();
         if(§3g§.getItemByName("Button_MightyEagle"))
         {
            §3g§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §25§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§%q§();
      }
      
      protected function each() : void
      {
         §25§.§=!7§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §3g§.getItemByName("TextField_METimer").setVisibility(false);
         §3g§.getItemByName("Container_MEScore").setVisibility(false);
         §3g§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §3g§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §%q§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§6!@§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§>8§.§7e§ != null)
         {
            _loc1_ = new Bitmap(§>8§.§7e§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§3g§.getItemByName("MovieClip_AvatarPlaceholder") as §"x§).changeMovieClip(_loc2_);
            §3g§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§[!7§ = §]!1§;
         this.§%X§ = null;
         this.§<X§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§3g§.getItemByName("Button_MightyEagle") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3g§.getItemByName("Button_MightyEagle") as §1r§).setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§3g§.getItemByName("Button_Pause") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§%X§ != null)
         {
            this.§%X§.stop();
            this.§%X§ = null;
         }
      }
      
      protected function §+!9§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§'w§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§continue§.length)
            {
               _loc1_ += this.§continue§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§'w§ = true;
               §<!1§.§!§(§<!1§.§6!%§,§-k§.§%D§);
            }
         }
         if(this.§;a§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §&Q§() : void
      {
         var _loc1_:int = §@<§.getScore();
         var _loc2_:int = this.§6!@§.getValue();
         if(_loc2_ < _loc1_ && this.§'w§)
         {
            this.§;a§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§;w§.isOpen)
         {
            return §<!>§.STATE_STATUS_RUNNING;
         }
         if(§9=§.§<!@§.objects.mSardineCanAdded)
         {
            (§3g§.getItemByName("Container_MEScore") as §>v§).setVisibility(true);
         }
         this.§+!9§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§[!7§ == §]!1§ && !§9=§.§<!@§.objects.isPigsAlive())
         {
            this.§'P§();
         }
         if((this.§[!7§ == §]!1§ || this.§[!7§ == §#G§) && §9=§.§<!@§.slingshot.mSlingShotState == §,!7§.§>H§)
         {
            this.hideMightyEagleButton();
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      protected function §'P§() : void
      {
         this.§[!7§ = §#G§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§3g§.getItemByName("Button_MightyEagle") as §1r§).setComponentState(§=;§.§+!0§);
         (§3g§.getItemByName("Button_MightyEagle") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§%X§ == null)
         {
            this.§%X§ = §[!-§.§ set§.§6B§(§3g§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§[!7§ = §?y§;
         this.§%X§.onComplete = this.§3e§;
         this.§%X§.play();
      }
      
      protected function §3e§() : void
      {
         this.§%X§ = §[!-§.§ set§.§6B§(§3g§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%X§.play();
         this.§[!7§ = §?y§;
      }
      
      override public function getVictoryState() : String
      {
         if(§9=§.§<!@§.objects.mMightyEagleAdded)
         {
            return § u§.§4!C§;
         }
         return §!!1§.§4!C§;
      }
      
      protected function §8!!§() : String
      {
         return §;O§.§4!C§;
      }
      
      override public function getLoserState() : String
      {
         return §4l§.§4!C§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §;O§.§%e§();
               mNextState = this.§8!!§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§9=§.§<y§)
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
                  §;O§.§%e§();
                  mNextState = §;O§.§4!C§;
                  break;
               case 54:
                  §;O§.§ true§();
                  mNextState = §;O§.§4!C§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         if(param3 is §1r§)
         {
            if(param1 == §]_§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §[!<§.§@!>§();
            }
            else if(param1 == §]_§.LISTENER_EVENT_MOUSE_UP)
            {
               §[!<§.§%V§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §;w§.§^1§();
               break;
            case "PAUSE":
               mNextState = this.§=k§();
               break;
            case "RESTART_LEVEL":
               §;O§.§%e§();
               mNextState = §;O§.§4!C§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      protected function §=k§() : String
      {
         return §6!+§.§4!C§;
      }
      
      protected function §0!9§() : void
      {
         §9=§.§<!@§.§0!9§();
         var _loc1_:int = AngryBirdsFP11.§3!?§.§#J§(§-k§.§%D§);
         §3g§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§<X§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§&Q§();
      }
   }
}
