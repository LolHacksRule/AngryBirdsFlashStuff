package §`!%§
{
   import § !;§.§^Y§;
   import § !;§.§`! §;
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §%x§.§3=§;
   import §'X§.§9[§;
   import §0!<§.§%r§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=!4§.§7!1§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends § !>§
   {
      
      public static const §0!7§:String = "StatePlay";
      
      public static const §"2§:int = 50;
      
      protected static const §&4§:String = "MightyEagleButtonVisible";
      
      protected static const §=;§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §#!6§:String = "MightyEagleButtonHide";
       
      
      protected var §=!@§:§`! §;
      
      protected var §?P§:§ !5§;
      
      protected var §;1§:String;
      
      protected var §5!B§:Boolean;
      
      private var §[!9§:Vector.<int>;
      
      private var §#P§:Boolean;
      
      private var §=e§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§=!@§ = new §`! §();
         this.§[!9§ = new Vector.<int>(32);
         super(param1,param2);
         this.§[!9§[3] = 5000;
         this.§[!9§[7] = 5000;
         this.§[!9§[8] = 5000;
         this.§[!9§[9] = 5000;
         this.§[!9§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_LevelPlay[0]);
      }
      
      protected function §%!1§() : void
      {
      }
      
      private function §7=§(param1:TimerEvent) : void
      {
         (§#!4§.getItemByName("TextField_METimer") as § p§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §3!E§.§#'§();
         super.levelStarted();
         if(§#!4§.getItemByName("Button_MightyEagle"))
         {
            §#!4§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §3!E§.§<!,§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§-M§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §#!4§.getItemByName("TextField_METimer").setVisibility(false);
         §#!4§.getItemByName("Container_MEScore").setVisibility(false);
         §#!4§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §#!4§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §-M§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§=!@§.assign(0);
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
            (§#!4§.getItemByName("MovieClip_AvatarPlaceholder") as §[!B§).changeMovieClip(_loc2_);
            §#!4§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§;1§ = §&4§;
         this.§?P§ = null;
         this.§5!B§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§#!4§.getItemByName("Button_Pause") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§?P§ != null)
         {
            this.§?P§.stop();
            this.§?P§ = null;
         }
      }
      
      protected function §6X§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§#P§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§[!9§.length)
            {
               _loc1_ += this.§[!9§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§#P§ = true;
               §^Y§.§#r§(§^Y§.§!u§,§6M§.§[z§);
            }
         }
         if(this.§=e§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §"d§() : void
      {
         var _loc1_:int = §3K§.getScore();
         var _loc2_:int = this.§=!@§.getValue();
         if(_loc2_ < _loc1_ && this.§#P§)
         {
            this.§=e§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§7!1§.isOpen)
         {
            return §9[§.STATE_STATUS_RUNNING;
         }
         if(§,!!§.§;4§.objects.mSardineCanAdded)
         {
            (§#!4§.getItemByName("Container_MEScore") as §`f§).setVisibility(true);
         }
         this.§6X§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§;1§ == §&4§ && !§,!!§.§;4§.objects.isPigsAlive())
         {
            this.§^v§();
         }
         if((this.§;1§ == §&4§ || this.§;1§ == §=;§) && §,!!§.§;4§.slingshot.mSlingShotState == §3=§.§,z§)
         {
            this.hideMightyEagleButton();
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      protected function §^v§() : void
      {
         this.§;1§ = §=;§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentState(§9$§.§^8§);
         (§#!4§.getItemByName("Button_MightyEagle") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§?P§ == null)
         {
            this.§?P§ = §%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§;1§ = §#!6§;
         this.§?P§.onComplete = this.§-!E§;
         this.§?P§.play();
      }
      
      protected function §-!E§() : void
      {
         this.§?P§ = §%!>§.§-]§.§?U§(§#!4§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§?P§.play();
         this.§;1§ = §#!6§;
      }
      
      override public function getVictoryState() : String
      {
         if(§,!!§.§;4§.objects.mMightyEagleAdded)
         {
            return §4d§.§0!7§;
         }
         return §6E§.§0!7§;
      }
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
      
      override public function getLoserState() : String
      {
         return §^J§.§0!7§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               § @§.§'d§();
               mNextState = this.§,7§();
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         if(param3 is §]P§)
         {
            if(param1 == §'!0§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%r§.§'m§();
            }
            else if(param1 == §'!0§.LISTENER_EVENT_MOUSE_UP)
            {
               §%r§.§[m§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §7!1§.§3!;§();
               break;
            case "PAUSE":
               mNextState = this.§[2§();
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
      
      protected function §[2§() : String
      {
         return §77§.§0!7§;
      }
      
      protected function §6L§() : void
      {
         §,!!§.§;4§.§6L§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§);
         §#!4§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§5!B§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§"d§();
      }
   }
}
