package §>!A§
{
   import §"!&§.§#!,§;
   import §#!;§.§;T§;
   import §-!F§.§^h§;
   import §4!H§.;
   import §4!H§.§["§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §;!B§.§#f§;
   import §;!B§.§5U§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §>!!§.§7>§;
   import §?b§.§7!,§;
   import §@!H§.§"E§;
   import §class§.§3D§;
   
   public class §=!$§ extends StatePlay
   {
      
      private static const §9J§:Number = -5 * 1000;
      
      private static const §9!B§:Number = 10 * 1000;
       
      
      private var §3Z§:int = 0;
      
      private var §"!;§:Number = -5000.0;
      
      private var §]l§:int = 0;
      
      private var §3L§:Number = 0;
      
      private var §8D§:Number = 0;
      
      public function §=!$§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§3Z§ = param2;
      }
      
      override protected function getGameLogicController(param1:§7!,§) : §"E§
      {
         return new §7>§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §["§.§,9§(§#3§.§<J§,§5j§.§%V§);
      }
      
      override public function init() : void
      {
         §;!$§ = true;
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§"-§();
         var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§="§();
            if(§[k§.§&@§.slingshot)
            {
               _loc2_ += §[k§.§&@§.slingshot.§,!G§();
            }
            this.§3Z§ = Math.min(this.§3Z§,_loc2_);
         }
         if(this.§3Z§ > 0)
         {
            (§[=§.getItemByName("TextField_HighScore") as §3D§).setText(this.§3Z§.toString());
         }
         else
         {
            §[=§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §[=§.getItemByName("Container_LevelscoreContainer").y = §[=§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6n§();
         this.§"-§();
      }
      
      private function §6n§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§"!;§ > §9!B§)
         {
            _loc1_ = Math.round(1000 / this.§"!;§ * this.§]l§);
            _loc2_ = §5j§.§%V§;
            §["§.§'w§(_loc1_,_loc2_,§;T§.§>!,§);
         }
      }
      
      private function §1d§(param1:Number) : void
      {
         this.§"!;§ += param1;
         if(this.§"!;§ > 0)
         {
            ++this.§]l§;
         }
         if(this.§3L§ != §[k§.§>!2§() || this.§8D§ != §[k§.§`&§())
         {
            this.§"-§();
         }
      }
      
      private function §"-§() : void
      {
         this.§"!;§ = §9J§;
         this.§]l§ = 0;
         this.§3L§ = §[k§.§>!2§();
         this.§8D§ = §[k§.§`&§();
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
         var _loc1_:String = §5j§.§%V§;
         var _loc2_:int = §7!9§.getScore();
         §["§.§,9§(§#3§.§break§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §#f§.§!h§();
               break;
            case "POWERUP":
               §5U§.§+w§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §5U§.§+w§(false);
               break;
            case "ZOOM_IN":
               §7!9§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §7!9§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §7!9§.getScore();
         var _loc3_:int = §>a§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§>a§.getValue() + param1 * §!!?§);
            §>a§.assign(_loc3_);
         }
         (§[=§.getItemByName("TextField_CurrentScore") as §3D§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§1d§(param1);
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
   }
}
