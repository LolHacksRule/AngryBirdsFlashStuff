package §?7§
{
   import §-l§.§?'§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   
   public class §@!B§ extends §@!-§
   {
       
      
      private var §2r§:int = 0;
      
      public function §@!B§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§2r§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §?'§.§5!§.background.§4[§();
         var _loc1_:§+!-§ = §!P§.§1'§(§!P§.§4R§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§"S§();
            if(§?'§.§5!§.slingshot)
            {
               _loc2_ += §?'§.§5!§.slingshot.§1o§();
            }
            this.§2r§ = Math.min(this.§2r§,_loc2_);
         }
         if(this.§2r§ > 0)
         {
            §6!$§.setText(this.§2r§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §6!$§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §6!$§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §1!$§.§7e§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override protected function showButtonsCutScene() : void
      {
      }
      
      override protected function showButtonsNormal() : void
      {
      }
      
      override protected function setMightyEagleFeather() : void
      {
      }
      
      override protected function setScoreStars(param1:int, param2:int) : void
      {
      }
      
      override protected function onBadgeLanded() : void
      {
         if(§9§)
         {
            §>!G§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §6!%§.§-W§.§'C§("LevelWin");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§?!!§();
         super.setScoreData();
         if(§9§)
         {
            (§?'§.§0_§ as §6!%§).§6§(§!P§.§4R§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§?!!§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
