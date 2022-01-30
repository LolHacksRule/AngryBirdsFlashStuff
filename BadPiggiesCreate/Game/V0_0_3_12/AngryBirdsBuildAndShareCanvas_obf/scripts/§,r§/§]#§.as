package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §0E§.§-!F§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §2I§.§,"+§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]#§ extends §,v§
   {
      
      public static const §8n§:String = "LevelEndEagleState";
      
      private static const §@!`§:String = "ScoreLoopCountChannel";
       
      
      private var §]2§:§+I§;
      
      private var §1!<§:§,"+§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §7l§:Number;
      
      protected var §&!p§:int;
      
      public function §]#§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelEndEagle[0]);
         this.§7l§ = (§?F§.getItemByName("MovieClip_EagleMeterFill") as §;!P§).width;
         §^k§.§>7§(§@!`§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1!<§ = new §,"+§(0,0,0,0);
         §?F§.movieClip.addChildAt(this.§1!<§,§?F§.movieClip.numChildren - 1);
         §?F§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §?F§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §^k§.playSound("LevelCompletedTheme1");
         this.§1!<§.§%r§(0.7);
         var _loc1_:int = §%W§.§6h§.getEagleScore();
         this.§&!p§ = AngryBirdsFP11.§`!j§.§<!q§(§-!F§.§"!L§);
         var _loc2_:* = _loc1_ > this.§&!p§;
         if(_loc2_)
         {
            this.§^#§(_loc1_);
         }
         (§?F§.getItemByName("TextField_EaglePercentage") as §6m§).§<"§.text = _loc1_ + "%";
         §^k§.playSound("Hiscore_Count",§@!`§,100);
         this.§]2§ = §-!M§.§ "!§.§+d§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§]2§.onComplete = this.§3V§;
         this.§]2§.play();
      }
      
      protected function §^#§(param1:Number) : void
      {
         AngryBirdsFP11.§`!j§.§95§(§-!F§.§"!L§,param1);
      }
      
      protected function §3V§() : void
      {
         var _loc1_:GlowFilter = null;
         §^k§.§"E§(§@!`§);
         if(this.mEagleScoreCounter == 100)
         {
            §^k§.playSound("Hiscore_Badge",§@!`§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§?F§.getItemByName("MovieClip_EagleMeterEffect") as §;!P§).setVisibility(true);
            (§?F§.getItemByName("MovieClip_EagleMeterFill") as §;!P§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§&!p§)
         {
            (§?F§.getItemByName("TextField_EaglePercentage") as §6m§).§<"§.text = int(this.mEagleScoreCounter) + "%";
            (§?F§.getItemByName("TextField_EaglePercentageEffects") as §6m§).§<"§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§?F§.getItemByName("TextField_EaglePercentage") as §6m§).§<"§.text = int(this.§&!p§) + "%";
            (§?F§.getItemByName("TextField_EaglePercentageEffects") as §6m§).§<"§.text = int(this.§&!p§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§7l§ * (this.mEagleScoreCounter / 100),(§?F§.getItemByName("MovieClip_EagleMeterFill") as §;!P§).height);
         (§?F§.getItemByName("MovieClip_EagleMeterFill") as §;!P§).mClip.scrollRect = _loc3_;
         (§?F§.getItemByName("MovieClip_EagleMeterEffect") as §;!P§).mClip.rotation = (§?F§.getItemByName("MovieClip_EagleMeterEffect") as §;!P§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §%W§.§5"8§.clearLevel();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§1!<§)
         {
            if(§?F§.movieClip.contains(this.§1!<§))
            {
               §?F§.movieClip.removeChild(this.§1!<§);
            }
            this.§1!<§.clean();
            this.§1!<§ = null;
         }
         §^k§.§"E§(§@!`§);
         this.mEagleScoreCounter = 0;
         if(this.§]2§)
         {
            this.§]2§.stop();
            this.§]2§ = null;
         }
         (§?F§.getItemByName("MovieClip_EagleMeterFill") as §;!P§).mClip.filters = [];
         (§?F§.getItemByName("MovieClip_EagleMeterEffect") as §;!P§).setVisibility(false);
         (§?F§.getItemByName("Button_Menu") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!O§.§7!-§();
               mNextState = StateCutScene.§8n§;
               break;
            case "REPLAY":
               §'!O§.§8U§();
               mNextState = §'!O§.§8n§;
               break;
            case "MENU":
               §^k§.§3,§();
               mNextState = this.§>b§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      public function §>b§() : String
      {
         return §+!F§.§8n§;
      }
   }
}
