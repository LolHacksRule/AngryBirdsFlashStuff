package §@!%§
{
   import § "§.§8!3§;
   import §-'§.§%!$§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §4-§.§;g§;
   import §4-§.§>Z§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §9!?§.§%g§;
   import §9H§.§-!7§;
   import §]!1§.§@!-§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   public class StatePlay extends §!F§
   {
      
      public static const §5%§:String = "StatePlay";
      
      public static const §2^§:int = 50;
      
      protected static const §!e§:String = "MightyEagleButtonVisible";
      
      protected static const §<!C§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §]!0§:String = "MightyEagleButtonHide";
       
      
      protected var §2b§:§%!$§;
      
      protected var §4e§:§1^§;
      
      protected var §@g§:String;
      
      protected var §@'§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§2b§ = new §%!$§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_LevelPlay[0]);
      }
      
      protected function §%n§() : void
      {
      }
      
      private function §<T§(param1:TimerEvent) : void
      {
         (§`k§.getItemByName("TextField_METimer") as §>Z§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §7_§.§@l§();
         super.levelStarted();
         if(§`k§.getItemByName("Button_MightyEagle"))
         {
            §`k§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §7_§.§4!5§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§=!3§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §`k§.getItemByName("TextField_METimer").setVisibility(false);
         §`k§.getItemByName("Container_MEScore").setVisibility(false);
         §`k§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §`k§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §=!3§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§2b§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§4P§.§!Y§ != null)
         {
            _loc1_ = new Bitmap(§4P§.§!Y§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§`k§.getItemByName("MovieClip_AvatarPlaceholder") as §;g§).changeMovieClip(_loc2_);
            §`k§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§@g§ = §!e§;
         this.§4e§ = null;
         this.§@'§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§`k§.getItemByName("Button_MightyEagle") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`k§.getItemByName("Button_MightyEagle") as §%+§).setComponentState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§`k§.getItemByName("Button_Pause") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§4e§ != null)
         {
            this.§4e§.stop();
            this.§4e§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§@!-§.isOpen)
         {
            return §1!,§.STATE_STATUS_RUNNING;
         }
         if(§#!4§.§^Y§.objects.mSardineCanAdded)
         {
            (§`k§.getItemByName("Container_MEScore") as §'J§).setVisibility(true);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§@g§ == §!e§ && !§#!4§.§^Y§.objects.isPigsAlive())
         {
            this.§<]§();
         }
         if((this.§@g§ == §!e§ || this.§@g§ == §<!C§) && §#!4§.§^Y§.slingshot.mSlingShotState == §%g§.§ `§)
         {
            this.hideMightyEagleButton();
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §<]§() : void
      {
         this.§@g§ = §<!C§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§`k§.getItemByName("Button_MightyEagle") as §%+§).setComponentState(§"`§.§&!$§);
         (§`k§.getItemByName("Button_MightyEagle") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§4e§ == null)
         {
            this.§4e§ = §,G§.§+S§.§1u§(§`k§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§@g§ = §]!0§;
         this.§4e§.onComplete = this.§7O§;
         this.§4e§.play();
      }
      
      protected function §7O§() : void
      {
         this.§4e§ = §,G§.§+S§.§1u§(§`k§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§4e§.play();
         this.§@g§ = §]!0§;
      }
      
      override public function getVictoryState() : String
      {
         if(§#!4§.§^Y§.objects.mMightyEagleAdded)
         {
            return §0&§.§5%§;
         }
         return §=z§.§5%§;
      }
      
      override public function getLoserState() : String
      {
         return §!!'§.§5%§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §2!"§.§`!B§();
               mNextState = §2!"§.§5%§;
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§#!4§.§,!%§)
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
                  §2!"§.§`!B§();
                  mNextState = §2!"§.§5%§;
                  break;
               case 54:
                  §2!"§.§6!9§();
                  mNextState = §2!"§.§5%§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         if(param3 is §%+§)
         {
            if(param1 == §&]§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §-!7§.§8!#§();
            }
            else if(param1 == §&]§.LISTENER_EVENT_MOUSE_UP)
            {
               §-!7§.§]!$§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §@!-§.§8;§();
               break;
            case "PAUSE":
               mNextState = this.§0!!§();
               break;
            case "RESTART_LEVEL":
               §2!"§.§`!B§();
               mNextState = §2!"§.§5%§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      protected function §0!!§() : String
      {
         return §9B§.§5%§;
      }
      
      protected function §`!'§() : void
      {
         §#!4§.§^Y§.§`!'§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§-@§(§8!3§.§-[§);
         §`k§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§@'§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
