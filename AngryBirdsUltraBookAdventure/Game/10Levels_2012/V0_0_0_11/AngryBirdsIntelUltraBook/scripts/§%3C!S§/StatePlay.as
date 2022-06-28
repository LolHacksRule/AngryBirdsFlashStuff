package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §##§.TutorialPopupManager;
   import §2!H§.LevelSlingshot;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §6b§.§3r§;
   import §7p§.GoogleAnalyticsTracker;
   import §7p§.Integer;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §9m§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const SCORE_SPEED:int = 50;
      
      protected static const MIGHTY_EAGLE_BUTTON_VISIBLE:String = "MightyEagleButtonVisible";
      
      protected static const MIGHTY_EAGLE_BUTTON_PREPARE_HIDE:String = "MightyEagleButtonPrepareHide";
      
      protected static const MIGHTY_EAGLE_BUTTON_HIDE:String = "MightyEagleButtonHide";
       
      
      protected var §=!T§:Integer;
      
      protected var §+J§:§!T§;
      
      protected var §9&§:String;
      
      protected var §7w§:Boolean;
      
      private var §`!I§:Vector.<int>;
      
      private var §"g§:Boolean;
      
      private var §?>§:Boolean;
      
      public function StatePlay(initState:Boolean = true, name:String = "StatePlay")
      {
         this.§=!T§ = new Integer();
         this.§`!I§ = new Vector.<int>(32);
         super(initState,name);
         this.§`!I§[3] = 5000;
         this.§`!I§[7] = 5000;
         this.§`!I§[8] = 5000;
         this.§`!I§[9] = 5000;
         this.§`!I§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelPlay[0]);
      }
      
      protected function §+!h§() : void
      {
      }
      
      private function §^!O§(e:TimerEvent) : void
      {
         (§5!M§.getItemByName("TextField_METimer") as UITextFieldRovio).setVisibility(false);
         trace("Hiding Mighty eagle timer");
      }
      
      override protected function levelStarted() : void
      {
         SoundEngine.§;!8§();
         super.levelStarted();
         if(§5!M§.getItemByName("Button_MightyEagle"))
         {
            §5!M§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         SoundEngine.§9!X§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §5!M§.getItemByName("TextField_METimer").setVisibility(false);
         §5!M§.getItemByName("Container_MEScore").setVisibility(false);
         §5!M§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §5!M§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var avatar:Bitmap = null;
         var mcContainer:MovieClip = null;
         var scale:Number = NaN;
         this.§=!T§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(StateStart.§"!,§ != null)
         {
            avatar = new Bitmap(StateStart.§"!,§,"auto",true);
            avatar.x = -avatar.width / 2;
            avatar.y = -avatar.height / 2;
            mcContainer = new MovieClip();
            mcContainer.addChild(avatar);
            scale = Math.min(100 / avatar.width,80 / avatar.height);
            mcContainer.scaleX = mcContainer.scaleY = scale;
            (§5!M§.getItemByName("MovieClip_AvatarPlaceholder") as §6#§).changeMovieClip(mcContainer);
            §5!M§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§9&§ = MIGHTY_EAGLE_BUTTON_VISIBLE;
         this.§+J§ = null;
         this.§7w§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§5!M§.getItemByName("Button_Pause") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§+J§ != null)
         {
            this.§+J§.stop();
            this.§+J§ = null;
         }
      }
      
      protected function §^!7§() : void
      {
         var sum:int = 0;
         var i:int = 0;
         var start:int = 0;
         if(!this.§"g§)
         {
            sum = 0;
            for(i = 0; i < this.§`!I§.length; i++)
            {
               sum += this.§`!I§[i];
            }
            if(sum % 1000 || int(sum / 1000) != 25)
            {
               this.§"g§ = true;
               GoogleAnalyticsTracker.§1`§(GoogleAnalyticsTracker.§-!W§,LevelManager.§var§);
            }
         }
         if(this.§?>§)
         {
            for(start = getTimer(); getTimer() - start < 1000; )
            {
            }
         }
      }
      
      protected function §'!$§() : void
      {
         var score:int = §-;§.getScore();
         var scoreVisible:int = this.§=!T§.getValue();
         if(scoreVisible < score && this.§"g§)
         {
            this.§?>§ = true;
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(TutorialPopupManager.isOpen)
         {
            return StateBase.STATE_STATUS_RUNNING;
         }
         if(§]!B§.§>F§.objects.mSardineCanAdded)
         {
            (§5!M§.getItemByName("Container_MEScore") as UIContainerRovio).setVisibility(true);
         }
         this.§^!7§();
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.updateCurrentScore(deltaTime);
         if(this.§9&§ == MIGHTY_EAGLE_BUTTON_VISIBLE && !§]!B§.§>F§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§9&§ == MIGHTY_EAGLE_BUTTON_VISIBLE || this.§9&§ == MIGHTY_EAGLE_BUTTON_PREPARE_HIDE) && §]!B§.§>F§.slingshot.mSlingShotState == LevelSlingshot.§=!3§)
         {
            this.hideMightyEagleButton();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§9&§ = MIGHTY_EAGLE_BUTTON_PREPARE_HIDE;
      }
      
      protected function hideMightyEagleButton() : void
      {
         trace("Hiding ME");
         (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
         (§5!M§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§+J§ == null)
         {
            this.§+J§ = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§9&§ = MIGHTY_EAGLE_BUTTON_HIDE;
         this.§+J§.onComplete = this.onHideMightyEagle;
         this.§+J§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§+J§ = TweenManager.§8!X§.§8m§(§5!M§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§+J§.play();
         this.§9&§ = MIGHTY_EAGLE_BUTTON_HIDE;
      }
      
      override public function getVictoryState() : String
      {
         if(§]!B§.§>F§.objects.mMightyEagleAdded)
         {
            return StateLevelEndEagle.STATE_NAME;
         }
         return StateLevelEndRio.STATE_NAME;
      }
      
      protected function §%b§() : String
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
               StateLevelLoadClassic.§7!R§();
               mNextState = this.§%b§();
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         if(§]!B§.DEBUG_MODE_ENABLED)
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
                  StateLevelLoadClassic.§7!R§();
                  mNextState = StateLevelLoadClassic.STATE_NAME;
                  break;
               case 54:
                  StateLevelLoadClassic.§[!6§();
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
               §3r§.§#!9§();
            }
            else if(eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP)
            {
               §3r§.§7!i§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               TutorialPopupManager.§<Z§();
               break;
            case "PAUSE":
               mNextState = this.§@!E§();
               break;
            case "RESTART_LEVEL":
               StateLevelLoadClassic.§7!R§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      protected function §@!E§() : String
      {
         return StatePause.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §]!B§.§>F§.useMightyEagle();
         var meScore:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§var§);
         §5!M§.setText(meScore.toString() + "%","TextField_MEPercentage");
         this.§7w§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(deltaTime:Number) : void
      {
         this.§'!$§();
      }
   }
}
