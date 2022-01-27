package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §7!!§.§,c§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§=<§;
   import §=!H§.§[R§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class § $§ extends §!L§
   {
      
      public static const §"Z§:String = "LevelEndEagleState";
      
      private static const §&o§:String = "ScoreLoopCountChannel";
       
      
      private var §1K§:§ !4§;
      
      private var §=]§:§,c§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §-!5§:Number;
      
      protected var §+!'§:int;
      
      public function § $§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelEndEagle[0]);
         this.§-!5§ = (§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).width;
         §3V§.§?L§(§&o§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=]§ = new §,c§(0,0,0,0);
         §>2§.movieClip.addChildAt(this.§=]§,§>2§.movieClip.numChildren - 1);
         §>2§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §>2§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §3V§.playSound("LevelCompletedTheme1");
         this.§=]§.fadeToAlpha(0.7);
         var _loc1_:int = §5!+§.controller.getEagleScore();
         this.§+!'§ = AngryBirdsFP11.§^O§.§#!@§(§6H§.§"Q§);
         var _loc2_:* = _loc1_ > this.§+!'§;
         if(_loc2_)
         {
            this.§;!I§(_loc1_);
         }
         (§>2§.getItemByName("TextField_EaglePercentage") as §`S§).§'Z§.text = _loc1_ + "%";
         §3V§.playSound("Hiscore_Count",§&o§,100);
         this.§1K§ = §49§.§&y§.§=!3§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§1K§.onComplete = this.§]!P§;
         this.§1K§.play();
      }
      
      protected function §;!I§(param1:Number) : void
      {
         AngryBirdsFP11.§^O§.§4`§(§6H§.§"Q§,param1);
      }
      
      protected function §]!P§() : void
      {
         var _loc1_:GlowFilter = null;
         §3V§.§5!A§(§&o§);
         if(this.mEagleScoreCounter == 100)
         {
            §3V§.playSound("Hiscore_Badge",§&o§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§>2§.getItemByName("MovieClip_EagleMeterEffect") as §[R§).setVisibility(true);
            (§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§+!'§)
         {
            (§>2§.getItemByName("TextField_EaglePercentage") as §`S§).§'Z§.text = int(this.mEagleScoreCounter) + "%";
            (§>2§.getItemByName("TextField_EaglePercentageEffects") as §`S§).§'Z§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§>2§.getItemByName("TextField_EaglePercentage") as §`S§).§'Z§.text = int(this.§+!'§) + "%";
            (§>2§.getItemByName("TextField_EaglePercentageEffects") as §`S§).§'Z§.text = int(this.§+!'§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§-!5§ * (this.mEagleScoreCounter / 100),(§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).height);
         (§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).mClip.scrollRect = _loc3_;
         (§>2§.getItemByName("MovieClip_EagleMeterEffect") as §[R§).mClip.rotation = (§>2§.getItemByName("MovieClip_EagleMeterEffect") as §[R§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §5!+§.§6!§.clearLevel();
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§=]§)
         {
            if(§>2§.movieClip.contains(this.§=]§))
            {
               §>2§.movieClip.removeChild(this.§=]§);
            }
            this.§=]§.clean();
            this.§=]§ = null;
         }
         §3V§.§5!A§(§&o§);
         this.mEagleScoreCounter = 0;
         if(this.§1K§)
         {
            this.§1K§.stop();
            this.§1K§ = null;
         }
         (§>2§.getItemByName("MovieClip_EagleMeterFill") as §[R§).mClip.filters = [];
         (§>2§.getItemByName("MovieClip_EagleMeterEffect") as §[R§).setVisibility(false);
         (§>2§.getItemByName("Button_Menu") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>2§.getItemByName("Button_Replay") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§>2§.getItemByName("Button_NextLevel") as §=<§).setComponentVisualState(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8^§.§&!O§();
               mNextState = StateCutScene.§"Z§;
               break;
            case "REPLAY":
               §8^§.§1!"§();
               mNextState = §8^§.§"Z§;
               break;
            case "MENU":
               §3V§.§0x§();
               mNextState = this.§&!$§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      public function §&!$§() : String
      {
         return §!!6§.§"Z§;
      }
   }
}
