package §7!c§
{
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §!i§.§^!d§;
   import §"!>§.§<!o§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §]!O§.§^!j§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §;!r§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §'!k§:String = "ScoreLoopCountChannel";
       
      
      private var §%§:§8"+§;
      
      private var §0"#§:§^!j§;
      
      public var mEagleScoreCounter:Number;
      
      private var §?D§:Number;
      
      private var §+" §:int;
      
      public function §;!r§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelEndEagle[0]);
         this.§?D§ = (§4§.getItemByName("MovieClip_EagleMeterFill") as §^!d§).width;
         §"!S§.§4+§(§'!k§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0"#§ = new §^!j§(0,0,0,0);
         §4§.movieClip.addChildAt(this.§0"#§,§4§.movieClip.numChildren - 1);
         (§4§.getItemByName("MovieClip_EagleMeterEmpty") as §^!d§).setVisibility(true);
         (§4§.getItemByName("MovieClip_EagleMeterFill") as §^!d§).setVisibility(true);
         §"!S§.playSound("LevelCompletedTheme1");
         this.§0"#§.§#A§(0.7);
         var _loc2_:int = §;0§.§%O§.getEagleScore();
         this.§+" § = §&!h§.§ u§.§-!V§.userProgress.§-A§(§,W§.currentLevel);
         var _loc3_:* = _loc2_ > this.§+" §;
         if(_loc3_)
         {
            this.§]!+§(_loc2_);
         }
         (§4§.getItemByName("TextField_EaglePercentage") as §?"%§).§8!o§.text = _loc2_ + "%";
         §"!S§.playSound("Hiscore_Count",§'!k§,100);
         this.§%§ = §<K§.§<"B§.§`!c§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§%§.onComplete = this.§1!a§;
         this.§%§.play();
      }
      
      protected function §]!+§(param1:Number) : void
      {
         §&!h§.§ u§.§-!V§.userProgress.§-"6§(§,W§.currentLevel,param1);
      }
      
      protected function §1!a§() : void
      {
         var _loc1_:GlowFilter = null;
         §"!S§.§]R§(§'!k§);
         if(this.mEagleScoreCounter == 100)
         {
            §"!S§.playSound("Hiscore_Badge",§'!k§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§4§.getItemByName("MovieClip_EagleMeterEffect") as §^!d§).setVisibility(true);
            (§4§.getItemByName("MovieClip_EagleMeterFill") as §^!d§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§+" §)
         {
            (§4§.getItemByName("TextField_EaglePercentage") as §?"%§).§8!o§.text = int(this.mEagleScoreCounter) + "%";
            (§4§.getItemByName("TextField_EaglePercentageEffects") as §?"%§).§8!o§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§4§.getItemByName("TextField_EaglePercentage") as §?"%§).§8!o§.text = int(this.§+" §) + "%";
            (§4§.getItemByName("TextField_EaglePercentageEffects") as §?"%§).§8!o§.text = int(this.§+" §) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§?D§ * (this.mEagleScoreCounter / 100),(§4§.getItemByName("MovieClip_EagleMeterFill") as §^!d§).height);
         (§4§.getItemByName("MovieClip_EagleMeterFill") as §^!d§).mClip.scrollRect = _loc2_;
         (§4§.getItemByName("MovieClip_EagleMeterEffect") as §^!d§).mClip.rotation = (§4§.getItemByName("MovieClip_EagleMeterEffect") as §^!d§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §;0§.§@!^§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0"#§)
         {
            if(§4§.movieClip.contains(this.§0"#§))
            {
               §4§.movieClip.removeChild(this.§0"#§);
            }
            this.§0"#§.§#!O§();
            this.§0"#§ = null;
         }
         §"!S§.§]R§(§'!k§);
         this.mEagleScoreCounter = 0;
         if(this.§%§)
         {
            this.§%§.stop();
            this.§%§ = null;
         }
         (§4§.getItemByName("MovieClip_EagleMeterFill") as §^!d§).mClip.filters = [];
         (§4§.getItemByName("MovieClip_EagleMeterEffect") as §^!d§).setVisibility(false);
         (§4§.getItemByName("Button_Menu") as §3!A§).setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4§.getItemByName("Button_Replay") as §3!A§).setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4§.getItemByName("Button_NextLevel") as §3!A§).setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0" §();
               §2g§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §2g§(§"!H§.STATE_NAME);
               break;
            case "MENU":
               §"!S§.§#9§();
               §2g§(§!!Q§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
   }
}
