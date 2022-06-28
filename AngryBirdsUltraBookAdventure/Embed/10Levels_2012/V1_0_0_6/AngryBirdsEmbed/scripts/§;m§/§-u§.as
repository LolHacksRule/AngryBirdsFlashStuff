package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§06§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   import §`!0§.§"?§;
   
   public class §-u§ extends § !F§
   {
       
      
      private var §>,§:int = 0;
      
      public function §-u§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§>,§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §"h§.§1C§.background.§!#§();
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
            §-f§.setText(this.§>,§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §-f§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §-f§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §06§.§-`§.Views.View_LevelEndEmbedRio[0];
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
         if(§#>§)
         {
            §"<§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §+!0§.§2[§.§5"§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§0!F§();
         super.setScoreData();
         if(§#>§)
         {
            (§"h§.§'7§ as §+!0§).§?,§(§59§.§%j§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§0!F§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
