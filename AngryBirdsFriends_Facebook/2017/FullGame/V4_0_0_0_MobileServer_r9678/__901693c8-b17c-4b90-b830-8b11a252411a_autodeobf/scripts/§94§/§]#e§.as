package §94§
{
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§^!4§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<!b§.§&!i§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §@#§.§^#Q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]#e§ extends §`"z§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const § !o§:String = "ScoreLoopCountChannel";
       
      
      private var §;#F§:§-#C§;
      
      private var §`#Y§:§&!i§;
      
      public var mEagleScoreCounter:Number;
      
      private var §?#+§:Number;
      
      private var §0"_§:int;
      
      public function §]#e§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_LevelEndEagle[0]);
         this.§?#+§ = (§?Q§.getItemByName("MovieClip_EagleMeterFill") as §'=§).width;
         §!#&§.§!"k§(§ !o§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`#Y§ = new §&!i§(0,0,0,0);
         §?Q§.movieClip.addChildAt(this.§`#Y§,§?Q§.movieClip.numChildren - 1);
         (§?Q§.getItemByName("MovieClip_EagleMeterEmpty") as §'=§).setVisibility(true);
         (§?Q§.getItemByName("MovieClip_EagleMeterFill") as §'=§).setVisibility(false);
         §!#&§.playSound("LevelCompletedTheme1");
         this.§`#Y§.§4!>§(0.7);
         var _loc2_:int = §!#A§.§=![§.getEagleScore();
         this.§0"_§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§0"_§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§?Q§.getItemByName("TextField_EaglePercentage") as §^!4§).§[!&§.text = _loc2_ + "%";
         §!#&§.playSound("gamescorescreen_score_count_loop",§ !o§,100);
         this.§;#F§ = §6"w§.§ "D§.§""3§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§;#F§.onComplete = this.onCountComplete;
         this.§;#F§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§>!c§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §!#&§.§4#J§(§ !o§);
         if(this.mEagleScoreCounter == 100)
         {
            §!#&§.playSound("highscore",§ !o§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§?Q§.getItemByName("MovieClip_EagleMeterEffect") as §'=§).setVisibility(true);
            (§?Q§.getItemByName("MovieClip_EagleMeterFill") as §'=§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§?Q§.getItemByName("TextField_EaglePercentage") as §^!4§).§[!&§.text = int(this.mEagleScoreCounter) + "%";
         (§?Q§.getItemByName("TextField_EaglePercentageEffects") as §^!4§).§[!&§.text = int(this.mEagleScoreCounter) + "%";
         if(!§?Q§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §?Q§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§?#+§ * (this.mEagleScoreCounter / 100),(§?Q§.getItemByName("MovieClip_EagleMeterFill") as §'=§).height);
         (§?Q§.getItemByName("MovieClip_EagleMeterFill") as §'=§).mClip.scrollRect = _loc2_;
         (§?Q§.getItemByName("MovieClip_EagleMeterEffect") as §'=§).mClip.rotation = (§?Q§.getItemByName("MovieClip_EagleMeterEffect") as §'=§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §!#A§.§#F§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`#Y§)
         {
            if(§?Q§.movieClip.contains(this.§`#Y§))
            {
               §?Q§.movieClip.removeChild(this.§`#Y§);
            }
            this.§`#Y§.§;!?§();
            this.§`#Y§ = null;
         }
         §!#&§.§4#J§(§ !o§);
         this.mEagleScoreCounter = 0;
         if(this.§;#F§)
         {
            this.§;#F§.stop();
            this.§;#F§ = null;
         }
         (§?Q§.getItemByName("MovieClip_EagleMeterFill") as §'=§).mClip.filters = [];
         (§?Q§.getItemByName("MovieClip_EagleMeterEffect") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("Button_Menu") as §,#w§).setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?Q§.getItemByName("Button_Replay") as §,#w§).setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §5"p§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(§9#P§.STATE_NAME);
               break;
            case "MENU":
               §!#&§.§^!2§();
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §7!c§.STATE_NAME;
      }
   }
}
