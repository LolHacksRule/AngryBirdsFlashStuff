package §2>§
{
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7J§.§<!?§;
   import §?H§.§-!K§;
   
   public class §@!"§ extends §-!5§
   {
       
      
      private var §@J§:int = 0;
      
      public function §@!"§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§@J§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §[!4§.§continue§.background.§74§();
         var _loc1_:§"!;§ = §'?§.§>5§(§'?§.§"t§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§5!>§();
            if(§[!4§.§continue§.slingshot)
            {
               _loc2_ += §[!4§.§continue§.slingshot.§<Y§();
            }
            this.§@J§ = Math.min(this.§@J§,_loc2_);
         }
         if(this.§@J§ > 0)
         {
            §!s§.setText(this.§@J§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §!s§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §!s§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §-!K§.§"!G§.Views.View_LevelEndEmbedRio[0];
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
         if(§%a§)
         {
            §^0§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §0S§.§8!E§.dynamic("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§>!A§();
         super.setScoreData();
         if(§%a§)
         {
            (§[!4§.§@b§ as §0S§).§!!9§(§'?§.§"t§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§>!A§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
