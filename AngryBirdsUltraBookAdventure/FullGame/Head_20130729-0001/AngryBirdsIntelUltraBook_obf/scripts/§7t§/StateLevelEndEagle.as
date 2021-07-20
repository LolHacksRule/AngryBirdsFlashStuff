package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5!3§.§2!R§;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §6a§.UITextFieldRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class StateLevelEndEagle extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
       
      
      private var §9E§:§?W§;
      
      private var §%!Q§:§2!R§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §&l§:Number;
      
      protected var §]!]§:int;
      
      public function StateLevelEndEagle(initState:Boolean = false, name:String = "LevelEndEagleState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelEndEagle[0]);
         this.§&l§ = (§`=§.getItemByName("MovieClip_EagleMeterFill") as §=D§).width;
         SoundEngine.§ Q§(LOOP_CHANNEL_NAME,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§%!Q§ = new §2!R§(0,0,0,0);
         §`=§.movieClip.addChildAt(this.§%!Q§,§`=§.movieClip.numChildren - 1);
         §`=§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §`=§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         SoundEngine.§-!h§("LevelCompletedTheme1");
         this.§%!Q§.§`!]§(0.7);
         var newEagleScore:int = §`S§.controller.getEagleScore();
         this.§]!]§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§1m§);
         var isNewEagleHighScore:Boolean = newEagleScore > this.§]!]§;
         if(isNewEagleHighScore)
         {
            this.§9G§(newEagleScore);
         }
         (§`=§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§,![§.text = newEagleScore + "%";
         SoundEngine.§-!h§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
         this.§9E§ = TweenManager.§7!E§.§5§(this,{"mEagleScoreCounter":newEagleScore},{"mEagleScoreCounter":0},newEagleScore / 100 * 4);
         this.§9E§.onComplete = this.§8T§;
         this.§9E§.play();
      }
      
      protected function §9G§(newEagleScore:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§3!Z§(LevelManager.§1m§,newEagleScore);
      }
      
      protected function §8T§() : void
      {
         var glowFilter:GlowFilter = null;
         SoundEngine.§]!&§(LOOP_CHANNEL_NAME);
         if(this.mEagleScoreCounter == 100)
         {
            SoundEngine.§-!h§("Hiscore_Badge",LOOP_CHANNEL_NAME);
            glowFilter = new GlowFilter(16777215,1,22,22,2.5,10);
            (§`=§.getItemByName("MovieClip_EagleMeterEffect") as §=D§).setVisibility(true);
            (§`=§.getItemByName("MovieClip_EagleMeterFill") as §=D§).mClip.filters = [glowFilter];
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(int(this.mEagleScoreCounter) > this.§]!]§)
         {
            (§`=§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§,![§.text = int(this.mEagleScoreCounter) + "%";
            (§`=§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§,![§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§`=§.getItemByName("TextField_EaglePercentage") as UITextFieldRovio).§,![§.text = int(this.§]!]§) + "%";
            (§`=§.getItemByName("TextField_EaglePercentageEffects") as UITextFieldRovio).§,![§.text = int(this.§]!]§) + "%";
         }
         var clipRect:Rectangle = new Rectangle(0,0,this.§&l§ * (this.mEagleScoreCounter / 100),(§`=§.getItemByName("MovieClip_EagleMeterFill") as §=D§).height);
         (§`=§.getItemByName("MovieClip_EagleMeterFill") as §=D§).mClip.scrollRect = clipRect;
         (§`=§.getItemByName("MovieClip_EagleMeterEffect") as §=D§).mClip.rotation = (§`=§.getItemByName("MovieClip_EagleMeterEffect") as §=D§).mClip.rotation + deltaTime / 20;
         if(mNextState.length > 0)
         {
            §`S§.§[o§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§%!Q§)
         {
            if(§`=§.movieClip.contains(this.§%!Q§))
            {
               §`=§.movieClip.removeChild(this.§%!Q§);
            }
            this.§%!Q§.clean();
            this.§%!Q§ = null;
         }
         SoundEngine.§]!&§(LOOP_CHANNEL_NAME);
         this.mEagleScoreCounter = 0;
         if(this.§9E§)
         {
            this.§9E§.stop();
            this.§9E§ = null;
         }
         (§`=§.getItemByName("MovieClip_EagleMeterFill") as §=D§).mClip.filters = [];
         (§`=§.getItemByName("MovieClip_EagleMeterEffect") as §=D§).setVisibility(false);
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
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
               StateLevelLoadClassic.§7^§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               StateLevelLoadClassic.§;!8§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "MENU":
               SoundEngine.§%!V§();
               mNextState = StateLevelSelection.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
   }
}
