package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §3!O§.§ !2§;
   import §4!-§.§2s§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §8]§.§93§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §;!B§.§1"§;
   import §;!B§.§;f§;
   import §@<§.§#_§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §!m§
   {
      
      public static const §2`§:String = "StatePlay";
      
      public static const §^!-§:int = 50;
      
      protected static const §1x§:String = "MightyEagleButtonVisible";
      
      protected static const §6r§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §5!K§:String = "MightyEagleButtonHide";
       
      
      protected var §>=§:§;f§;
      
      protected var §]!I§:§<Q§;
      
      protected var §7M§:String;
      
      protected var §2!<§:Boolean;
      
      private var §;l§:Vector.<int>;
      
      private var §8!G§:Boolean;
      
      private var §!,§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§>=§ = new §;f§();
         this.§;l§ = new Vector.<int>(32);
         super(param1,param2);
         this.§;l§[3] = 5000;
         this.§;l§[7] = 5000;
         this.§;l§[8] = 5000;
         this.§;l§[9] = 5000;
         this.§;l§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelPlay[0]);
      }
      
      protected function §&!K§() : void
      {
      }
      
      private function §&+§(param1:TimerEvent) : void
      {
         (§<A§.getItemByName("TextField_METimer") as §?N§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§'!K§();
         super.levelStarted();
         if(§<A§.getItemByName("Button_MightyEagle"))
         {
            §<A§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §#-§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§<F§();
      }
      
      protected function §'!K§() : void
      {
         §#-§.§[!>§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §<A§.getItemByName("TextField_METimer").setVisibility(false);
         §<A§.getItemByName("Container_MEScore").setVisibility(false);
         §<A§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §<A§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §<F§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§>=§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§-h§.§!e§ != null)
         {
            _loc1_ = new Bitmap(§-h§.§!e§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§<A§.getItemByName("MovieClip_AvatarPlaceholder") as §93§).changeMovieClip(_loc2_);
            §<A§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§7M§ = §1x§;
         this.§]!I§ = null;
         this.§2!<§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§<A§.getItemByName("Button_MightyEagle") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<A§.getItemByName("Button_MightyEagle") as §-u§).setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§<A§.getItemByName("Button_Pause") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§]!I§ != null)
         {
            this.§]!I§.stop();
            this.§]!I§ = null;
         }
      }
      
      protected function §1l§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§8!G§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§;l§.length)
            {
               _loc1_ += this.§;l§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§8!G§ = true;
               §1"§.§`!O§(§1"§.§2!5§,§2h§.§,!P§);
            }
         }
         if(this.§!,§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §5z§() : void
      {
         var _loc1_:int = §;!M§.getScore();
         var _loc2_:int = this.§>=§.getValue();
         if(_loc2_ < _loc1_ && this.§8!G§)
         {
            this.§!,§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§#_§.isOpen)
         {
            return §0H§.STATE_STATUS_RUNNING;
         }
         if(§[F§.§9u§.objects.mSardineCanAdded)
         {
            (§<A§.getItemByName("Container_MEScore") as §+a§).setVisibility(true);
         }
         this.§1l§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§7M§ == §1x§ && !§[F§.§9u§.objects.isPigsAlive())
         {
            this.§]]§();
         }
         if((this.§7M§ == §1x§ || this.§7M§ == §6r§) && §[F§.§9u§.slingshot.mSlingShotState == §2s§.§3!K§)
         {
            this.hideMightyEagleButton();
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      protected function §]]§() : void
      {
         this.§7M§ = §6r§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§<A§.getItemByName("Button_MightyEagle") as §-u§).setComponentState(§2§.§1u§);
         (§<A§.getItemByName("Button_MightyEagle") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§]!I§ == null)
         {
            this.§]!I§ = §5^§.§<"§.§^g§(§<A§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§7M§ = §5!K§;
         this.§]!I§.onComplete = this.§<]§;
         this.§]!I§.play();
      }
      
      protected function §<]§() : void
      {
         this.§]!I§ = §5^§.§<"§.§^g§(§<A§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§]!I§.play();
         this.§7M§ = §5!K§;
      }
      
      override public function getVictoryState() : String
      {
         if(§[F§.§9u§.objects.mMightyEagleAdded)
         {
            return §"!!§.§2`§;
         }
         return §!n§.§2`§;
      }
      
      protected function §6u§() : String
      {
         return §#u§.§2`§;
      }
      
      override public function getLoserState() : String
      {
         return §#e§.§2`§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §#u§.§<q§();
               mNextState = this.§6u§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[F§.§9!-§)
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
                  §#u§.§<q§();
                  mNextState = §#u§.§2`§;
                  break;
               case 54:
                  §#u§.§<k§();
                  mNextState = §#u§.§2`§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         if(param3 is §-u§)
         {
            if(param1 == § true§.LISTENER_EVENT_MOUSE_DOWN)
            {
               § !2§.§8S§();
            }
            else if(param1 == § true§.LISTENER_EVENT_MOUSE_UP)
            {
               § !2§.§@+§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §#_§.§,!N§();
               break;
            case "PAUSE":
               mNextState = this.§!7§();
               break;
            case "RESTART_LEVEL":
               §#u§.§<q§();
               mNextState = §#u§.§2`§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      protected function §!7§() : String
      {
         return §8#§.§2`§;
      }
      
      protected function §4!§() : void
      {
         §[F§.§9u§.§4!§();
         var _loc1_:int = AngryBirdsFP11.§ !-§.§,h§(§2h§.§,!P§);
         §<A§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§2!<§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§5z§();
      }
   }
}
