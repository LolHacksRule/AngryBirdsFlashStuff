package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§-u§;
   import §8]§.§93§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §>g§.§-!H§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"!!§ extends §0H§
   {
      
      public static const §2`§:String = "LevelEndEagleState";
      
      private static const §8Q§:String = "ScoreLoopCountChannel";
       
      
      private var §]!3§:§<Q§;
      
      private var §26§:§-!H§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §<!"§:Number;
      
      protected var §2v§:int;
      
      public function §"!!§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelEndEagle[0]);
         this.§<!"§ = (§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).width;
         §#-§.§[R§(§8Q§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§26§ = new §-!H§(0,0,0,0);
         §<A§.movieClip.addChildAt(this.§26§,§<A§.movieClip.numChildren - 1);
         §<A§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §<A§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §#-§.playSound("LevelCompletedTheme1");
         this.§26§.fadeToAlpha(0.7);
         var _loc1_:int = §[F§.controller.getEagleScore();
         this.§2v§ = AngryBirdsFP11.§ !-§.§,h§(§2h§.§,!P§);
         var _loc2_:* = _loc1_ > this.§2v§;
         if(_loc2_)
         {
            this.§"&§(_loc1_);
         }
         (§<A§.getItemByName("TextField_EaglePercentage") as §?N§).§2W§.text = _loc1_ + "%";
         §#-§.playSound("Hiscore_Count",§8Q§,100);
         this.§]!3§ = §5^§.§<"§.§^g§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§]!3§.onComplete = this.§9!9§;
         this.§]!3§.play();
      }
      
      protected function §"&§(param1:Number) : void
      {
         AngryBirdsFP11.§ !-§.§'!6§(§2h§.§,!P§,param1);
      }
      
      protected function §9!9§() : void
      {
         var _loc1_:GlowFilter = null;
         §#-§.§`s§(§8Q§);
         if(this.mEagleScoreCounter == 100)
         {
            §#-§.playSound("Hiscore_Badge",§8Q§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§<A§.getItemByName("MovieClip_EagleMeterEffect") as §93§).setVisibility(true);
            (§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§2v§)
         {
            (§<A§.getItemByName("TextField_EaglePercentage") as §?N§).§2W§.text = int(this.mEagleScoreCounter) + "%";
            (§<A§.getItemByName("TextField_EaglePercentageEffects") as §?N§).§2W§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§<A§.getItemByName("TextField_EaglePercentage") as §?N§).§2W§.text = int(this.§2v§) + "%";
            (§<A§.getItemByName("TextField_EaglePercentageEffects") as §?N§).§2W§.text = int(this.§2v§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§<!"§ * (this.mEagleScoreCounter / 100),(§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).height);
         (§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).mClip.scrollRect = _loc3_;
         (§<A§.getItemByName("MovieClip_EagleMeterEffect") as §93§).mClip.rotation = (§<A§.getItemByName("MovieClip_EagleMeterEffect") as §93§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §[F§.§9u§.clearLevel();
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§26§)
         {
            if(§<A§.movieClip.contains(this.§26§))
            {
               §<A§.movieClip.removeChild(this.§26§);
            }
            this.§26§.clean();
            this.§26§ = null;
         }
         §#-§.§`s§(§8Q§);
         this.mEagleScoreCounter = 0;
         if(this.§]!3§)
         {
            this.§]!3§.stop();
            this.§]!3§ = null;
         }
         (§<A§.getItemByName("MovieClip_EagleMeterFill") as §93§).mClip.filters = [];
         (§<A§.getItemByName("MovieClip_EagleMeterEffect") as §93§).setVisibility(false);
         (§<A§.getItemByName("Button_Menu") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<A§.getItemByName("Button_Replay") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<A§.getItemByName("Button_NextLevel") as §-u§).setComponentVisualState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#u§.§<k§();
               mNextState = StateCutScene.§2`§;
               break;
            case "REPLAY":
               §#u§.§<q§();
               mNextState = §#u§.§2`§;
               break;
            case "MENU":
               §#-§.§[!>§();
               mNextState = this.§"!"§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      public function §"!"§() : String
      {
         return §6!C§.§2`§;
      }
   }
}
