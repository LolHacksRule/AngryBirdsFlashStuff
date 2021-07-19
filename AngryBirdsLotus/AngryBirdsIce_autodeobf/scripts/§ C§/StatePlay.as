package § C§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §9!!§.§4!<§;
   import §;8§.§!$§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §[x§.§9"§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   public class StatePlay extends §]?§
   {
      
      public static const §?B§:String = "StatePlay";
      
      public static const §@&§:int = 50;
      
      protected static const §4!0§:String = "MightyEagleButtonVisible";
      
      protected static const §7T§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §=N§:String = "MightyEagleButtonHide";
       
      
      protected var §'!#§:§2N§;
      
      protected var §`I§:§?A§;
      
      protected var §]§:String;
      
      protected var §@o§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         this.§'!#§ = new §2N§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelPlay[0]);
      }
      
      protected function §[U§() : void
      {
      }
      
      private function §`!5§(param1:TimerEvent) : void
      {
         (§,R§.getItemByName("TextField_METimer") as §'4§).setVisibility(false);
      }
      
      override protected function levelStarted() : void
      {
         §@6§.§&t§();
         super.levelStarted();
         if(§,R§.getItemByName("Button_MightyEagle"))
         {
            §,R§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         §@6§.playSound("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.§^3§();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §,R§.getItemByName("TextField_METimer").setVisibility(false);
         §,R§.getItemByName("Container_MEScore").setVisibility(false);
         §,R§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §,R§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function §^3§() : void
      {
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         this.§'!#§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(§,!?§.§<J§ != null)
         {
            _loc1_ = new Bitmap(§,!?§.§<J§,"auto",true);
            _loc1_.x = -_loc1_.width / 2;
            _loc1_.y = -_loc1_.height / 2;
            _loc2_ = new MovieClip();
            _loc2_.addChild(_loc1_);
            _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
            _loc2_.scaleX = _loc2_.scaleY = _loc3_;
            (§,R§.getItemByName("MovieClip_AvatarPlaceholder") as §=!=§).changeMovieClip(_loc2_);
            §,R§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§]§ = §4!0§;
         this.§`I§ = null;
         this.§@o§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§,R§.getItemByName("Button_Pause") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§`I§ != null)
         {
            this.§`I§.stop();
            this.§`I§ = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§4!<§.isOpen)
         {
            return §-§.STATE_STATUS_RUNNING;
         }
         if(§[o§.§='§.objects.mSardineCanAdded)
         {
            (§,R§.getItemByName("Container_MEScore") as §&F§).setVisibility(true);
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.updateCurrentScore(param1);
         if(this.§]§ == §4!0§ && !§[o§.§='§.objects.isPigsAlive())
         {
            this.§47§();
         }
         if((this.§]§ == §4!0§ || this.§]§ == §7T§) && §[o§.§='§.slingshot.mSlingShotState == §9"§.§5c§)
         {
            this.hideMightyEagleButton();
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      protected function §47§() : void
      {
         this.§]§ = §7T§;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentState(§<r§.§?!B§);
         (§,R§.getItemByName("Button_MightyEagle") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§`I§ == null)
         {
            this.§`I§ = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§]§ = §=N§;
         this.§`I§.onComplete = this.§4[§;
         this.§`I§.play();
      }
      
      protected function §4[§() : void
      {
         this.§`I§ = §";§.§[8§.§6!$§(§,R§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§`I§.play();
         this.§]§ = §=N§;
      }
      
      override public function getVictoryState() : String
      {
         if(§[o§.§='§.objects.mMightyEagleAdded)
         {
            return §#y§.§?B§;
         }
         return §]O§.§?B§;
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
      
      override public function getLoserState() : String
      {
         return §+!"§.§?B§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         switch(param1.keyCode)
         {
            case 82:
               §7!6§.§<!G§();
               mNextState = this.§`^§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(§[o§.§'Q§)
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
                  §7!6§.§<!G§();
                  mNextState = §7!6§.§?B§;
                  break;
               case 54:
                  §7!6§.§2v§();
                  mNextState = §7!6§.§?B§;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         if(param3 is §^P§)
         {
            if(param1 == §-[§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §!$§.§"r§();
            }
            else if(param1 == §-[§.LISTENER_EVENT_MOUSE_UP)
            {
               §!$§.§`?§();
            }
         }
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §4!<§.§,[§();
               break;
            case "PAUSE":
               mNextState = this.§;!=§();
               break;
            case "RESTART_LEVEL":
               §7!6§.§<!G§();
               mNextState = §7!6§.§?B§;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      protected function §;!=§() : String
      {
         return §,§.§?B§;
      }
      
      protected function §4x§() : void
      {
         §[o§.§='§.§4x§();
         var _loc1_:int = AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§);
         §,R§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§@o§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
