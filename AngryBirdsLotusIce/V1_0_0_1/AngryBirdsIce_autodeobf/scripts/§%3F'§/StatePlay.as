package §?'§
{
   import §"o§.§<+§;
   import §##§.§3!E§;
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §%S§.§7g§;
   import §%S§.§;!5§;
   import §'m§.§<7§;
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import §in§.§%K§;
   import §in§.§9c§;
   import §try§.§8!;§;
   
   public class StatePlay extends §&"§
   {
      
      public static const §`%§:String = "StatePlay";
      
      public static const §5+§:int = 50;
      
      protected static const §]L§:String = "MightyEagleButtonVisible";
      
      protected static const §,9§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §@M§:String = "MightyEagleButtonHide";
       
      
      protected var §>g§:§8!;§;
      
      protected var §^Q§:§]G§;
      
      protected var §;!+§:String;
      
      protected var §`!=§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§>g§ = new §8!;§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelPlay[0]);
      }
      
      protected function §?!$§() : void
      {
      }
      
      private function §5!>§(param1:TimerEvent) : void
      {
         (§<o§.getItemByName("TextField_METimer") as §7g§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §2;§.§'T§();
         super.levelStarted();
         if(§<o§.getItemByName("Button_MightyEagle"))
         {
            §<o§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §2;§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§9T§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §<o§.getItemByName("TextField_METimer").setVisibility(false);
         §<o§.getItemByName("Container_MEScore").setVisibility(false);
         §<o§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §<o§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §9T§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§>g§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§ 1§.§-x§ != null)
         {
            _loc1_ = new Bitmap(§ 1§.§-x§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§<o§.getItemByName("MovieClip_AvatarPlaceholder") as §;!5§).changeMovieClip(_loc2_);
            §<o§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§;!+§ = §]L§;
         this.§^Q§ = null;
         this.§`!=§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§<o§.getItemByName("Button_MightyEagle") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<o§.getItemByName("Button_MightyEagle") as §%X§).setComponentState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§<o§.getItemByName("Button_Pause") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§^Q§ != null)
         {
            this.§^Q§.stop();
            this.§^Q§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§3!E§.isOpen)
         {
            return §,!6§.STATE_STATUS_RUNNING;
         }
         if(§8[§.§import§.objects.mSardineCanAdded)
         {
            (§<o§.getItemByName("Container_MEScore") as §,1§).setVisibility(true);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§;!+§ == §]L§ && !§8[§.§import§.objects.isPigsAlive())
         {
            this.§ ! §();
         }
         if((this.§;!+§ == §]L§ || this.§;!+§ == §,9§) && §8[§.§import§.slingshot.mSlingShotState == §<+§.§7P§)
         {
            this.hideMightyEagleButton();
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      protected function § ! §() : void
      {
         this.§;!+§ = §,9§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§<o§.getItemByName("Button_MightyEagle") as §%X§).setComponentState(§9c§.§@<§);
         (§<o§.getItemByName("Button_MightyEagle") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§^Q§ == null)
         {
            this.§^Q§ = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§;!+§ = §@M§;
         this.§^Q§.onComplete = this.§3!C§;
         this.§^Q§.play();
      }
      
      protected function §3!C§() : void
      {
         this.§^Q§ = §!j§.§5!B§.§+I§(§<o§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§^Q§.play();
         this.§;!+§ = §@M§;
      }
      
      override public function getVictoryState() : String
      {
         if(§8[§.§import§.objects.mMightyEagleAdded)
         {
            return §1N§.§`%§;
         }
         return §<O§.§`%§;
      }
      
      protected function §0,§() : String
      {
         return §`0§.§`%§;
      }
      
      override public function getLoserState() : String
      {
         return §08§.§`%§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §`0§.§#T§();
               mNextState = this.§0,§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§8[§.§<! §)
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
                  §`0§.§#T§();
                  mNextState = §`0§.§`%§;
                  break;
               case 54:
                  §`0§.§6p§();
                  mNextState = §`0§.§`%§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         if(param3 is §%X§)
         {
            if(param1 == §%K§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §<7§.§6!7§();
            }
            else if(param1 == §%K§.LISTENER_EVENT_MOUSE_UP)
            {
               §<7§.§=c§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §3!E§.set();
               break;
            case "PAUSE":
               mNextState = this.§#!F§();
               break;
            case "RESTART_LEVEL":
               §`0§.§#T§();
               mNextState = §`0§.§`%§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      protected function §#!F§() : String
      {
         return §-Y§.§`%§;
      }
      
      protected function §=!,§() : void
      {
         §8[§.§import§.§=!,§();
         var _loc1_:int = AngryBirdsFP11.§[l§.§7!;§(§&#§.§<Y§);
         §<o§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§`!=§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
