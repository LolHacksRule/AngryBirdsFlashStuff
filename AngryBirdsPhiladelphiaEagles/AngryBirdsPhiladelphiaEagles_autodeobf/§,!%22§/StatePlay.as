package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §0!E§.§3"§;
   import §0!E§.§;!D§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §9T§.§97§;
   import §<M§.§"_§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import §`K§.§4N§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §@'§
   {
      
      public static const §-A§:String = "StatePlay";
      
      public static const §@!D§:int = 50;
      
      protected static const §'!'§:String = "MightyEagleButtonVisible";
      
      protected static const § !?§:String = "MightyEagleButtonPrepareHide";
      
      protected static const § get§:String = "MightyEagleButtonHide";
       
      
      protected var §#q§:§;!D§;
      
      protected var §+f§:§[!9§;
      
      protected var §4!0§:String;
      
      protected var §,7§:Boolean;
      
      private var §8!P§:Vector.<int>;
      
      private var §>]§:Boolean;
      
      private var §1!,§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§#q§ = new §;!D§();
         this.§8!P§ = new Vector.<int>(32);
         super(param1,param2);
         this.§8!P§[3] = 5000;
         this.§8!P§[7] = 5000;
         this.§8!P§[8] = 5000;
         this.§8!P§[9] = 5000;
         this.§8!P§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelPlay[0]);
      }
      
      protected function §"!0§() : void
      {
      }
      
      private function §8!K§(param1:TimerEvent) : void
      {
         (§0q§.getItemByName("TextField_METimer") as §@4§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         this.§2!2§();
         super.levelStarted();
         if(§0q§.getItemByName("Button_MightyEagle"))
         {
            §0q§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §[!7§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§3m§();
      }
      
      protected function §2!2§() : void
      {
         §[!7§.§=0§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §0q§.getItemByName("TextField_METimer").setVisibility(false);
         §0q§.getItemByName("Container_MEScore").setVisibility(false);
         §0q§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §0q§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §3m§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§#q§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§8j§.§]!H§ != null)
         {
            _loc1_ = new Bitmap(§8j§.§]!H§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§0q§.getItemByName("MovieClip_AvatarPlaceholder") as §!o§).changeMovieClip(_loc2_);
            §0q§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§4!0§ = §'!'§;
         this.§+f§ = null;
         this.§,7§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§0q§.getItemByName("Button_Pause") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§+f§ != null)
         {
            this.§+f§.stop();
            this.§+f§ = null;
         }
      }
      
      protected function §-[§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§>]§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§8!P§.length)
            {
               _loc1_ += this.§8!P§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§>]§ = true;
               §3"§.§>v§(§3"§.§=!B§,§`!K§.§5g§);
            }
         }
         if(this.§1!,§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §+T§() : void
      {
         var _loc1_:int = §0!=§.getScore();
         var _loc2_:int = this.§#q§.getValue();
         if(_loc2_ < _loc1_ && this.§>]§)
         {
            this.§1!,§ = true;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§"_§.isOpen)
         {
            return §'!#§.STATE_STATUS_RUNNING;
         }
         if(§#! §.§`'§.objects.mSardineCanAdded)
         {
            (§0q§.getItemByName("Container_MEScore") as §[Q§).setVisibility(true);
         }
         this.§-[§();
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§4!0§ == §'!'§ && !§#! §.§`'§.objects.isPigsAlive())
         {
            this.§>@§();
         }
         if((this.§4!0§ == §'!'§ || this.§4!0§ == § !?§) && §#! §.§`'§.slingshot.mSlingShotState == §97§.§=!O§)
         {
            this.hideMightyEagleButton();
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      protected function §>@§() : void
      {
         this.§4!0§ = § !?§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentState(§@V§.§!%§);
         (§0q§.getItemByName("Button_MightyEagle") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§+f§ == null)
         {
            this.§+f§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§4!0§ = § get§;
         this.§+f§.onComplete = this.§,!N§;
         this.§+f§.play();
      }
      
      protected function §,!N§() : void
      {
         this.§+f§ = §3C§.§>o§.§<t§(§0q§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§+f§.play();
         this.§4!0§ = § get§;
      }
      
      override public function getVictoryState() : String
      {
         if(§#! §.§`'§.objects.mMightyEagleAdded)
         {
            return § true§.§-A§;
         }
         return §<z§.§-A§;
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
      
      override public function getLoserState() : String
      {
         return §]g§.§-A§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §-O§.§8!5§();
               mNextState = this.§5!'§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§#! §.§^!E§)
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
                  §-O§.§8!5§();
                  mNextState = §-O§.§-A§;
                  break;
               case 54:
                  §-O§.§ b§();
                  mNextState = §-O§.§-A§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         if(param3 is §^'§)
         {
            if(param1 == §`M§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §4N§.§7J§();
            }
            else if(param1 == §`M§.LISTENER_EVENT_MOUSE_UP)
            {
               §4N§.§>a§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §"_§.§,X§();
               break;
            case "PAUSE":
               mNextState = this.§#T§();
               break;
            case "RESTART_LEVEL":
               §-O§.§8!5§();
               mNextState = §-O§.§-A§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      protected function §#T§() : String
      {
         return §="§.§-A§;
      }
      
      protected function §`r§() : void
      {
         §#! §.§`'§.§`r§();
         var _loc1_:int = AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§);
         §0q§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§,7§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
         this.§+T§();
      }
   }
}
