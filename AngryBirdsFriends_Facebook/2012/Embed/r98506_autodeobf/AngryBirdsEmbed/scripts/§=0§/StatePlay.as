package §=0§
{
   import §#;§.§!l§;
   import §'!7§.§`a§;
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §-p§.§5<§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §3'§.§6k§;
   import §3'§.§8I§;
   import §3'§.§?-§;
   import §8!G§.§-Z§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §>K§.§%H§;
   import §>K§.§,d§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §"!9§
   {
      
      public static const §?1§:String = "StatePlay";
      
      public static const §=<§:int = 50;
      
      protected static const §`?§:String = "MightyEagleButtonVisible";
      
      protected static const §#!<§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §0!<§:String = "MightyEagleButtonHide";
       
      
      protected var §@!7§:§%H§;
      
      protected var §0!?§:§7I§;
      
      protected var §3O§:String;
      
      protected var §#!B§:Boolean;
      
      private var §3!9§:Vector.<int>;
      
      private var §`!C§:Boolean;
      
      private var § n§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§@!7§ = new §%H§();
         this.§3!9§ = new Vector.<int>(32);
         super(param1,param2);
         this.§3!9§[3] = 5000;
         this.§3!9§[7] = 5000;
         this.§3!9§[8] = 5000;
         this.§3!9§[9] = 5000;
         this.§3!9§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_LevelPlay[0]);
      }
      
      protected function §>!B§() : void
      {
      }
      
      private function §#!"§(param1:TimerEvent) : void
      {
         (§4G§.getItemByName("TextField_METimer") as §6k§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§0!A§();
         super.levelStarted();
         if(§4G§.getItemByName("Button_MightyEagle"))
         {
            §4G§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §9!0§.§-! §("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§1`§();
      }
      
      protected function §0!A§() : void
      {
         §9!0§.§"P§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §4G§.getItemByName("TextField_METimer").setVisibility(false);
         §4G§.getItemByName("Container_MEScore").setVisibility(false);
         §4G§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §4G§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §1`§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§@!7§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§[!$§.§82§ != null)
         {
            _loc1_ = new Bitmap(§[!$§.§82§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§4G§.getItemByName("MovieClip_AvatarPlaceholder") as §?-§).changeMovieClip(_loc2_);
            §4G§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§3O§ = §`?§;
         this.§0!?§ = null;
         this.§#!B§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§4G§.getItemByName("Button_MightyEagle") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4G§.getItemByName("Button_MightyEagle") as §5I§).setComponentState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§4G§.getItemByName("Button_Pause") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§0!?§ != null)
         {
            this.§0!?§.stop();
            this.§0!?§ = null;
         }
      }
      
      protected function §6!F§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§`!C§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§3!9§.length)
            {
               _loc1_ += this.§3!9§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§`!C§ = true;
               §,d§.§#U§(§,d§.§2v§,§-Z§.§%s§);
            }
         }
         if(this.§ n§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §+&§() : void
      {
         var _loc1_:int = §,Z§.getScore();
         var _loc2_:int = this.§@!7§.getValue();
         if(_loc2_ < _loc1_ && this.§`!C§)
         {
            this.§ n§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§`a§.isOpen)
         {
            return §`U§.STATE_STATUS_RUNNING;
         }
         if(§^?§.§]!%§.objects.mSardineCanAdded)
         {
            (§4G§.getItemByName("Container_MEScore") as §8I§).setVisibility(true);
         }
         this.§6!F§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§3O§ == §`?§ && !§^?§.§]!%§.objects.isPigsAlive())
         {
            this.§7Z§();
         }
         if((this.§3O§ == §`?§ || this.§3O§ == §#!<§) && §^?§.§]!%§.slingshot.mSlingShotState == §!l§.§ !&§)
         {
            this.hideMightyEagleButton();
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      protected function §7Z§() : void
      {
         this.§3O§ = §#!<§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§4G§.getItemByName("Button_MightyEagle") as §5I§).setComponentState(§3P§.§;_§);
         (§4G§.getItemByName("Button_MightyEagle") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§0!?§ == null)
         {
            this.§0!?§ = §>!2§.§72§.§-z§(§4G§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§3O§ = §0!<§;
         this.§0!?§.onComplete = this.§"!§;
         this.§0!?§.play();
      }
      
      protected function §"!§() : void
      {
         this.§0!?§ = §>!2§.§72§.§-z§(§4G§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§0!?§.play();
         this.§3O§ = §0!<§;
      }
      
      override public function getVictoryState() : String
      {
         if(§^?§.§]!%§.objects.mMightyEagleAdded)
         {
            return §;v§.§?1§;
         }
         return §,!'§.§?1§;
      }
      
      protected function §;!<§() : String
      {
         return § !2§.§?1§;
      }
      
      override public function getLoserState() : String
      {
         return §+^§.§?1§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               § !2§.§-9§();
               mNextState = this.§;!<§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§^?§.§8!=§)
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
                  § !2§.§-9§();
                  mNextState = § !2§.§?1§;
                  break;
               case 54:
                  § !2§.§62§();
                  mNextState = § !2§.§?1§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         if(param3 is §5I§)
         {
            if(param1 == §^!%§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §5<§.§!q§();
            }
            else if(param1 == §^!%§.LISTENER_EVENT_MOUSE_UP)
            {
               §5<§.§"§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §`a§.§[S§();
               break;
            case "PAUSE":
               mNextState = this.§0!C§();
               break;
            case "RESTART_LEVEL":
               § !2§.§-9§();
               mNextState = § !2§.§?1§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      protected function §0!C§() : String
      {
         return §-v§.§?1§;
      }
      
      protected function §case§() : void
      {
         §^?§.§]!%§.§case§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§"w§(§-Z§.§%s§);
         §4G§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§#!B§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§+&§();
      }
   }
}
