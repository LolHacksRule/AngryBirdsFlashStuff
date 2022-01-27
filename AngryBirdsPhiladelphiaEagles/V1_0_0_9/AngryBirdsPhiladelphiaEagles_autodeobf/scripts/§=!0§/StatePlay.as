package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §!t§.§>B§;
   import §!t§.§?g§;
   import §"1§.§>I§;
   import §,!1§.§]e§;
   import §,T§.§@6§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §9!#§.§01§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import §`!8§.§7!G§;
   import §`!8§.§^!0§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §@#§
   {
      
      public static const §@§:String = "StatePlay";
      
      public static const §?!4§:int = 50;
      
      protected static const §=L§:String = "MightyEagleButtonVisible";
      
      protected static const §!!1§:String = "MightyEagleButtonPrepareHide";
      
      protected static const § >§:String = "MightyEagleButtonHide";
       
      
      protected var §+!@§:§7!G§;
      
      protected var §1,§:§!l§;
      
      protected var §8!2§:String;
      
      protected var §7!9§:Boolean;
      
      private var §9m§:Vector.<int>;
      
      private var §0P§:Boolean;
      
      private var §+h§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§+!@§ = new §7!G§();
         this.§9m§ = new Vector.<int>(32);
         super(param1,param2);
         this.§9m§[3] = 5000;
         this.§9m§[7] = 5000;
         this.§9m§[8] = 5000;
         this.§9m§[9] = 5000;
         this.§9m§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelPlay[0]);
      }
      
      protected function §<!K§() : void
      {
      }
      
      private function §^_§(param1:TimerEvent) : void
      {
         (§;I§.getItemByName("TextField_METimer") as §>B§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§'!F§();
         super.levelStarted();
         if(§;I§.getItemByName("Button_MightyEagle"))
         {
            §;I§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §]e§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§^2§();
      }
      
      protected function §'!F§() : void
      {
         §]e§.§>$§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §;I§.getItemByName("TextField_METimer").setVisibility(false);
         §;I§.getItemByName("Container_MEScore").setVisibility(false);
         §;I§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §;I§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §^2§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§+!@§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§"Y§.§ !!§ != null)
         {
            _loc1_ = new Bitmap(§"Y§.§ !!§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§;I§.getItemByName("MovieClip_AvatarPlaceholder") as §?g§).changeMovieClip(_loc2_);
            §;I§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§8!2§ = §=L§;
         this.§1,§ = null;
         this.§7!9§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§;I§.getItemByName("Button_MightyEagle") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;I§.getItemByName("Button_MightyEagle") as §5b§).setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§;I§.getItemByName("Button_Pause") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§1,§ != null)
         {
            this.§1,§.stop();
            this.§1,§ = null;
         }
      }
      
      protected function §[!L§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§0P§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§9m§.length)
            {
               _loc1_ += this.§9m§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§0P§ = true;
               §^!0§.§%P§(§^!0§.§'S§,§&u§.§ !+§);
            }
         }
         if(this.§+h§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §7!2§() : void
      {
         var _loc1_:int = §8!0§.getScore();
         var _loc2_:int = this.§+!@§.getValue();
         if(_loc2_ < _loc1_ && this.§0P§)
         {
            this.§+h§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§01§.isOpen)
         {
            return §-!,§.STATE_STATUS_RUNNING;
         }
         if(§0!E§.§9!B§.objects.mSardineCanAdded)
         {
            (§;I§.getItemByName("Container_MEScore") as §;1§).setVisibility(true);
         }
         this.§[!L§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§8!2§ == §=L§ && !§0!E§.§9!B§.objects.isPigsAlive())
         {
            this.§;p§();
         }
         if((this.§8!2§ == §=L§ || this.§8!2§ == §!!1§) && §0!E§.§9!B§.slingshot.mSlingShotState == §@6§.§!!M§)
         {
            this.hideMightyEagleButton();
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §;p§() : void
      {
         this.§8!2§ = §!!1§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§;I§.getItemByName("Button_MightyEagle") as §5b§).setComponentState(§3^§.§4a§);
         (§;I§.getItemByName("Button_MightyEagle") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§1,§ == null)
         {
            this.§1,§ = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§8!2§ = § >§;
         this.§1,§.onComplete = this.§^5§;
         this.§1,§.play();
      }
      
      protected function §^5§() : void
      {
         this.§1,§ = §5!&§.§@!&§.§9!4§(§;I§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§1,§.play();
         this.§8!2§ = § >§;
      }
      
      override public function getVictoryState() : String
      {
         if(§0!E§.§9!B§.objects.mMightyEagleAdded)
         {
            return §6!9§.§@§;
         }
         return §5O§.§@§;
      }
      
      protected function §8U§() : String
      {
         return §1!F§.§@§;
      }
      
      override public function getLoserState() : String
      {
         return §-!N§.§@§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §1!F§.§4W§();
               mNextState = this.§8U§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§0!E§.§=o§)
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
                  §1!F§.§4W§();
                  mNextState = §1!F§.§@§;
                  break;
               case 54:
                  §1!F§.§!<§();
                  mNextState = §1!F§.§@§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         if(param3 is §5b§)
         {
            if(param1 == §+!O§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §>I§.§]#§();
            }
            else if(param1 == §+!O§.LISTENER_EVENT_MOUSE_UP)
            {
               §>I§.§0!O§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §01§.§;9§();
               break;
            case "PAUSE":
               mNextState = this.§9!M§();
               break;
            case "RESTART_LEVEL":
               §1!F§.§4W§();
               mNextState = §1!F§.§@§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      protected function §9!M§() : String
      {
         return §7y§.§@§;
      }
      
      protected function §<!=§() : void
      {
         §0!E§.§9!B§.§<!=§();
         var _loc1_:int = AngryBirdsFP11.§5@§.§!W§(§&u§.§ !+§);
         §;I§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§7!9§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§7!2§();
      }
   }
}
