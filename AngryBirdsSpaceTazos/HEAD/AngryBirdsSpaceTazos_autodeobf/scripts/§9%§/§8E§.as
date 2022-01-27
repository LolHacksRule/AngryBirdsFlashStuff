package §9%§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1!k§.§2!^§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§'!j§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §8E§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §5a§:String = "ScoreLoopCountChannel";
       
      
      private var §[K§:§,4§;
      
      private var §'!<§:§2!^§;
      
      public var mEagleScoreCounter:Number;
      
      private var §=!!§:Number;
      
      private var §8d§:int;
      
      public function §8E§(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelEndEagle[0]);
         this.§=!!§ = (§%!A§.getItemByName("MovieClip_EagleMeterFill") as §'!j§).width;
         §<5§.§@6§(§5a§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'!<§ = new §2!^§(0,0,0,0);
         §%!A§.movieClip.addChildAt(this.§'!<§,§%!A§.movieClip.numChildren - 1);
         (§%!A§.getItemByName("MovieClip_EagleMeterEmpty") as §'!j§).setVisibility(true);
         (§%!A§.getItemByName("MovieClip_EagleMeterFill") as §'!j§).setVisibility(true);
         §<5§.playSound("LevelCompletedTheme1");
         this.§'!<§.§[!1§(0.7);
         var _loc2_:int = §8k§.§0!Q§.getEagleScore();
         this.§8d§ = §2&§.§6o§.§2c§.userProgress.§`!P§(§#"=§.currentLevel);
         var _loc3_:* = _loc2_ > this.§8d§;
         if(_loc3_)
         {
            this.§8"6§(_loc2_);
         }
         (§%!A§.getItemByName("TextField_EaglePercentage") as §#`§).§';§.text = _loc2_ + "%";
         §<5§.playSound("Hiscore_Count",§5a§,100);
         this.§[K§ = §"!t§.§3R§.§2m§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§[K§.onComplete = this.§1!D§;
         this.§[K§.play();
      }
      
      protected function §8"6§(param1:Number) : void
      {
         §2&§.§6o§.§2c§.userProgress.§<C§(§#"=§.currentLevel,param1);
      }
      
      protected function §1!D§() : void
      {
         var _loc1_:GlowFilter = null;
         §<5§.§["'§(§5a§);
         if(this.mEagleScoreCounter == 100)
         {
            §<5§.playSound("Hiscore_Badge",§5a§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§%!A§.getItemByName("MovieClip_EagleMeterEffect") as §'!j§).setVisibility(true);
            (§%!A§.getItemByName("MovieClip_EagleMeterFill") as §'!j§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§8d§)
         {
            (§%!A§.getItemByName("TextField_EaglePercentage") as §#`§).§';§.text = int(this.mEagleScoreCounter) + "%";
            (§%!A§.getItemByName("TextField_EaglePercentageEffects") as §#`§).§';§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§%!A§.getItemByName("TextField_EaglePercentage") as §#`§).§';§.text = int(this.§8d§) + "%";
            (§%!A§.getItemByName("TextField_EaglePercentageEffects") as §#`§).§';§.text = int(this.§8d§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§=!!§ * (this.mEagleScoreCounter / 100),(§%!A§.getItemByName("MovieClip_EagleMeterFill") as §'!j§).height);
         (§%!A§.getItemByName("MovieClip_EagleMeterFill") as §'!j§).mClip.scrollRect = _loc2_;
         (§%!A§.getItemByName("MovieClip_EagleMeterEffect") as §'!j§).mClip.rotation = (§%!A§.getItemByName("MovieClip_EagleMeterEffect") as §'!j§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §8k§.§;!]§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§'!<§)
         {
            if(§%!A§.movieClip.contains(this.§'!<§))
            {
               §%!A§.movieClip.removeChild(this.§'!<§);
            }
            this.§'!<§.§&"#§();
            this.§'!<§ = null;
         }
         §<5§.§["'§(§5a§);
         this.mEagleScoreCounter = 0;
         if(this.§[K§)
         {
            this.§[K§.stop();
            this.§[K§ = null;
         }
         (§%!A§.getItemByName("MovieClip_EagleMeterFill") as §'!j§).mClip.filters = [];
         (§%!A§.getItemByName("MovieClip_EagleMeterEffect") as §'!j§).setVisibility(false);
         (§%!A§.getItemByName("Button_Menu") as §87§).setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%!A§.getItemByName("Button_Replay") as §87§).setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%!A§.getItemByName("Button_NextLevel") as §87§).setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §7!&§();
               § !I§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               § !I§(§^! §.STATE_NAME);
               break;
            case "MENU":
               §<5§.§>!R§();
               § !I§(§ §.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
   }
}
