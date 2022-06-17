package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§'N§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §6o§.§="7§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§2a§;
   import §<a§.§9U§;
   import §<a§.§>f§;
   import §]!A§.;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §8!W§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §7D§:int = 50;
      
      protected static const §8!N§:String = "MightyEagleButtonVisible";
      
      protected static const §7!S§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §;!s§:String = "MightyEagleButtonHide";
       
      
      protected var §;![§:§9U§;
      
      protected var §0O§:§"m§;
      
      protected var §`!U§:String;
      
      protected var §1e§:Boolean;
      
      private var §1!p§:Vector.<int>;
      
      private var §<4§:Boolean;
      
      private var §73§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§;![§ = new §9U§();
         this.§1!p§ = new Vector.<int>(32);
         super(param1,param2);
         this.§1!p§[3] = 5000;
         this.§1!p§[7] = 5000;
         this.§1!p§[8] = 5000;
         this.§1!p§[9] = 5000;
         this.§1!p§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelPlay[0]);
      }
      
      protected function §2m§() : void
      {
      }
      
      private function §]!f§(param1:TimerEvent) : void
      {
         (§6w§.getItemByName("TextField_METimer") as §-"E§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.stopSoundsOnLevelStart();
         super.levelStarted();
         if(§6w§.getItemByName("Button_MightyEagle"))
         {
            §6w§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §>!E§.§7N§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      protected function stopSoundsOnLevelStart() : void
      {
         §>!E§.§&!^§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function §3!2§() : void
      {
         §6w§.getItemByName("TextField_METimer").setVisibility(false);
         §6w§.getItemByName("Container_MEScore").setVisibility(false);
         §6w§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §6w§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§;![§.assign(0);
         this.updateCurrentScore(0);
         this.§3!2§();
         if(§#;§.§?r§ != null)
         {
            _loc1_ = new Bitmap(§#;§.§?r§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§6w§.getItemByName("MovieClip_AvatarPlaceholder") as §7"-§).changeMovieClip(_loc2_);
            §6w§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§`!U§ = §8!N§;
         this.§0O§ = null;
         this.§1e§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§6w§.getItemByName("Button_Pause") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§0O§ != null)
         {
            this.§0O§.stop();
            this.§0O§ = null;
         }
      }
      
      protected function §2"6§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§<4§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§1!p§.length)
            {
               _loc1_ += this.§1!p§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§<4§ = true;
               §>f§.§""1§(§>f§.§0" §,LevelManager.§'!O§);
            }
         }
         if(this.§73§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §>>§() : void
      {
         var _loc1_:int = §,3§.getScore();
         var _loc2_:int = this.§;![§.getValue();
         if(_loc2_ < _loc1_ && this.§<4§)
         {
            this.§73§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§'N§.isOpen)
         {
            return §1-§.STATE_STATUS_RUNNING;
         }
         if(§#6§.§6!z§.objects.mSardineCanAdded)
         {
            (§6w§.getItemByName("Container_MEScore") as §08§).setVisibility(true);
         }
         this.§2"6§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§`!U§ == §8!N§ && !§#6§.§6!z§.objects.isPigsAlive())
         {
            this.§@!$§();
         }
         if((this.§`!U§ == §8!N§ || this.§`!U§ == §7!S§) && §#6§.§6!z§.slingshot.mSlingShotState == §2a§.§0T§)
         {
            this.hideMightyEagleButton();
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      protected function §@!$§() : void
      {
         this.§`!U§ = §7!S§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentState(§=!&§.§-N§);
         (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§0O§ == null)
         {
            this.§0O§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§`!U§ = §;!s§;
         this.§0O§.onComplete = this.§&s§;
         this.§0O§.play();
      }
      
      protected function §&s§() : void
      {
         this.§0O§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§0O§.play();
         this.§`!U§ = §;!s§;
      }
      
      override public function getVictoryState() : String
      {
         if(§#6§.§6!z§.objects.mMightyEagleAdded)
         {
            return §<!z§.STATE_NAME;
         }
         return §&!>§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §8!u§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §!!7§.§-V§();
               mNextState = this.getLevelLoadState();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§#6§.§4x§)
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
                  §!!7§.§-V§();
                  mNextState = §!!7§.STATE_NAME;
                  break;
               case 54:
                  §!!7§.§,L§();
                  mNextState = §!!7§.STATE_NAME;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         if(param3 is §^!D§)
         {
            if(param1 == §'M§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §="7§.§<5§();
            }
            else if(param1 == §'M§.LISTENER_EVENT_MOUSE_UP)
            {
               §="7§.§[b§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §'N§.§]>§();
               break;
            case "PAUSE":
               mNextState = this.getPauseState();
               break;
            case "RESTART_LEVEL":
               §!!7§.§-V§();
               mNextState = §!!7§.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      protected function getPauseState() : String
      {
         return §7l§.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §#6§.§6!z§.useMightyEagle();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§);
         §6w§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§1e§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§>>§();
      }
   }
}
