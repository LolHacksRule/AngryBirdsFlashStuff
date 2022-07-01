package §,i§
{
   import §0!d§.§%!9§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §]!X§.§?7§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?c§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelEndEagleState";
      
      private static const §+k§:String = "ScoreLoopCountChannel";
       
      
      private var §4!F§:§^F§;
      
      private var §`H§:§?7§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §2!J§:Number;
      
      protected var §71§:int;
      
      public function §?c§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelEndEagle[0]);
         this.§2!J§ = (§'K§.getItemByName("MovieClip_EagleMeterFill") as §%!9§).width;
         § !x§.§'^§(§+k§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§`H§ = new §?7§(0,0,0,0);
         §'K§.movieClip.addChildAt(this.§`H§,§'K§.movieClip.numChildren - 1);
         §'K§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §'K§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         § !x§.playSound("LevelCompletedTheme1");
         this.§`H§.§%H§(0.7);
         var _loc1_:int = §"!V§.§ !o§.getEagleScore();
         this.§71§ = AngryBirdsFP11.§<U§.§,[§(§"?§.§4M§);
         var _loc2_:* = _loc1_ > this.§71§;
         if(_loc2_)
         {
            this.§"!,§(_loc1_);
         }
         (§'K§.getItemByName("TextField_EaglePercentage") as §`G§).§?B§.text = _loc1_ + "%";
         § !x§.playSound("Hiscore_Count",§+k§,100);
         this.§4!F§ = §<y§.§,l§.§]!C§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§4!F§.onComplete = this.§4!J§;
         this.§4!F§.play();
      }
      
      protected function §"!,§(param1:Number) : void
      {
         AngryBirdsFP11.§<U§.§0!A§(§"?§.§4M§,param1);
      }
      
      protected function §4!J§() : void
      {
         var _loc1_:GlowFilter = null;
         § !x§.§`"4§(§+k§);
         if(this.mEagleScoreCounter == 100)
         {
            § !x§.playSound("Hiscore_Badge",§+k§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§'K§.getItemByName("MovieClip_EagleMeterEffect") as §%!9§).setVisibility(true);
            (§'K§.getItemByName("MovieClip_EagleMeterFill") as §%!9§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§71§)
         {
            (§'K§.getItemByName("TextField_EaglePercentage") as §`G§).§?B§.text = int(this.mEagleScoreCounter) + "%";
            (§'K§.getItemByName("TextField_EaglePercentageEffects") as §`G§).§?B§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§'K§.getItemByName("TextField_EaglePercentage") as §`G§).§?B§.text = int(this.§71§) + "%";
            (§'K§.getItemByName("TextField_EaglePercentageEffects") as §`G§).§?B§.text = int(this.§71§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§2!J§ * (this.mEagleScoreCounter / 100),(§'K§.getItemByName("MovieClip_EagleMeterFill") as §%!9§).height);
         (§'K§.getItemByName("MovieClip_EagleMeterFill") as §%!9§).mClip.scrollRect = _loc3_;
         (§'K§.getItemByName("MovieClip_EagleMeterEffect") as §%!9§).mClip.rotation = (§'K§.getItemByName("MovieClip_EagleMeterEffect") as §%!9§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §"!V§.§!j§.clearLevel();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`H§)
         {
            if(§'K§.movieClip.contains(this.§`H§))
            {
               §'K§.movieClip.removeChild(this.§`H§);
            }
            this.§`H§.clean();
            this.§`H§ = null;
         }
         § !x§.§`"4§(§+k§);
         this.mEagleScoreCounter = 0;
         if(this.§4!F§)
         {
            this.§4!F§.stop();
            this.§4!F§ = null;
         }
         (§'K§.getItemByName("MovieClip_EagleMeterFill") as §%!9§).mClip.filters = [];
         (§'K§.getItemByName("MovieClip_EagleMeterEffect") as §%!9§).setVisibility(false);
         (§'K§.getItemByName("Button_Menu") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'K§.getItemByName("Button_NextLevel") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §>Y§.§;X§();
               mNextState = StateCutScene.§]"2§;
               break;
            case "REPLAY":
               §>Y§.§"l§();
               mNextState = §>Y§.§]"2§;
               break;
            case "MENU":
               § !x§.§ X§();
               mNextState = this.§<d§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      public function §<d§() : String
      {
         return §6!x§.§]"2§;
      }
   }
}
