package §9!5§
{
   import §"R§.§ !Q§;
   import §,!5§.§>!A§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §0X§.§'W§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import §[m§.§;!+§;
   import §^_§.§=H§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class StatePlay extends §try §
   {
      
      public static const §?h§:String = "StatePlay";
      
      public static const §%B§:int = 50;
      
      protected static const §-B§:String = "MightyEagleButtonVisible";
      
      protected static const §<W§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §'!c§:String = "MightyEagleButtonHide";
       
      
      protected var §+e§:§&'§;
      
      protected var §4!4§:§4!Z§;
      
      protected var §[5§:String;
      
      protected var §+M§:Boolean;
      
      private var §>!8§:Vector.<int>;
      
      private var §`T§:Boolean;
      
      private var § !1§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§+e§ = new §&'§();
         this.§>!8§ = new Vector.<int>(32);
         super(param1,param2);
         this.§>!8§[3] = 5000;
         this.§>!8§[7] = 5000;
         this.§>!8§[8] = 5000;
         this.§>!8§[9] = 5000;
         this.§>!8§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelPlay[0]);
      }
      
      protected function §1!n§() : void
      {
      }
      
      private function §0!o§(param1:TimerEvent) : void
      {
         (§5!P§.getItemByName("TextField_METimer") as §"j§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         § !Q§.§"!"§();
         super.levelStarted();
         if(§5!P§.getItemByName("Button_MightyEagle"))
         {
            §5!P§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         § !Q§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §5!P§.getItemByName("TextField_METimer").setVisibility(false);
         §5!P§.getItemByName("Container_MEScore").setVisibility(false);
         §5!P§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §5!P§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§+e§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§!i§.§&n§ != null)
         {
            _loc1_ = new Bitmap(§!i§.§&n§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§5!P§.getItemByName("MovieClip_AvatarPlaceholder") as §[I§).changeMovieClip(_loc2_);
            §5!P§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§[5§ = §-B§;
         this.§4!4§ = null;
         this.§+M§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§5!P§.getItemByName("Button_Pause") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§4!4§ != null)
         {
            this.§4!4§.stop();
            this.§4!4§ = null;
         }
      }
      
      protected function §7!-§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§`T§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§>!8§.length)
            {
               _loc1_ += this.§>!8§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§`T§ = true;
               §'W§.§var §(§'W§.§7!2§,LevelManager.§4Y§);
            }
         }
         if(this.§ !1§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §?!4§() : void
      {
         var _loc1_:int = §%!q§.getScore();
         var _loc2_:int = this.§+e§.getValue();
         if(_loc2_ < _loc1_ && this.§`T§)
         {
            this.§ !1§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§;!+§.isOpen)
         {
            return §?Y§.STATE_STATUS_RUNNING;
         }
         if(§ _§.§!6§.objects.mSardineCanAdded)
         {
            (§5!P§.getItemByName("Container_MEScore") as §8;§).setVisibility(true);
         }
         this.§7!-§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§[5§ == §-B§ && !§ _§.§!6§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§[5§ == §-B§ || this.§[5§ == §<W§) && § _§.§!6§.slingshot.mSlingShotState == §>!A§.§,U§)
         {
            this.hideMightyEagleButton();
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§[5§ = §<W§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentState(§+!!§.§ H§);
         (§5!P§.getItemByName("Button_MightyEagle") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§4!4§ == null)
         {
            this.§4!4§ = §,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§[5§ = §'!c§;
         this.§4!4§.onComplete = this.onHideMightyEagle;
         this.§4!4§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§4!4§ = §,!b§.§<d§.§>a§(§5!P§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§4!4§.play();
         this.§[5§ = §'!c§;
      }
      
      override public function getVictoryState() : String
      {
         if(§ _§.§!6§.objects.mMightyEagleAdded)
         {
            return §17§.§?h§;
         }
         return §'!>§.§?h§;
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
      
      override public function getLoserState() : String
      {
         return §"Y§.§?h§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §#!c§.§6d§();
               mNextState = this.§[!Z§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§ _§.§[!d§)
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
                  §#!c§.§6d§();
                  mNextState = §#!c§.§?h§;
                  break;
               case 54:
                  §#!c§.§ !0§();
                  mNextState = §#!c§.§?h§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         if(param3 is §5!I§)
         {
            if(param1 == §6!8§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §=H§.§4!2§();
            }
            else if(param1 == §6!8§.LISTENER_EVENT_MOUSE_UP)
            {
               §=H§.§function§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §;!+§.§=M§();
               break;
            case "PAUSE":
               mNextState = this.§"!U§();
               break;
            case "RESTART_LEVEL":
               §#!c§.§6d§();
               mNextState = §#!c§.§?h§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      protected function §"!U§() : String
      {
         return §%@§.§?h§;
      }
      
      protected function useMightyEagle() : void
      {
         § _§.§!6§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§);
         §5!P§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§+M§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§?!4§();
      }
   }
}
