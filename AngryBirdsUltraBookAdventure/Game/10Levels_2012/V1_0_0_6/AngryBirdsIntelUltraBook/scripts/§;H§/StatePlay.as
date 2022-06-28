package §;H§
{
   import §"x§.§?8§;
   import §+0§.§,!E§;
   import §,B§.§?! §;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §2_§.§8![§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§%!M§;
   import §]+§.§=E§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §2!R§
   {
      
      public static const §"!s§:String = "StatePlay";
      
      public static const § ]§:int = 50;
      
      protected static const §,!9§:String = "MightyEagleButtonVisible";
      
      protected static const §8!o§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §"!-§:String = "MightyEagleButtonHide";
       
      
      protected var §#!n§:§=E§;
      
      protected var §!!x§:§!q§;
      
      protected var §83§:String;
      
      protected var §]!y§:Boolean;
      
      private var §[x§:Vector.<int>;
      
      private var §0!Y§:Boolean;
      
      private var §?7§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§#!n§ = new §=E§();
         this.§[x§ = new Vector.<int>(32);
         super(param1,param2);
         this.§[x§[3] = 5000;
         this.§[x§[7] = 5000;
         this.§[x§[8] = 5000;
         this.§[x§[9] = 5000;
         this.§[x§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelPlay[0]);
      }
      
      protected function §;!j§() : void
      {
      }
      
      private function §2Z§(param1:TimerEvent) : void
      {
         (§&!m§.getItemByName("TextField_METimer") as §?!x§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §9'§.§0D§();
         super.levelStarted();
         if(§&!m§.getItemByName("Button_MightyEagle"))
         {
            §&!m§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §9'§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §&!m§.getItemByName("TextField_METimer").setVisibility(false);
         §&!m§.getItemByName("Container_MEScore").setVisibility(false);
         §&!m§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §&!m§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§#!n§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§%!R§.§>!B§ != null)
         {
            _loc1_ = new Bitmap(§%!R§.§>!B§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§&!m§.getItemByName("MovieClip_AvatarPlaceholder") as §1!=§).changeMovieClip(_loc2_);
            §&!m§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§83§ = §,!9§;
         this.§!!x§ = null;
         this.§]!y§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§&!m§.getItemByName("Button_Pause") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§!!x§ != null)
         {
            this.§!!x§.stop();
            this.§!!x§ = null;
         }
      }
      
      protected function §"'§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§0!Y§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§[x§.length)
            {
               _loc1_ += this.§[x§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§0!Y§ = true;
               §%!M§.§[!G§(§%!M§.§&!9§,LevelManager.§%n§);
            }
         }
         if(this.§?7§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §#]§() : void
      {
         var _loc1_:int = §[!D§.getScore();
         var _loc2_:int = this.§#!n§.getValue();
         if(_loc2_ < _loc1_ && this.§0!Y§)
         {
            this.§?7§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§?! §.isOpen)
         {
            return §,!E§.STATE_STATUS_RUNNING;
         }
         if(§^!c§.§5!Y§.objects.mSardineCanAdded)
         {
            (§&!m§.getItemByName("Container_MEScore") as §#?§).setVisibility(true);
         }
         this.§"'§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§83§ == §,!9§ && !§^!c§.§5!Y§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§83§ == §,!9§ || this.§83§ == §8!o§) && §^!c§.§5!Y§.slingshot.mSlingShotState == §8![§.§5s§)
         {
            this.hideMightyEagleButton();
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§83§ = §8!o§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentState(§4+§.§ !M§);
         (§&!m§.getItemByName("Button_MightyEagle") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§!!x§ == null)
         {
            this.§!!x§ = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§83§ = §"!-§;
         this.§!!x§.onComplete = this.onHideMightyEagle;
         this.§!!x§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§!!x§ = §-!,§.§7!j§.§,!`§(§&!m§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§!!x§.play();
         this.§83§ = §"!-§;
      }
      
      override public function getVictoryState() : String
      {
         if(§^!c§.§5!Y§.objects.mMightyEagleAdded)
         {
            return §#!G§.§"!s§;
         }
         return §%!D§.§"!s§;
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
      
      override public function getLoserState() : String
      {
         return §6M§.§"!s§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §;W§.§&!5§();
               mNextState = this.§`[§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§^!c§.§@a§)
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
                  §;W§.§&!5§();
                  mNextState = §;W§.§"!s§;
                  break;
               case 54:
                  §;W§.§&p§();
                  mNextState = §;W§.§"!s§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         if(param3 is §==§)
         {
            if(param1 == §,!c§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §?8§.§&#§();
            }
            else if(param1 == §,!c§.LISTENER_EVENT_MOUSE_UP)
            {
               §?8§.§]!%§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §?! §.§<z§();
               break;
            case "PAUSE":
               mNextState = this.§"1§();
               break;
            case "RESTART_LEVEL":
               §;W§.§&!5§();
               mNextState = §;W§.§"!s§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      protected function §"1§() : String
      {
         return §-!X§.§"!s§;
      }
      
      protected function useMightyEagle() : void
      {
         §^!c§.§5!Y§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§);
         §&!m§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§]!y§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§#]§();
      }
   }
}
