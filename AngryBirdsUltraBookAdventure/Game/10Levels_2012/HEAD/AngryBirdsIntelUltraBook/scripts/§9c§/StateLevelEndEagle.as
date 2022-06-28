package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class StateLevelEndEagle extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
       
      
      private var §!9§:§9h§;
      
      private var §@!A§:§5!9§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §`n§:Number;
      
      protected var § L§:int;
      
      public function StateLevelEndEagle(initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelEndEagle[0]);
         this.§`n§ = (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).width;
         SoundEngine.§"!"§(LOOP_CHANNEL_NAME,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@!A§ = new §5!9§(0,0,0,0);
         §^,§.movieClip.addChildAt(this.§@!A§,§^,§.movieClip.numChildren - 1);
         §^,§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §^,§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         SoundEngine.§`B§("LevelCompletedTheme1");
         this.§@!A§.§89§(0.7);
         var newEagleScore:int = §4!T§.controller.getEagleScore();
         this.§ L§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§!=§);
         var isNewEagleHighScore:Boolean = newEagleScore > this.§ L§;
         if(isNewEagleHighScore)
         {
            this.§'!P§(newEagleScore);
         }
         (§^,§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§ ^§.text = newEagleScore + "%";
         SoundEngine.§`B§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
         this.§!9§ = TweenManager.§&!'§.§3L§(this,{"mEagleScoreCounter":newEagleScore},{"mEagleScoreCounter":0},newEagleScore / 100 * 4);
         this.§!9§.onComplete = this.§1!e§;
         this.§!9§.play();
      }
      
      protected function §'!P§(newEagleScore:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§;!+§(LevelManager.§!=§,newEagleScore);
      }
      
      protected function §1!e§() : void
      {
         var glowFilter:GlowFilter = null;
         SoundEngine.§5v§(LOOP_CHANNEL_NAME);
         if(this.mEagleScoreCounter == 100)
         {
            SoundEngine.§`B§("Hiscore_Badge",LOOP_CHANNEL_NAME);
            glowFilter = new GlowFilter(16777215,1,22,22,2.5,10);
            (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).setVisibility(true);
            (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).mClip.filters = [glowFilter];
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(int(this.mEagleScoreCounter) > this.§ L§)
         {
            (§^,§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§ ^§.text = int(this.mEagleScoreCounter) + "%";
            (§^,§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§ ^§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§^,§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§ ^§.text = int(this.§ L§) + "%";
            (§^,§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§ ^§.text = int(this.§ L§) + "%";
         }
         var clipRect:Rectangle = new Rectangle(0,0,this.§`n§ * (this.mEagleScoreCounter / 100),(§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).height);
         (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).mClip.scrollRect = clipRect;
         (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).mClip.rotation = (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).mClip.rotation + deltaTime / 20;
         if(mNextState.length > 0)
         {
            §4!T§.§1t§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@!A§)
         {
            if(§^,§.movieClip.contains(this.§@!A§))
            {
               §^,§.movieClip.removeChild(this.§@!A§);
            }
            this.§@!A§.clean();
            this.§@!A§ = null;
         }
         SoundEngine.§5v§(LOOP_CHANNEL_NAME);
         this.mEagleScoreCounter = 0;
         if(this.§!9§)
         {
            this.§!9§.stop();
            this.§!9§ = null;
         }
         (§^,§.getItemByName("MovieClip_EagleMeterFill") as §+,§).mClip.filters = [];
         (§^,§.getItemByName("MovieClip_EagleMeterEffect") as §+,§).setVisibility(false);
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "NEXT_LEVEL":
               StateLevelLoadClassic.§'8§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               StateLevelLoadClassic.§3`§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "MENU":
               SoundEngine.§=O§();
               mNextState = StateLevelSelection.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
   }
}
