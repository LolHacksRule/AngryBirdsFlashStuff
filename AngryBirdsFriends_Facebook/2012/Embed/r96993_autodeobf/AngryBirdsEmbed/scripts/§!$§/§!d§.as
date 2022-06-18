package §!$§
{
   import §!^§.§"%§;
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §>%§.§]3§;
   import §^s§.§?O§;
   
   public class §!d§ extends §&!5§
   {
       
      
      private var §"f§:int = 0;
      
      public function §!d§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§"f§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §]3§.§;v§.background.§@%§();
         var _loc1_:§3!H§ = §#!G§.§2!0§(§#!G§.§9C§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§8!<§();
            if(§]3§.§;v§.slingshot)
            {
               _loc2_ += §]3§.§;v§.slingshot.§9#§();
            }
            this.§"f§ = Math.min(this.§"f§,_loc2_);
         }
         if(this.§"f§ > 0)
         {
            §+!2§.setText(this.§"f§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §+!2§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §+!2§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §?O§.§@!<§.Views.View_LevelEndEmbedRio[0];
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
         if(§"!<§)
         {
            §%T§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §7@§.§7y§.§8v§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§<d§();
         super.setScoreData();
         if(§"!<§)
         {
            (§]3§.§4#§ as §7@§).§7^§(§#!G§.§9C§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§<d§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
