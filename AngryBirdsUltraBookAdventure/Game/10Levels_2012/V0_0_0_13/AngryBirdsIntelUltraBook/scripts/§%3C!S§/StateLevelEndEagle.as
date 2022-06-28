package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UITextFieldRovio;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class StateLevelEndEagle extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
       
      
      private var §`!!§:§!T§;
      
      private var § !A§:§!!8§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §6!T§:Number;
      
      protected var §true§:int;
      
      public function StateLevelEndEagle(initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelEndEagle[0]);
         this.§6!T§ = (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).width;
         SoundEngine.§#!`§(LOOP_CHANNEL_NAME,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ !A§ = new §!!8§(0,0,0,0);
         §5!M§.movieClip.addChildAt(this.§ !A§,§5!M§.movieClip.numChildren - 1);
         §5!M§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §5!M§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         SoundEngine.§9!X§("LevelCompletedTheme1");
         this.§ !A§.§6k§(0.7);
         var newEagleScore:int = §]!B§.controller.getEagleScore();
         this.§true§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§var§);
         var isNewEagleHighScore:Boolean = newEagleScore > this.§true§;
         if(isNewEagleHighScore)
         {
            this.§3c§(newEagleScore);
         }
         (§5!M§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§24§.text = newEagleScore + "%";
         SoundEngine.§9!X§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
         this.§`!!§ = TweenManager.§8!X§.§8m§(this,{"mEagleScoreCounter":newEagleScore},{"mEagleScoreCounter":0},newEagleScore / 100 * 4);
         this.§`!!§.onComplete = this.§4S§;
         this.§`!!§.play();
      }
      
      protected function §3c§(newEagleScore:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§&t§(LevelManager.§var§,newEagleScore);
      }
      
      protected function §4S§() : void
      {
         var glowFilter:GlowFilter = null;
         SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
         if(this.mEagleScoreCounter == 100)
         {
            SoundEngine.§9!X§("Hiscore_Badge",LOOP_CHANNEL_NAME);
            glowFilter = new GlowFilter(16777215,1,22,22,2.5,10);
            (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).setVisibility(true);
            (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).mClip.filters = [glowFilter];
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(int(this.mEagleScoreCounter) > this.§true§)
         {
            (§5!M§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§24§.text = int(this.mEagleScoreCounter) + "%";
            (§5!M§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§24§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§5!M§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§24§.text = int(this.§true§) + "%";
            (§5!M§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§24§.text = int(this.§true§) + "%";
         }
         var clipRect:Rectangle = new Rectangle(0,0,this.§6!T§ * (this.mEagleScoreCounter / 100),(§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).height);
         (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).mClip.scrollRect = clipRect;
         (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).mClip.rotation = (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).mClip.rotation + deltaTime / 20;
         if(mNextState.length > 0)
         {
            §]!B§.§>F§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§ !A§)
         {
            if(§5!M§.movieClip.contains(this.§ !A§))
            {
               §5!M§.movieClip.removeChild(this.§ !A§);
            }
            this.§ !A§.clean();
            this.§ !A§ = null;
         }
         SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
         this.mEagleScoreCounter = 0;
         if(this.§`!!§)
         {
            this.§`!!§.stop();
            this.§`!!§ = null;
         }
         (§5!M§.getItemByName("MovieClip_EagleMeterFill") as §6#§).mClip.filters = [];
         (§5!M§.getItemByName("MovieClip_EagleMeterEffect") as §6#§).setVisibility(false);
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
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
               StateLevelLoadClassic.§[!6§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               StateLevelLoadClassic.§7!R§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "MENU":
               SoundEngine.§;!8§();
               mNextState = StateLevelSelection.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
   }
}
