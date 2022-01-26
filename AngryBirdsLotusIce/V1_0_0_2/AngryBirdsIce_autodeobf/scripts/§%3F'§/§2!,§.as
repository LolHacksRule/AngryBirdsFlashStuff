package §?'§
{
   import §"o§.§ M§;
   import §%S§.§7g§;
   import §7!4§.§!U§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §9A§.§&X§;
   import §;f§.§&#§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §@!%§.§+8§;
   import §`<§.§,!6§;
   import §in§.§%K§;
   import §try§.§7!0§;
   import §try§.§9Q§;
   
   public class §2!,§ extends StatePlay
   {
      
      private static const §&!,§:Number = -5 * 1000;
      
      private static const §;!!§:Number = 10 * 1000;
       
      
      private var §2o§:int = 0;
      
      private var §>0§:Number = -5000.0;
      
      private var §>]§:int = 0;
      
      private var §]!#§:Number = 0;
      
      private var §&!E§:Number = 0;
      
      public function §2!,§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§2o§ = param2;
      }
      
      override protected function getGameLogicController(param1:§ M§) : §!U§
      {
         return new §&X§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §7!0§.§?z§(§9Q§.§[P§,§&#§.§<Y§);
      }
      
      override public function init() : void
      {
         §7V§ = true;
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§8!2§();
         var _loc1_:§^o§ = §&#§.§@y§(§&#§.§<Y§);
         this.§2o§ = AngryBirdsFP11.§[l§.§?p§(§&#§.§<Y§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§-q§();
            if(§8[§.§import§.slingshot)
            {
               _loc2_ += §8[§.§import§.slingshot.§72§();
            }
            this.§2o§ = Math.min(this.§2o§,_loc2_);
         }
         §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§"]§());
         if(this.§2o§ > 0)
         {
            §<o§.getItemByName("Container_HiscoreContainer").setVisibility(true);
            §<o§.getItemByName("Container_LevelscoreContainer").y = §<o§.getItemByName("Container_HiscoreContainer").y + 27;
            (§<o§.getItemByName("TextField_HighScore") as §7g§).setText(this.§2o§.toString());
         }
         else
         {
            §<o§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §<o§.getItemByName("Container_LevelscoreContainer").y = §<o§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<Z§();
         this.§8!2§();
      }
      
      private function §<Z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§>0§ > §;!!§)
         {
            _loc1_ = Math.round(1000 / this.§>0§ * this.§>]§);
            _loc2_ = §&#§.§<Y§;
            §7!0§.§1S§(_loc1_,_loc2_,§+8§.§-]§);
         }
      }
      
      private function §?!=§(param1:Number) : void
      {
         this.§>0§ += param1;
         if(this.§>0§ > 0)
         {
            ++this.§>]§;
         }
         if(this.§]!#§ != §8[§.§2s§() || this.§&!E§ != §8[§.§'!F§())
         {
            this.§8!2§();
         }
      }
      
      private function §8!2§() : void
      {
         this.§>0§ = §&!,§;
         this.§>]§ = 0;
         this.§]!#§ = §8[§.§2s§();
         this.§&!E§ = §8[§.§'!F§();
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var _loc1_:String = §&#§.§<Y§;
         var _loc2_:int = §"!8§.getScore();
         §7!0§.§?z§(§9Q§.§;t§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "PAUSE":
               mNextState = §#!F§();
               break;
            case "REPLAY":
               §`0§.§#T§();
               mNextState = §`0§.§`%§;
               break;
            case "ZOOM_IN":
               §"!8§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §"!8§.doUserZoom(false);
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§"]§();
               AngryBirdsFP11.§2t§(_loc4_);
               §<o§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §"!8§.getScore();
         var _loc3_:int = §>g§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§>g§.getValue() + param1 * §5+§);
            §>g§.assign(_loc3_);
         }
         (§<o§.getItemByName("TextField_CurrentScore") as §7g§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§?!=§(param1);
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
   }
}
