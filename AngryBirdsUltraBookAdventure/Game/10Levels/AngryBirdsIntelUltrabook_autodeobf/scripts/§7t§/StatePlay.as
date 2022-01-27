package §7t§
{
   import §!!0§.SoundEngine;
   import §"$§.TutorialPopupManager;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5=§.GoogleAnalyticsTracker;
   import §5=§.Integer;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §6a§.UIContainerRovio;
   import §6a§.UITextFieldRovio;
   import §<u§.§%c§;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import §]!@§.LevelSlingshot;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §"!Q§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const SCORE_SPEED:int = 50;
      
      protected static const MIGHTY_EAGLE_BUTTON_VISIBLE:String = "MightyEagleButtonVisible";
      
      protected static const MIGHTY_EAGLE_BUTTON_PREPARE_HIDE:String = "MightyEagleButtonPrepareHide";
      
      protected static const MIGHTY_EAGLE_BUTTON_HIDE:String = "MightyEagleButtonHide";
       
      
      protected var §'!H§:Integer;
      
      protected var §!!T§:§?W§;
      
      protected var §,!G§:String;
      
      protected var §[!C§:Boolean;
      
      private var §0!6§:Vector.<int>;
      
      private var § A§:Boolean;
      
      private var §%!1§:Boolean;
      
      public function StatePlay(initState:Boolean = true, name:String = "StatePlay")
      {
         this.§'!H§ = new Integer();
         this.§0!6§ = new Vector.<int>(32);
         super(initState,name);
         this.§0!6§[3] = 5000;
         this.§0!6§[7] = 5000;
         this.§0!6§[8] = 5000;
         this.§0!6§[9] = 5000;
         this.§0!6§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelPlay[0]);
      }
      
      protected function §>,§() : void
      {
      }
      
      private function §[N§(e:TimerEvent) : void
      {
         (§`=§.getItemByName("TextField_METimer") as UITextFieldRovio).setVisibility(false);
         trace("Hiding Mighty eagle timer");
      }
      
      override protected function levelStarted() : void
      {
         SoundEngine.§%!V§();
         super.levelStarted();
         if(§`=§.getItemByName("Button_MightyEagle"))
         {
            §`=§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         SoundEngine.§-!h§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §`=§.getItemByName("TextField_METimer").setVisibility(false);
         §`=§.getItemByName("Container_MEScore").setVisibility(false);
         §`=§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §`=§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var avatar:Bitmap = null;
         var mcContainer:MovieClip = null;
         var scale:Number = NaN;
         this.§'!H§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(StateStart.§6r§ != null)
         {
            avatar = new Bitmap(StateStart.§6r§,"auto",true);
            avatar.x = -avatar.width / 2;
            avatar.y = -avatar.height / 2;
            mcContainer = new MovieClip();
            mcContainer.addChild(avatar);
            scale = Math.min(100 / avatar.width,80 / avatar.height);
            mcContainer.scaleX = mcContainer.scaleY = scale;
            (§`=§.getItemByName("MovieClip_AvatarPlaceholder") as §=D§).changeMovieClip(mcContainer);
            §`=§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§,!G§ = MIGHTY_EAGLE_BUTTON_VISIBLE;
         this.§!!T§ = null;
         this.§[!C§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§`=§.getItemByName("Button_Pause") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§!!T§ != null)
         {
            this.§!!T§.stop();
            this.§!!T§ = null;
         }
      }
      
      protected function §!C§() : void
      {
         var sum:int = 0;
         var i:int = 0;
         var start:int = 0;
         if(!this.§ A§)
         {
            sum = 0;
            for(i = 0; i < this.§0!6§.length; i++)
            {
               sum += this.§0!6§[i];
            }
            if(sum % 1000 || int(sum / 1000) != 25)
            {
               this.§ A§ = true;
               GoogleAnalyticsTracker.§&k§(GoogleAnalyticsTracker.§ §,LevelManager.§1m§);
            }
         }
         if(this.§%!1§)
         {
            for(start = getTimer(); getTimer() - start < 1000; )
            {
            }
         }
      }
      
      protected function §@y§() : void
      {
         var score:int = §1!<§.getScore();
         var scoreVisible:int = this.§'!H§.getValue();
         if(scoreVisible < score && this.§ A§)
         {
            this.§%!1§ = true;
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(TutorialPopupManager.isOpen)
         {
            return StateBase.STATE_STATUS_RUNNING;
         }
         if(§`S§.§[o§.objects.mSardineCanAdded)
         {
            (§`=§.getItemByName("Container_MEScore") as UIContainerRovio).setVisibility(true);
         }
         this.§!C§();
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.updateCurrentScore(deltaTime);
         if(this.§,!G§ == MIGHTY_EAGLE_BUTTON_VISIBLE && !§`S§.§[o§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§,!G§ == MIGHTY_EAGLE_BUTTON_VISIBLE || this.§,!G§ == MIGHTY_EAGLE_BUTTON_PREPARE_HIDE) && §`S§.§[o§.slingshot.mSlingShotState == LevelSlingshot.§]!i§)
         {
            this.hideMightyEagleButton();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§,!G§ = MIGHTY_EAGLE_BUTTON_PREPARE_HIDE;
      }
      
      protected function hideMightyEagleButton() : void
      {
         trace("Hiding ME");
         (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§#!K§);
         (§`=§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§!!T§ == null)
         {
            this.§!!T§ = TweenManager.§7!E§.§5§(§`=§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§,!G§ = MIGHTY_EAGLE_BUTTON_HIDE;
         this.§!!T§.onComplete = this.onHideMightyEagle;
         this.§!!T§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§!!T§ = TweenManager.§7!E§.§5§(§`=§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§!!T§.play();
         this.§,!G§ = MIGHTY_EAGLE_BUTTON_HIDE;
      }
      
      override public function getVictoryState() : String
      {
         if(§`S§.§[o§.objects.mMightyEagleAdded)
         {
            return StateLevelEndEagle.STATE_NAME;
         }
         return StateLevelEndRio.STATE_NAME;
      }
      
      protected function §4!6§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return StateLevelEndFailRio.STATE_NAME;
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyDown(e);
         switch(e.keyCode)
         {
            case 82:
               StateLevelLoadClassic.§;!8§();
               mNextState = this.§4!6§();
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         if(§`S§.DEBUG_MODE_ENABLED)
         {
            switch(e.keyCode)
            {
               case 49:
                  break;
               case 50:
                  break;
               case 51:
                  break;
               case 52:
               case 53:
                  StateLevelLoadClassic.§;!8§();
                  mNextState = StateLevelLoadClassic.STATE_NAME;
                  break;
               case 54:
                  StateLevelLoadClassic.§7^§();
                  mNextState = StateLevelLoadClassic.STATE_NAME;
                  break;
               case 55:
            }
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(component is UIButtonRovio)
         {
            if(eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%c§.§<p§();
            }
            else if(eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP)
            {
               §%c§.§'n§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               TutorialPopupManager.§ c§();
               break;
            case "PAUSE":
               mNextState = this.§&!'§();
               break;
            case "RESTART_LEVEL":
               StateLevelLoadClassic.§;!8§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      protected function §&!'§() : String
      {
         return StatePause.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §`S§.§[o§.useMightyEagle();
         var meScore:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§1m§);
         §`=§.setText(meScore.toString() + "%","TextField_MEPercentage");
         this.§[!C§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(deltaTime:Number) : void
      {
         this.§@y§();
      }
   }
}
