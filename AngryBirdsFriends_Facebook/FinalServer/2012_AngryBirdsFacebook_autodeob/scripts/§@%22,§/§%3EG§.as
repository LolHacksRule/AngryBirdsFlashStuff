package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§]!<§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §@!4§.§^C§;
   import §`!n§.LevelManager;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>G§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §6!V§:String = "ScoreLoopCountChannel";
       
      
      private var §#"J§:§!"&§;
      
      private var §!F§:§^C§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §6!i§:Number;
      
      protected var §@"F§:int;
      
      public function §>G§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_LevelEndEagle[0]);
         this.§6!i§ = (§2!K§.getItemByName("MovieClip_EagleMeterFill") as §="0§).width;
         §+m§.§9!g§(§6!V§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!F§ = new §^C§(0,0,0,0);
         §2!K§.movieClip.addChildAt(this.§!F§,§2!K§.movieClip.numChildren - 1);
         §2!K§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §2!K§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §+m§.§]!N§("LevelCompletedTheme1");
         this.§!F§.§%"K§(0.7);
         var _loc1_:int = §&2§.§,!x§.getEagleScore();
         this.§@"F§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§`-§);
         var _loc2_:* = _loc1_ > this.§@"F§;
         if(_loc2_)
         {
            this.saveNewHighScore(_loc1_);
         }
         (§2!K§.getItemByName("TextField_EaglePercentage") as §#p§).§`E§.text = _loc1_ + "%";
         §+m§.§]!N§("Hiscore_Count",§6!V§,100);
         this.§#"J§ = §&p§.§1[§.§7!3§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§#"J§.onComplete = this.onCountComplete;
         this.§#"J§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§""C§(LevelManager.§`-§,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §+m§.§5!P§(§6!V§);
         if(this.mEagleScoreCounter == 100)
         {
            §+m§.§]!N§("Hiscore_Badge",§6!V§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§2!K§.getItemByName("MovieClip_EagleMeterEffect") as §="0§).setVisibility(true);
            (§2!K§.getItemByName("MovieClip_EagleMeterFill") as §="0§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§@"F§)
         {
            (§2!K§.getItemByName("TextField_EaglePercentage") as §#p§).§`E§.text = int(this.mEagleScoreCounter) + "%";
            (§2!K§.getItemByName("TextField_EaglePercentageEffects") as §#p§).§`E§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§2!K§.getItemByName("TextField_EaglePercentage") as §#p§).§`E§.text = int(this.§@"F§) + "%";
            (§2!K§.getItemByName("TextField_EaglePercentageEffects") as §#p§).§`E§.text = int(this.§@"F§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§6!i§ * (this.mEagleScoreCounter / 100),(§2!K§.getItemByName("MovieClip_EagleMeterFill") as §="0§).height);
         (§2!K§.getItemByName("MovieClip_EagleMeterFill") as §="0§).mClip.scrollRect = _loc3_;
         (§2!K§.getItemByName("MovieClip_EagleMeterEffect") as §="0§).mClip.rotation = (§2!K§.getItemByName("MovieClip_EagleMeterEffect") as §="0§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §&2§.§],§.clearLevel();
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!F§)
         {
            if(§2!K§.movieClip.contains(this.§!F§))
            {
               §2!K§.movieClip.removeChild(this.§!F§);
            }
            this.§!F§.clean();
            this.§!F§ = null;
         }
         §+m§.§5!P§(§6!V§);
         this.mEagleScoreCounter = 0;
         if(this.§#"J§)
         {
            this.§#"J§.stop();
            this.§#"J§ = null;
         }
         (§2!K§.getItemByName("MovieClip_EagleMeterFill") as §="0§).mClip.filters = [];
         (§2!K§.getItemByName("MovieClip_EagleMeterEffect") as §="0§).setVisibility(false);
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!N§.§7!Z§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               §'!N§.§^R§();
               mNextState = §'!N§.STATE_NAME;
               break;
            case "MENU":
               §+m§.§2!2§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §[2§.STATE_NAME;
      }
   }
}
