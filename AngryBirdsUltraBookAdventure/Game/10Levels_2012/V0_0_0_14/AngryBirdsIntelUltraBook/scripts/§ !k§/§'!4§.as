package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'!4§ extends §+_§
   {
      
      public static const §3F§:String = "LevelEndEagleState";
      
      private static const §5!^§:String = "ScoreLoopCountChannel";
       
      
      private var §"Y§:§4F§;
      
      private var §++§:§9!b§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §=!R§:Number;
      
      protected var §5!R§:int;
      
      public function §'!4§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelEndEagle[0]);
         this.§=!R§ = (§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).width;
         §6!H§.§^!s§(§5!^§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§++§ = new §9!b§(0,0,0,0);
         §`-§.movieClip.addChildAt(this.§++§,§`-§.movieClip.numChildren - 1);
         §`-§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §`-§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §6!H§.playSound("LevelCompletedTheme1");
         this.§++§.§&!f§(0.7);
         var _loc1_:int = §4!]§.§=`§.getEagleScore();
         this.§5!R§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§);
         var _loc2_:* = _loc1_ > this.§5!R§;
         if(_loc2_)
         {
            this.§0!L§(_loc1_);
         }
         (§`-§.getItemByName("TextField_EaglePercentage") as §3!@§).§!!2§.text = _loc1_ + "%";
         §6!H§.playSound("Hiscore_Count",§5!^§,100);
         this.§"Y§ = §5+§.§^Z§.§=!a§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§"Y§.onComplete = this.§]g§;
         this.§"Y§.play();
      }
      
      protected function §0!L§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§#]§(LevelManager.§^!F§,param1);
      }
      
      protected function §]g§() : void
      {
         var _loc1_:GlowFilter = null;
         §6!H§.§1x§(§5!^§);
         if(this.mEagleScoreCounter == 100)
         {
            §6!H§.playSound("Hiscore_Badge",§5!^§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§`-§.getItemByName("MovieClip_EagleMeterEffect") as §&!G§).setVisibility(true);
            (§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§5!R§)
         {
            (§`-§.getItemByName("TextField_EaglePercentage") as §3!@§).§!!2§.text = int(this.mEagleScoreCounter) + "%";
            (§`-§.getItemByName("TextField_EaglePercentageEffects") as §3!@§).§!!2§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§`-§.getItemByName("TextField_EaglePercentage") as §3!@§).§!!2§.text = int(this.§5!R§) + "%";
            (§`-§.getItemByName("TextField_EaglePercentageEffects") as §3!@§).§!!2§.text = int(this.§5!R§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§=!R§ * (this.mEagleScoreCounter / 100),(§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).height);
         (§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).mClip.scrollRect = _loc3_;
         (§`-§.getItemByName("MovieClip_EagleMeterEffect") as §&!G§).mClip.rotation = (§`-§.getItemByName("MovieClip_EagleMeterEffect") as §&!G§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §4!]§.§8C§.clearLevel();
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§++§)
         {
            if(§`-§.movieClip.contains(this.§++§))
            {
               §`-§.movieClip.removeChild(this.§++§);
            }
            this.§++§.clean();
            this.§++§ = null;
         }
         §6!H§.§1x§(§5!^§);
         this.mEagleScoreCounter = 0;
         if(this.§"Y§)
         {
            this.§"Y§.stop();
            this.§"Y§ = null;
         }
         (§`-§.getItemByName("MovieClip_EagleMeterFill") as §&!G§).mClip.filters = [];
         (§`-§.getItemByName("MovieClip_EagleMeterEffect") as §&!G§).setVisibility(false);
         (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §%]§.§]!b§();
               mNextState = StateCutScene.§3F§;
               break;
            case "REPLAY":
               §%]§.§=>§();
               mNextState = §%]§.§3F§;
               break;
            case "MENU":
               §6!H§.§[!W§();
               mNextState = §6!U§.§3F§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
   }
}
