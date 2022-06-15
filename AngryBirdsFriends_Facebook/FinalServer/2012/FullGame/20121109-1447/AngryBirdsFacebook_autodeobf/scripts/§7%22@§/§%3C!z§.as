package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!A§.;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<!z§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §^e§:String = "ScoreLoopCountChannel";
       
      
      private var §<!J§:§"m§;
      
      private var §-9§:§%1§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §?Z§:Number;
      
      protected var §?!M§:int;
      
      public function §<!z§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelEndEagle[0]);
         this.§?Z§ = (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).width;
         §>!E§.§0I§(§^e§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-9§ = new §%1§(0,0,0,0);
         §6w§.movieClip.addChildAt(this.§-9§,§6w§.movieClip.numChildren - 1);
         §6w§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §6w§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §>!E§.§7N§("LevelCompletedTheme1");
         this.§-9§.§?!,§(0.7);
         var _loc1_:int = §#6§.§'" §.getEagleScore();
         this.§?!M§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§);
         var _loc2_:* = _loc1_ > this.§?!M§;
         if(_loc2_)
         {
            this.saveNewHighScore(_loc1_);
         }
         (§6w§.getItemByName("TextField_EaglePercentage") as §-"E§).§5!=§.text = _loc1_ + "%";
         §>!E§.§7N§("Hiscore_Count",§^e§,100);
         this.§<!J§ = §>!+§.§;"§.§^!K§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§<!J§.onComplete = this.onCountComplete;
         this.§<!J§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§<!,§(LevelManager.§'!O§,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §>!E§.§1!;§(§^e§);
         if(this.mEagleScoreCounter == 100)
         {
            §>!E§.§7N§("Hiscore_Badge",§^e§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).setVisibility(true);
            (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§?!M§)
         {
            (§6w§.getItemByName("TextField_EaglePercentage") as §-"E§).§5!=§.text = int(this.mEagleScoreCounter) + "%";
            (§6w§.getItemByName("TextField_EaglePercentageEffects") as §-"E§).§5!=§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§6w§.getItemByName("TextField_EaglePercentage") as §-"E§).§5!=§.text = int(this.§?!M§) + "%";
            (§6w§.getItemByName("TextField_EaglePercentageEffects") as §-"E§).§5!=§.text = int(this.§?!M§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§?Z§ * (this.mEagleScoreCounter / 100),(§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).height);
         (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).mClip.scrollRect = _loc3_;
         (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).mClip.rotation = (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §#6§.§6!z§.clearLevel();
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§-9§)
         {
            if(§6w§.movieClip.contains(this.§-9§))
            {
               §6w§.movieClip.removeChild(this.§-9§);
            }
            this.§-9§.clean();
            this.§-9§ = null;
         }
         §>!E§.§1!;§(§^e§);
         this.mEagleScoreCounter = 0;
         if(this.§<!J§)
         {
            this.§<!J§.stop();
            this.§<!J§ = null;
         }
         (§6w§.getItemByName("MovieClip_EagleMeterFill") as §7"-§).mClip.filters = [];
         (§6w§.getItemByName("MovieClip_EagleMeterEffect") as §7"-§).setVisibility(false);
         (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6w§.getItemByName("Button_NextLevel") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!!7§.§,L§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               §!!7§.§-V§();
               mNextState = §!!7§.STATE_NAME;
               break;
            case "MENU":
               §>!E§.§&!^§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §8"D§.STATE_NAME;
      }
   }
}
