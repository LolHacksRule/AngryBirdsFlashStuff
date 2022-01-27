package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§&"$§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3!g§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §^!s§:String = "ScoreLoopCountChannel";
       
      
      private var §'!z§:§5!9§;
      
      private var §&!=§:§&"$§;
      
      public var mEagleScoreCounter:Number;
      
      private var §#!Y§:Number;
      
      private var §^!V§:int;
      
      public function §3!g§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelEndEagle[0]);
         this.§#!Y§ = (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).width;
         §<!O§.§;!D§(§^!s§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§&!=§ = new §&"$§(0,0,0,0);
         §8!A§.movieClip.addChildAt(this.§&!=§,§8!A§.movieClip.numChildren - 1);
         (§8!A§.getItemByName("MovieClip_EagleMeterEmpty") as §,y§).setVisibility(true);
         (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).setVisibility(true);
         §<!O§.playSound("LevelCompletedTheme1");
         this.§&!=§.§7t§(0.7);
         var _loc2_:int = §9q§.§&!$§.getEagleScore();
         this.§^!V§ = § !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel);
         var _loc3_:* = _loc2_ > this.§^!V§;
         if(_loc3_)
         {
            this.§7"#§(_loc2_);
         }
         (§8!A§.getItemByName("TextField_EaglePercentage") as §&!>§).§ !'§.text = _loc2_ + "%";
         §<!O§.playSound("Hiscore_Count",§^!s§,100);
         this.§'!z§ = §!D§.§[!1§.§1"<§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§'!z§.onComplete = this.§;[§;
         this.§'!z§.play();
      }
      
      protected function §7"#§(param1:Number) : void
      {
         § !g§.§;!'§.§&!`§.userProgress.§]I§(§6u§.currentLevel,param1);
      }
      
      protected function §;[§() : void
      {
         var _loc1_:GlowFilter = null;
         §<!O§.§,!z§(§^!s§);
         if(this.mEagleScoreCounter == 100)
         {
            §<!O§.playSound("Hiscore_Badge",§^!s§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).setVisibility(true);
            (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§^!V§)
         {
            (§8!A§.getItemByName("TextField_EaglePercentage") as §&!>§).§ !'§.text = int(this.mEagleScoreCounter) + "%";
            (§8!A§.getItemByName("TextField_EaglePercentageEffects") as §&!>§).§ !'§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§8!A§.getItemByName("TextField_EaglePercentage") as §&!>§).§ !'§.text = int(this.§^!V§) + "%";
            (§8!A§.getItemByName("TextField_EaglePercentageEffects") as §&!>§).§ !'§.text = int(this.§^!V§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§#!Y§ * (this.mEagleScoreCounter / 100),(§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).height);
         (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).mClip.scrollRect = _loc2_;
         (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).mClip.rotation = (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §9q§.§>!L§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§&!=§)
         {
            if(§8!A§.movieClip.contains(this.§&!=§))
            {
               §8!A§.movieClip.removeChild(this.§&!=§);
            }
            this.§&!=§.§;"F§();
            this.§&!=§ = null;
         }
         §<!O§.§,!z§(§^!s§);
         this.mEagleScoreCounter = 0;
         if(this.§'!z§)
         {
            this.§'!z§.stop();
            this.§'!z§ = null;
         }
         (§8!A§.getItemByName("MovieClip_EagleMeterFill") as §,y§).mClip.filters = [];
         (§8!A§.getItemByName("MovieClip_EagleMeterEffect") as §,y§).setVisibility(false);
         (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§8!A§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §?R§();
               §8!^§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §8!^§(§?!#§.STATE_NAME);
               break;
            case "MENU":
               §<!O§.§'N§();
               §8!^§(§]J§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
   }
}
