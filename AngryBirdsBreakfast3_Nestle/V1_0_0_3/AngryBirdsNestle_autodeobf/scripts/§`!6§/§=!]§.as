package §`!6§
{
   import §&!'§.§]S§;
   import §3!!§.§+!F§;
   import §3!!§.§?v§;
   import §3!!§.native;
   import §9![§.§1!i§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §=!]§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelEndEagleState";
      
      private static const §3b§:String = "ScoreLoopCountChannel";
       
      
      private var §8!-§:§]!X§;
      
      private var §1x§:§]S§;
      
      public var mEagleScoreCounter:Number;
      
      private var §',§:Number;
      
      private var §9>§:int;
      
      public function §=!]§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_LevelEndEagle[0]);
         this.§',§ = (§!^§.getItemByName("MovieClip_EagleMeterFill") as §+!F§).width;
         §1!i§.§[=§(§3b§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§1x§ = new §]S§(0,0,0,0);
         §!^§.movieClip.addChildAt(this.§1x§,§!^§.movieClip.numChildren - 1);
         (§!^§.getItemByName("MovieClip_EagleMeterEmpty") as §+!F§).setVisibility(true);
         (§!^§.getItemByName("MovieClip_EagleMeterFill") as §+!F§).setVisibility(true);
         §1!i§.§+!Y§("LevelCompletedTheme1");
         this.§1x§.§3"5§(0.7);
         var _loc2_:int = §4!l§.controller.getEagleScore();
         this.§9>§ = §&N§.§#Y§.§`"$§.userProgress.§%"-§(§^!§.currentLevel);
         var _loc3_:* = _loc2_ > this.§9>§;
         if(_loc3_)
         {
            this.§1#§(_loc2_);
         }
         (§!^§.getItemByName("TextField_EaglePercentage") as native).§&!K§.text = _loc2_ + "%";
         §1!i§.§+!Y§("Hiscore_Count",§3b§,100);
         this.§8!-§ = §`!F§.§=J§.§-r§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§8!-§.onComplete = this.§%!1§;
         this.§8!-§.play();
      }
      
      protected function §1#§(param1:Number) : void
      {
         §&N§.§#Y§.§`"$§.userProgress.§3!§(§^!§.currentLevel,param1);
      }
      
      protected function §%!1§() : void
      {
         var _loc1_:GlowFilter = null;
         §1!i§.§=!3§(§3b§);
         if(this.mEagleScoreCounter == 100)
         {
            §1!i§.§+!Y§("Hiscore_Badge",§3b§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§!^§.getItemByName("MovieClip_EagleMeterEffect") as §+!F§).setVisibility(true);
            (§!^§.getItemByName("MovieClip_EagleMeterFill") as §+!F§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§9>§)
         {
            (§!^§.getItemByName("TextField_EaglePercentage") as native).§&!K§.text = int(this.mEagleScoreCounter) + "%";
            (§!^§.getItemByName("TextField_EaglePercentageEffects") as native).§&!K§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§!^§.getItemByName("TextField_EaglePercentage") as native).§&!K§.text = int(this.§9>§) + "%";
            (§!^§.getItemByName("TextField_EaglePercentageEffects") as native).§&!K§.text = int(this.§9>§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§',§ * (this.mEagleScoreCounter / 100),(§!^§.getItemByName("MovieClip_EagleMeterFill") as §+!F§).height);
         (§!^§.getItemByName("MovieClip_EagleMeterFill") as §+!F§).mClip.scrollRect = _loc2_;
         (§!^§.getItemByName("MovieClip_EagleMeterEffect") as §+!F§).mClip.rotation = (§!^§.getItemByName("MovieClip_EagleMeterEffect") as §+!F§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §4!l§.§,!8§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§1x§)
         {
            if(§!^§.movieClip.contains(this.§1x§))
            {
               §!^§.movieClip.removeChild(this.§1x§);
            }
            this.§1x§.§3!<§();
            this.§1x§ = null;
         }
         §1!i§.§=!3§(§3b§);
         this.mEagleScoreCounter = 0;
         if(this.§8!-§)
         {
            this.§8!-§.stop();
            this.§8!-§ = null;
         }
         (§!^§.getItemByName("MovieClip_EagleMeterFill") as §+!F§).mClip.filters = [];
         (§!^§.getItemByName("MovieClip_EagleMeterEffect") as §+!F§).setVisibility(false);
         (§!^§.getItemByName("Button_Menu") as §?v§).setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!^§.getItemByName("Button_Replay") as §?v§).setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!^§.getItemByName("Button_NextLevel") as §?v§).setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4!g§();
               §8=§(StateCutScene.§]O§);
               break;
            case "REPLAY":
               §8=§(§-%§.§]O§);
               break;
            case "MENU":
               §1!i§.§ !S§();
               §8=§(§?E§.§]O§);
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
   }
}
