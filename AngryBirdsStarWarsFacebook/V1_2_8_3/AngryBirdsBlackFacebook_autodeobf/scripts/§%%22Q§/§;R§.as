package §%"Q§
{
   import §&!j§.§5#+§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9!a§.§&c§;
   import §=Z§.§0%§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §null §.§5#§;
   
   public class §;R§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelEndEagleState";
      
      private static const §2"p§:String = "ScoreLoopCountChannel";
       
      
      private var §,"%§:§%b§;
      
      private var §+"l§:§&c§;
      
      public var mEagleScoreCounter:Number;
      
      private var §;0§:Number;
      
      private var §;z§:int;
      
      public function §;R§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelEndEagle[0]);
         this.§;0§ = (§^!b§.getItemByName("MovieClip_EagleMeterFill") as §9!c§).width;
         §=Q§.§`"u§(§2"p§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§+"l§ = new §&c§(0,0,0,0);
         §^!b§.movieClip.addChildAt(this.§+"l§,§^!b§.movieClip.numChildren - 1);
         (§^!b§.getItemByName("MovieClip_EagleMeterEmpty") as §9!c§).setVisibility(true);
         (§^!b§.getItemByName("MovieClip_EagleMeterFill") as §9!c§).setVisibility(true);
         §=Q§.§`!A§("LevelCompletedTheme1");
         this.§+"l§.§8m§(0.7);
         var _loc2_:int = §<!J§.§]!D§.getEagleScore();
         this.§;z§ = §4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(§'""§.currentLevel);
         var _loc3_:* = _loc2_ > this.§;z§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§^!b§.getItemByName("TextField_EaglePercentage") as §0%§).§9";§.text = _loc2_ + "%";
         §=Q§.§`!A§("Hiscore_Count",§2"p§,100);
         this.§,"%§ = §5!%§.§!6§.§4!M§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§,"%§.onComplete = this.onCountComplete;
         this.§,"%§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         §4"#§.singleton.dataModel.userProgress.§#!C§(§'""§.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §=Q§.§&"=§(§2"p§);
         if(this.mEagleScoreCounter == 100)
         {
            §=Q§.§`!A§("Hiscore_Badge",§2"p§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§^!b§.getItemByName("MovieClip_EagleMeterEffect") as §9!c§).setVisibility(true);
            (§^!b§.getItemByName("MovieClip_EagleMeterFill") as §9!c§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§;z§)
         {
            (§^!b§.getItemByName("TextField_EaglePercentage") as §0%§).§9";§.text = int(this.mEagleScoreCounter) + "%";
            (§^!b§.getItemByName("TextField_EaglePercentageEffects") as §0%§).§9";§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§^!b§.getItemByName("TextField_EaglePercentage") as §0%§).§9";§.text = int(this.§;z§) + "%";
            (§^!b§.getItemByName("TextField_EaglePercentageEffects") as §0%§).§9";§.text = int(this.§;z§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§;0§ * (this.mEagleScoreCounter / 100),(§^!b§.getItemByName("MovieClip_EagleMeterFill") as §9!c§).height);
         (§^!b§.getItemByName("MovieClip_EagleMeterFill") as §9!c§).mClip.scrollRect = _loc2_;
         (§^!b§.getItemByName("MovieClip_EagleMeterEffect") as §9!c§).mClip.rotation = (§^!b§.getItemByName("MovieClip_EagleMeterEffect") as §9!c§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §<!J§.§=!%§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§+"l§)
         {
            if(§^!b§.movieClip.contains(this.§+"l§))
            {
               §^!b§.movieClip.removeChild(this.§+"l§);
            }
            this.§+"l§.§ "!§();
            this.§+"l§ = null;
         }
         §=Q§.§&"=§(§2"p§);
         this.mEagleScoreCounter = 0;
         if(this.§,"%§)
         {
            this.§,"%§.stop();
            this.§,"%§ = null;
         }
         (§^!b§.getItemByName("MovieClip_EagleMeterFill") as §9!c§).mClip.filters = [];
         (§^!b§.getItemByName("MovieClip_EagleMeterEffect") as §9!c§).setVisibility(false);
         (§^!b§.getItemByName("Button_Menu") as §;g§).setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!b§.getItemByName("Button_Replay") as §;g§).setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!b§.getItemByName("Button_NextLevel") as §;g§).setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`"y§();
               §`0§(StateCutScene.§-!U§);
               break;
            case "REPLAY":
               §`0§(§7"9§.§-!U§);
               break;
            case "MENU":
               §=Q§.§!#,§();
               §`0§(§`=§.§-!U§);
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
   }
}
