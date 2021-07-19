package §1!F§
{
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §?!-§.§'!V§;
   
   public class §6;§ extends §0k§
   {
       
      
      private var §"Q§:int = 0;
      
      public function §6;§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§"Q§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §'!V§.§1!2§.background.§8!n§();
         var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§]+§();
            if(§'!V§.§1!2§.slingshot)
            {
               _loc2_ += §'!V§.§1!2§.slingshot.§6J§();
            }
            this.§"Q§ = Math.min(this.§"Q§,_loc2_);
         }
         if(this.§"Q§ > 0)
         {
            §+!$§.setText(this.§"Q§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §+!$§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §+!$§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndEmbedRio[0];
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
         if(§8!_§)
         {
            §77§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#!?§.§8;§.§4!`§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§#!p§();
         super.setScoreData();
         if(§8!_§)
         {
            (§'!V§.§6!O§ as §#!?§).§]R§(§1^§.§ ]§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§#!p§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
