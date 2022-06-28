package §;m§
{
   import §%!6§.§+9§;
   import §%!6§.§5!A§;
   import §+!?§.§"h§;
   import §-5§.§;s§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §2?§.§&h§;
   import §2?§.§3!#§;
   import §3G§.§!E§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   import §=E§.§1!$§;
   import §`!0§.§"?§;
   import §catch§.§4@§;
   
   public class §&Z§ extends StatePlay
   {
      
      private static const §[!H§:Number = -5 * 1000;
      
      private static const §2y§:Number = 10 * 1000;
       
      
      private var §>,§:int = 0;
      
      private var §@!F§:Number = -5000.0;
      
      private var §`!&§:int = 0;
      
      private var §2a§:Number = 0;
      
      private var §!!B§:Number = 0;
      
      public function §&Z§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§>,§ = param2;
      }
      
      override protected function getGameLogicController(param1:§!E§) : §1!$§
      {
         return new §;s§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §+9§.§]c§(§5!A§.§]x§,§59§.§%j§);
      }
      
      override public function init() : void
      {
         §?z§ = true;
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§7;§();
         var _loc1_:§^!9§ = §59§.§'Y§(§59§.§%j§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§#f§();
            if(§"h§.§1C§.slingshot)
            {
               _loc2_ += §"h§.§1C§.slingshot.§<w§();
            }
            this.§>,§ = Math.min(this.§>,§,_loc2_);
         }
         if(this.§>,§ > 0)
         {
            (§-f§.getItemByName("TextField_HighScore") as §<k§).setText(this.§>,§.toString());
         }
         else
         {
            §-f§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §-f§.getItemByName("Container_LevelscoreContainer").y = §-f§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@p§();
         this.§7;§();
      }
      
      private function §@p§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§@!F§ > §2y§)
         {
            _loc1_ = Math.round(1000 / this.§@!F§ * this.§`!&§);
            _loc2_ = §59§.§%j§;
            §+9§.§=+§(_loc1_,_loc2_,§4@§.§?!A§);
         }
      }
      
      private function §2G§(param1:Number) : void
      {
         this.§@!F§ += param1;
         if(this.§@!F§ > 0)
         {
            ++this.§`!&§;
         }
         if(this.§2a§ != §"h§.§=[§() || this.§!!B§ != §"h§.§+_§())
         {
            this.§7;§();
         }
      }
      
      private function §7;§() : void
      {
         this.§@!F§ = §[!H§;
         this.§`!&§ = 0;
         this.§2a§ = §"h§.§=[§();
         this.§!!B§ = §"h§.§+_§();
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
         var _loc1_:String = §59§.§%j§;
         var _loc2_:int = §^R§.getScore();
         §+9§.§]c§(§5!A§.§9!C§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §&h§.§`a§();
               break;
            case "POWERUP":
               §3!#§.§?!!§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §3!#§.§?!!§(false);
               break;
            case "ZOOM_IN":
               §^R§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §^R§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §^R§.getScore();
         var _loc3_:int = §6?§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§6?§.getValue() + param1 * §>!A§);
            §6?§.assign(_loc3_);
         }
         (§-f§.getItemByName("TextField_CurrentScore") as §<k§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§2G§(param1);
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
   }
}
