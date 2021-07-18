package §<"c§
{
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §3§.§4! §;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §1!#§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndEagleState";
      
      private static const §0,§:String = "ScoreLoopCountChannel";
       
      
      private var §%"O§:§[#R§;
      
      private var §@"r§:§4! §;
      
      public var mEagleScoreCounter:Number;
      
      private var §3§:Number;
      
      private var §>4§:int;
      
      public function §1!#§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelEndEagle[0]);
         this.§3§ = (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).width;
         §?!r§.§,"d§(§0,§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@"r§ = new §4! §(0,0,0,0);
         §@;§.movieClip.addChildAt(this.§@"r§,§@;§.movieClip.numChildren - 1);
         (§@;§.getItemByName("MovieClip_EagleMeterEmpty") as §0"$§).setVisibility(true);
         (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).setVisibility(true);
         §?!r§.§"#_§("LevelCompletedTheme1");
         this.§@"r§.§""a§(0.7);
         var _loc2_:int = §,!q§.§>k§.getEagleScore();
         this.§>4§ = §4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel);
         var _loc3_:* = _loc2_ > this.§>4§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§@;§.getItemByName("TextField_EaglePercentage") as §6!D§).§13§.text = _loc2_ + "%";
         §?!r§.§"#_§("Hiscore_Count",§0,§,100);
         this.§%"O§ = §-#C§.§%!E§.§^!H§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§%"O§.onComplete = this.onCountComplete;
         this.§%"O§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         §4#;§.singleton.dataModel.userProgress.§]"D§(§+!b§.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §?!r§.§9"4§(§0,§);
         if(this.mEagleScoreCounter == 100)
         {
            §?!r§.§"#_§("Hiscore_Badge",§0,§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).setVisibility(true);
            (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§>4§)
         {
            (§@;§.getItemByName("TextField_EaglePercentage") as §6!D§).§13§.text = int(this.mEagleScoreCounter) + "%";
            (§@;§.getItemByName("TextField_EaglePercentageEffects") as §6!D§).§13§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§@;§.getItemByName("TextField_EaglePercentage") as §6!D§).§13§.text = int(this.§>4§) + "%";
            (§@;§.getItemByName("TextField_EaglePercentageEffects") as §6!D§).§13§.text = int(this.§>4§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§3§ * (this.mEagleScoreCounter / 100),(§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).height);
         (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).mClip.scrollRect = _loc2_;
         (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).mClip.rotation = (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §,!q§.§9!,§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@"r§)
         {
            if(§@;§.movieClip.contains(this.§@"r§))
            {
               §@;§.movieClip.removeChild(this.§@"r§);
            }
            this.§@"r§.§%!G§();
            this.§@"r§ = null;
         }
         §?!r§.§9"4§(§0,§);
         this.mEagleScoreCounter = 0;
         if(this.§%"O§)
         {
            this.§%"O§.stop();
            this.§%"O§ = null;
         }
         (§@;§.getItemByName("MovieClip_EagleMeterFill") as §0"$§).mClip.filters = [];
         (§@;§.getItemByName("MovieClip_EagleMeterEffect") as §0"$§).setVisibility(false);
         (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§@;§.getItemByName("Button_NextLevel") as §^"m§).setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'$§();
               § g§(StateCutScene.§^!7§);
               break;
            case "REPLAY":
               § g§(§<2§.§^!7§);
               break;
            case "MENU":
               §?!r§.§0"#§();
               § g§(§+#?§.§^!7§);
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
   }
}
