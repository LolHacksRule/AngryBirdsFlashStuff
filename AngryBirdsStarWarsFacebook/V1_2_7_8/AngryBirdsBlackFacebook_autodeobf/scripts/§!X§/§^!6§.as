package §!X§
{
   import §""d§.§+">§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5",§.§`#+§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §^!6§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelEndEagleState";
      
      private static const §;?§:String = "ScoreLoopCountChannel";
       
      
      private var §9!8§:§4!Q§;
      
      private var §0$§:§`#+§;
      
      public var mEagleScoreCounter:Number;
      
      private var §'^§:Number;
      
      private var §""b§:int;
      
      public function §^!6§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelEndEagle[0]);
         this.§'^§ = (§>I§.getItemByName("MovieClip_EagleMeterFill") as §<`§).width;
         §@§.§"#'§(§;?§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0$§ = new §`#+§(0,0,0,0);
         §>I§.movieClip.addChildAt(this.§0$§,§>I§.movieClip.numChildren - 1);
         (§>I§.getItemByName("MovieClip_EagleMeterEmpty") as §<`§).setVisibility(true);
         (§>I§.getItemByName("MovieClip_EagleMeterFill") as §<`§).setVisibility(true);
         §@§.§=Y§("LevelCompletedTheme1");
         this.§0$§.§'!9§(0.7);
         var _loc2_:int = §;!e§.§%e§.getEagleScore();
         this.§""b§ = §;"@§.singleton.dataModel.userProgress.getEagleScoreForLevel(§ !p§.currentLevel);
         var _loc3_:* = _loc2_ > this.§""b§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§>I§.getItemByName("TextField_EaglePercentage") as §+">§).§?x§.text = _loc2_ + "%";
         §@§.§=Y§("Hiscore_Count",§;?§,100);
         this.§9!8§ = §41§.§-G§.§&#'§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§9!8§.onComplete = this.onCountComplete;
         this.§9!8§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         §;"@§.singleton.dataModel.userProgress.§?"I§(§ !p§.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §@§.§@!D§(§;?§);
         if(this.mEagleScoreCounter == 100)
         {
            §@§.§=Y§("Hiscore_Badge",§;?§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§>I§.getItemByName("MovieClip_EagleMeterEffect") as §<`§).setVisibility(true);
            (§>I§.getItemByName("MovieClip_EagleMeterFill") as §<`§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§""b§)
         {
            (§>I§.getItemByName("TextField_EaglePercentage") as §+">§).§?x§.text = int(this.mEagleScoreCounter) + "%";
            (§>I§.getItemByName("TextField_EaglePercentageEffects") as §+">§).§?x§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§>I§.getItemByName("TextField_EaglePercentage") as §+">§).§?x§.text = int(this.§""b§) + "%";
            (§>I§.getItemByName("TextField_EaglePercentageEffects") as §+">§).§?x§.text = int(this.§""b§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§'^§ * (this.mEagleScoreCounter / 100),(§>I§.getItemByName("MovieClip_EagleMeterFill") as §<`§).height);
         (§>I§.getItemByName("MovieClip_EagleMeterFill") as §<`§).mClip.scrollRect = _loc2_;
         (§>I§.getItemByName("MovieClip_EagleMeterEffect") as §<`§).mClip.rotation = (§>I§.getItemByName("MovieClip_EagleMeterEffect") as §<`§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §;!e§.§<x§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0$§)
         {
            if(§>I§.movieClip.contains(this.§0$§))
            {
               §>I§.movieClip.removeChild(this.§0$§);
            }
            this.§0$§.§;!k§();
            this.§0$§ = null;
         }
         §@§.§@!D§(§;?§);
         this.mEagleScoreCounter = 0;
         if(this.§9!8§)
         {
            this.§9!8§.stop();
            this.§9!8§ = null;
         }
         (§>I§.getItemByName("MovieClip_EagleMeterFill") as §<`§).mClip.filters = [];
         (§>I§.getItemByName("MovieClip_EagleMeterEffect") as §<`§).setVisibility(false);
         (§>I§.getItemByName("Button_Menu") as §2"8§).setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>I§.getItemByName("Button_Replay") as §2"8§).setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>I§.getItemByName("Button_NextLevel") as §2"8§).setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § !Y§();
               §0"B§(StateCutScene.§'#2§);
               break;
            case "REPLAY":
               §0"B§(§>!I§.§'#2§);
               break;
            case "MENU":
               §@§.§+A§();
               §0"B§(§,"p§.§'#2§);
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
   }
}
