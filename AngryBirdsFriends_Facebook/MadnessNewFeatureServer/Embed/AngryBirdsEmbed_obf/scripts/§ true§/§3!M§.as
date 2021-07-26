package § true§
{
   import §"!B§.§6!"§;
   import §'d§.§"6§;
   import §'d§.§"s§;
   import §+_§.§7[§;
   import §,!,§.§2t§;
   import §3y§.§"C§;
   import §3y§.§=l§;
   import §8!8§.§+!'§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   import §`!4§.§6l§;
   
   public class §3!M§ extends StatePlay
   {
      
      private static const §%w§:Number = -5 * 1000;
      
      private static const §%f§:Number = 10 * 1000;
       
      
      private var §^U§:int = 0;
      
      private var §,A§:Number = -5000.0;
      
      private var §53§:int = 0;
      
      private var §6C§:Number = 0;
      
      private var §^e§:Number = 0;
      
      public function §3!M§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         super(param1,param3);
         this.§^U§ = param2;
      }
      
      override protected function getGameLogicController(param1:§6l§) : §7[§
      {
         return new §+!'§(param1);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §"C§.§#H§(§=l§.§@j§,§`R§.§7S§);
      }
      
      override public function init() : void
      {
         §3d§ = true;
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_FacebookLevelPlay[0]);
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         this.§;L§();
         var _loc1_:§9?§ = §`R§.§7!E§(§`R§.§7S§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§+V§();
            if(§[+§.§,!&§.slingshot)
            {
               _loc2_ += §[+§.§,!&§.slingshot.§7@§();
            }
            this.§^U§ = Math.min(this.§^U§,_loc2_);
         }
         if(this.§^U§ > 0)
         {
            (§while§.getItemByName("TextField_HighScore") as §6!"§).setText(this.§^U§.toString());
         }
         else
         {
            §while§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            §while§.getItemByName("Container_LevelscoreContainer").y = §while§.getItemByName("Container_HiscoreContainer").y;
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0z§();
         this.§;L§();
      }
      
      private function §0z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         if(this.§,A§ > §%f§)
         {
            _loc1_ = Math.round(1000 / this.§,A§ * this.§53§);
            _loc2_ = §`R§.§7S§;
            §"C§.§>!;§(_loc1_,_loc2_,§2t§.§89§);
         }
      }
      
      private function §"`§(param1:Number) : void
      {
         this.§,A§ += param1;
         if(this.§,A§ > 0)
         {
            ++this.§53§;
         }
         if(this.§6C§ != §[+§.§`!$§() || this.§^e§ != §[+§.§case§())
         {
            this.§;L§();
         }
      }
      
      private function §;L§() : void
      {
         this.§,A§ = §%w§;
         this.§53§ = 0;
         this.§6C§ = §[+§.§`!$§();
         this.§^e§ = §[+§.§case§();
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
         var _loc1_:String = §`R§.§7S§;
         var _loc2_:int = §='§.getScore();
         §"C§.§#H§(§=l§.§0`§,_loc1_,_loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL_POWERUP":
               §"6§.§+@§();
               break;
            case "POWERUP":
               §"s§.§=!E§(true);
               break;
            case "FULLSCREEN_BUTTON":
               §"s§.§=!E§(false);
               break;
            case "ZOOM_IN":
               §='§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §='§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc2_:int = §='§.getScore();
         var _loc3_:int = §,!<§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,§,!<§.getValue() + param1 * §"!,§);
            §,!<§.assign(_loc3_);
         }
         (§while§.getItemByName("TextField_CurrentScore") as §6!"§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         this.§"`§(param1);
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
   }
}
