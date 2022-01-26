package § C§
{
   import §!F§.§#T§;
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §0!!§.§,!@§;
   import §0!!§.§46§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §[v§.§'4§;
   import §[x§.§2^§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §var §.§<;§;
   
   public class §6]§ extends StatePlay
   {
      
      private static const §,@§:Number = -5 * 1000;
      
      private static const §5l§:Number = 10 * 1000;
       
      
      private var §1T§:int = 0;
      
      private var §=y§:Number = -5000.0;
      
      private var § $§:int = 0;
      
      private var §5L§:Number = 0;
      
      private var §`!A§:Number = 0;
      
      public function §6]§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§1T§ = param2;
      }
      
      override protected function getGameLogicController(param1:§2^§) : §#T§
      {
         return new §<;§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §46§.§3!7§(§,!@§.§<K§,§0$§.§[C§);
      }
      
      override public function init() : void
      {
         §@!9§ = true;
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§0L§();
         var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
         this.§1T§ = AngryBirdsFP11.§64§.§5!4§(§0$§.§[C§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§%!%§();
            if(§[o§.§='§.slingshot)
            {
               _loc2_ += §[o§.§='§.slingshot.§1!5§();
            }
            this.§1T§ = Math.min(this.§1T§,_loc2_);
         }
         §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
         if(this.§1T§ > 0)
         {
            §,R§.getItemByName("Container_HiscoreContainer").setVisibility(true);
            §,R§.getItemByName("Container_LevelscoreContainer").y = §,R§.getItemByName("Container_HiscoreContainer").y + 27;
            (§,R§.getItemByName("TextField_HighScore") as §'4§).setText(this.§1T§.toString());
         }
         else
         {
            §,R§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §,R§.getItemByName("Container_LevelscoreContainer").y = §,R§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?k§();
         this.§0L§();
      }
      
      private function §?k§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§=y§ > §5l§)
         {
            _loc1_ = Math.round(1000 / this.§=y§ * this.§ $§);
            _loc2_ = §0$§.§[C§;
            §46§.§!m§(_loc1_,_loc2_,§?h§.§7"§);
         }
      }
      
      private function §>@§(param1:Number) : void
      {
         this.§=y§ += param1;
         if(this.§=y§ > 0)
         {
            ++this.§ $§;
         }
         if(this.§5L§ != §[o§.§#%§() || this.§`!A§ != §[o§.§=!&§())
         {
            this.§0L§();
         }
      }
      
      private function §0L§() : void
      {
         this.§=y§ = §,@§;
         this.§ $§ = 0;
         this.§5L§ = §[o§.§#%§();
         this.§`!A§ = §[o§.§=!&§();
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
         var _loc1_:String = §0$§.§[C§;
         var _loc2_:int = §&!G§.getScore();
         §46§.§3!7§(§,!@§.§^=§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:* = false;
         switch(param2)
         {
            case "PAUSE":
               mNextState = §;!=§();
               break;
            case "REPLAY":
               §7!6§.§<!G§();
               mNextState = §7!6§.§?B§;
               break;
            case "ZOOM_IN":
               §&!G§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §&!G§.doUserZoom(false);
               break;
            case "TOGGLESOUND":
               _loc4_ = !AngryBirdsFP11.§;9§();
               AngryBirdsFP11.§-!9§(_loc4_);
               §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §&!G§.getScore();
         var _loc3_:int = §'!#§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§'!#§.getValue() + param1 * §@&§);
            §'!#§.assign(_loc3_);
         }
         (§,R§.getItemByName("TextField_CurrentScore") as §'4§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§>@§(param1);
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
   }
}
