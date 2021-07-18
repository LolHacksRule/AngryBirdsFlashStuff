package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §4!9§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndEagleState";
      
      private static const §>!x§:String = "ScoreLoopCountChannel";
       
      
      private var §'-§:§0]§;
      
      private var §7!k§:§,!e§;
      
      public var mEagleScoreCounter:Number;
      
      private var §&3§:Number;
      
      private var §`?§:int;
      
      public function §4!9§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_LevelEndEagle[0]);
         this.§&3§ = (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).width;
         §'!c§.§8G§(§>!x§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7!k§ = new §,!e§(0,0,0,0);
         §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
         (§?P§.getItemByName("MovieClip_EagleMeterEmpty") as §6n§).setVisibility(true);
         (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).setVisibility(true);
         §'!c§.§3!f§("LevelCompletedTheme1");
         this.§7!k§.§=v§(0.7);
         var _loc2_:int = §&!"§.controller.getEagleScore();
         this.§`?§ = §6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel);
         var _loc3_:* = _loc2_ > this.§`?§;
         if(_loc3_)
         {
            this.§#$§(_loc2_);
         }
         (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = _loc2_ + "%";
         §'!c§.§3!f§("Hiscore_Count",§>!x§,100);
         this.§'-§ = §'^§.§2Z§.§!!f§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§'-§.onComplete = this.§62§;
         this.§'-§.play();
      }
      
      protected function §#$§(param1:Number) : void
      {
         §6!!§.singleton.§<!S§.userProgress.§!3§(§&" §.currentLevel,param1);
      }
      
      protected function §62§() : void
      {
         var _loc1_:GlowFilter = null;
         §'!c§.§;! §(§>!x§);
         if(this.mEagleScoreCounter == 100)
         {
            §'!c§.§3!f§("Hiscore_Badge",§>!x§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).setVisibility(true);
            (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§`?§)
         {
            (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = int(this.mEagleScoreCounter) + "%";
            (§?P§.getItemByName("TextField_EaglePercentageEffects") as §+!@§).§"v§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§?P§.getItemByName("TextField_EaglePercentage") as §+!@§).§"v§.text = int(this.§`?§) + "%";
            (§?P§.getItemByName("TextField_EaglePercentageEffects") as §+!@§).§"v§.text = int(this.§`?§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§&3§ * (this.mEagleScoreCounter / 100),(§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).height);
         (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.scrollRect = _loc2_;
         (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).mClip.rotation = (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §&!"§.§1!D§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§7!k§)
         {
            if(§?P§.movieClip.contains(this.§7!k§))
            {
               §?P§.movieClip.removeChild(this.§7!k§);
            }
            this.§7!k§.§9O§();
            this.§7!k§ = null;
         }
         §'!c§.§;! §(§>!x§);
         this.mEagleScoreCounter = 0;
         if(this.§'-§)
         {
            this.§'-§.stop();
            this.§'-§ = null;
         }
         (§?P§.getItemByName("MovieClip_EagleMeterFill") as §6n§).mClip.filters = [];
         (§?P§.getItemByName("MovieClip_EagleMeterEffect") as §6n§).setVisibility(false);
         (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!x§();
               §<f§(StateCutScene.§-!q§);
               break;
            case "REPLAY":
               §<f§(§[j§.§-!q§);
               break;
            case "MENU":
               §'!c§.§&j§();
               §<f§(§+A§.§-!q§);
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
   }
}
