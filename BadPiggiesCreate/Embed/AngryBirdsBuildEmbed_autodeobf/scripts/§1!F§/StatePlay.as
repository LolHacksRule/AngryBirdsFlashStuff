package §1!F§
{
   import § !r§.§%s§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §8!Q§.§2!7§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §<!<§.§;§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §false§.§!!o§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   public class StatePlay extends §@!D§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §@f§:int = 50;
      
      protected static const §=!5§:String = "MightyEagleButtonVisible";
      
      protected static const §6!6§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §%3§:String = "MightyEagleButtonHide";
       
      
      protected var §1!l§:§2!7§;
      
      protected var §6!P§:§0Y§;
      
      protected var §+b§:String;
      
      protected var §0P§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§1!l§ = new §2!7§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPlay[0]);
      }
      
      protected function §'I§() : void
      {
      }
      
      private function §>j§(param1:TimerEvent) : void
      {
         (§+!$§.getItemByName("TextField_METimer") as §;!j§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §+!§.§'!Q§();
         super.levelStarted();
         if(§+!$§.getItemByName("Button_MightyEagle"))
         {
            §+!$§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §+!§.§4c§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§8!^§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §+!$§.getItemByName("TextField_METimer").setVisibility(false);
         §+!$§.getItemByName("Container_MEScore").setVisibility(false);
         §+!$§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §+!$§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §8!^§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§1!l§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§#!@§.§,!;§ != null)
         {
            _loc1_ = new Bitmap(§#!@§.§,!;§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§+!$§.getItemByName("MovieClip_AvatarPlaceholder") as §%O§).changeMovieClip(_loc2_);
            §+!$§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§+b§ = §=!5§;
         this.§6!P§ = null;
         this.§0P§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§+!$§.getItemByName("Button_Pause") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§6!P§ != null)
         {
            this.§6!P§.stop();
            this.§6!P§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§!!o§.isOpen)
         {
            return §;!!§.STATE_STATUS_RUNNING;
         }
         if(§'!V§.§1!2§.objects.mSardineCanAdded)
         {
            (§+!$§.getItemByName("Container_MEScore") as §[!s§).setVisibility(true);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§+b§ == §=!5§ && !§'!V§.§1!2§.objects.isPigsAlive())
         {
            this.§!!C§();
         }
         if((this.§+b§ == §=!5§ || this.§+b§ == §6!6§) && §'!V§.§1!2§.slingshot.mSlingShotState == §;§.§#!f§)
         {
            this.hideMightyEagleButton();
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      protected function §!!C§() : void
      {
         this.§+b§ = §6!6§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentState(§<f§.§!`§);
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§6!P§ == null)
         {
            this.§6!P§ = §@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§+b§ = §%3§;
         this.§6!P§.onComplete = this.§11§;
         this.§6!P§.play();
      }
      
      protected function §11§() : void
      {
         this.§6!P§ = §@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§6!P§.play();
         this.§+b§ = §%3§;
      }
      
      override public function getVictoryState() : String
      {
         if(§'!V§.§1!2§.objects.mMightyEagleAdded)
         {
            return §<!`§.STATE_NAME;
         }
         return §0k§.STATE_NAME;
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §0x§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §26§.§!=§();
               mNextState = this.§0H§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§'!V§.§>!q§)
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
                  §26§.§!=§();
                  mNextState = §26§.STATE_NAME;
                  break;
               case 54:
                  §26§.§=0§();
                  mNextState = §26§.STATE_NAME;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         if(param3 is §#!'§)
         {
            if(param1 == §+!S§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%s§.§[!@§();
            }
            else if(param1 == §+!S§.LISTENER_EVENT_MOUSE_UP)
            {
               §%s§.§<1§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §!!o§.§7§();
               break;
            case "PAUSE":
               mNextState = this.§!!b§();
               break;
            case "RESTART_LEVEL":
               §26§.§!=§();
               mNextState = §26§.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      protected function §!!b§() : String
      {
         return §^r§.STATE_NAME;
      }
      
      protected function §+!9§() : void
      {
         §'!V§.§1!2§.§+!9§();
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§);
         §+!$§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§0P§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
