package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §'N§.§'!6§;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §9!!§.GoogleAnalyticsTracker;
   import §9!!§.Integer;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!"§.TutorialPopupManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §?A§.LevelSlingshot;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §&x§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const SCORE_SPEED:int = 50;
      
      protected static const MIGHTY_EAGLE_BUTTON_VISIBLE:String = "MightyEagleButtonVisible";
      
      protected static const MIGHTY_EAGLE_BUTTON_PREPARE_HIDE:String = "MightyEagleButtonPrepareHide";
      
      protected static const MIGHTY_EAGLE_BUTTON_HIDE:String = "MightyEagleButtonHide";
       
      
      protected var §,!D§:Integer;
      
      protected var §9I§:§9h§;
      
      protected var §,+§:String;
      
      protected var §4'§:Boolean;
      
      private var §+!]§:Vector.<int>;
      
      private var §^@§:Boolean;
      
      private var §4R§:Boolean;
      
      public function StatePlay(initState:Boolean = true, name:String = "StatePlay")
      {
         this.§,!D§ = new Integer();
         this.§+!]§ = new Vector.<int>(32);
         super(initState,name);
         this.§+!]§[3] = 5000;
         this.§+!]§[7] = 5000;
         this.§+!]§[8] = 5000;
         this.§+!]§[9] = 5000;
         this.§+!]§[12] = 5000;
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelPlay[0]);
      }
      
      protected function §,;§() : void
      {
      }
      
      private function §8!7§(e:TimerEvent) : void
      {
         (§^,§.getItemByName("TextField_METimer") as UITextFieldRovio).setVisibility(false);
         trace("Hiding Mighty eagle timer");
      }
      
      override protected function levelStarted() : void
      {
         SoundEngine.§=O§();
         super.levelStarted();
         if(§^,§.getItemByName("Button_MightyEagle"))
         {
            §^,§.getItemByName("Button_MightyEagle").setVisibility(true);
         }
         SoundEngine.§`B§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
         this.initActivation();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      protected function initMightyEagleButton() : void
      {
         §^,§.getItemByName("TextField_METimer").setVisibility(false);
         §^,§.getItemByName("Container_MEScore").setVisibility(false);
         §^,§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §^,§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
      }
      
      protected function initActivation() : void
      {
         var avatar:Bitmap = null;
         var mcContainer:MovieClip = null;
         var scale:Number = NaN;
         this.§,!D§.assign(0);
         this.updateCurrentScore(0);
         this.initMightyEagleButton();
         if(StateStart.§3w§ != null)
         {
            avatar = new Bitmap(StateStart.§3w§,"auto",true);
            avatar.x = -avatar.width / 2;
            avatar.y = -avatar.height / 2;
            mcContainer = new MovieClip();
            mcContainer.addChild(avatar);
            scale = Math.min(100 / avatar.width,80 / avatar.height);
            mcContainer.scaleX = mcContainer.scaleY = scale;
            (§^,§.getItemByName("MovieClip_AvatarPlaceholder") as §+,§).changeMovieClip(mcContainer);
            §^,§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
         }
         this.§,+§ = MIGHTY_EAGLE_BUTTON_VISIBLE;
         this.§9I§ = null;
         this.§4'§ = false;
      }
      
      public function deactivateMightyEagleButton() : void
      {
         (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         (§^,§.getItemByName("Button_Pause") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.deactivateMightyEagleButton();
         if(this.§9I§ != null)
         {
            this.§9I§.stop();
            this.§9I§ = null;
         }
      }
      
      protected function §@L§() : void
      {
         var sum:int = 0;
         var i:int = 0;
         var start:int = 0;
         if(!this.§^@§)
         {
            sum = 0;
            for(i = 0; i < this.§+!]§.length; i++)
            {
               sum += this.§+!]§[i];
            }
            if(sum % 1000 || int(sum / 1000) != 25)
            {
               this.§^@§ = true;
               GoogleAnalyticsTracker.§,!=§(GoogleAnalyticsTracker.§]@§,LevelManager.§!=§);
            }
         }
         if(this.§4R§)
         {
            for(start = getTimer(); getTimer() - start < 1000; )
            {
            }
         }
      }
      
      protected function §8K§() : void
      {
         var score:int = §-!,§.getScore();
         var scoreVisible:int = this.§,!D§.getValue();
         if(scoreVisible < score && this.§^@§)
         {
            this.§4R§ = true;
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(TutorialPopupManager.isOpen)
         {
            return StateBase.STATE_STATUS_RUNNING;
         }
         if(§4!T§.§1t§.objects.mSardineCanAdded)
         {
            (§^,§.getItemByName("Container_MEScore") as UIContainerRovio).setVisibility(true);
         }
         this.§@L§();
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         this.updateCurrentScore(deltaTime);
         if(this.§,+§ == MIGHTY_EAGLE_BUTTON_VISIBLE && !§4!T§.§1t§.objects.isPigsAlive())
         {
            this.prepareHideMightyEagleButton();
         }
         if((this.§,+§ == MIGHTY_EAGLE_BUTTON_VISIBLE || this.§,+§ == MIGHTY_EAGLE_BUTTON_PREPARE_HIDE) && §4!T§.§1t§.slingshot.mSlingShotState == LevelSlingshot.§[D§)
         {
            this.hideMightyEagleButton();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function prepareHideMightyEagleButton() : void
      {
         this.§,+§ = MIGHTY_EAGLE_BUTTON_PREPARE_HIDE;
      }
      
      protected function hideMightyEagleButton() : void
      {
         trace("Hiding ME");
         (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§,a§);
         (§^,§.getItemByName("Button_MightyEagle") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§9I§ == null)
         {
            this.§9I§ = TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§,+§ = MIGHTY_EAGLE_BUTTON_HIDE;
         this.§9I§.onComplete = this.onHideMightyEagle;
         this.§9I§.play();
      }
      
      protected function onHideMightyEagle() : void
      {
         this.§9I§ = TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§9I§.play();
         this.§,+§ = MIGHTY_EAGLE_BUTTON_HIDE;
      }
      
      override public function getVictoryState() : String
      {
         if(§4!T§.§1t§.objects.mMightyEagleAdded)
         {
            return StateLevelEndEagle.STATE_NAME;
         }
         return StateLevelEndRio.STATE_NAME;
      }
      
      protected function §1!2§() : String
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
               StateLevelLoadClassic.§3`§();
               mNextState = this.§1!2§();
         }
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         if(§4!T§.DEBUG_MODE_ENABLED)
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
                  StateLevelLoadClassic.§3`§();
                  mNextState = StateLevelLoadClassic.STATE_NAME;
                  break;
               case 54:
                  StateLevelLoadClassic.§'8§();
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
               §'!6§.§=!J§();
            }
            else if(eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP)
            {
               §'!6§.§^!]§();
            }
         }
         switch(eventName)
         {
            case "CLOSE_TUTORIAL":
               TutorialPopupManager.§^6§();
               break;
            case "PAUSE":
               mNextState = this.§]!I§();
               break;
            case "RESTART_LEVEL":
               StateLevelLoadClassic.§3`§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "MIGHTY_EAGLE":
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      protected function §]!I§() : String
      {
         return StatePause.STATE_NAME;
      }
      
      protected function useMightyEagle() : void
      {
         §4!T§.§1t§.useMightyEagle();
         var meScore:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§!=§);
         §^,§.setText(meScore.toString() + "%","TextField_MEPercentage");
         this.§4'§ = true;
         this.hideMightyEagleButton();
      }
      
      protected function updateCurrentScore(deltaTime:Number) : void
      {
         this.§8K§();
      }
   }
}
