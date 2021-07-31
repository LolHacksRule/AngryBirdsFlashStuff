package § !@§
{
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   
   public class §7L§ extends §+W§
   {
       
      
      private var §5G§:int = 0;
      
      public function §7L§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§5G§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §=w§.§ o§.background.§ ! §();
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§+v§();
            if(§=w§.§ o§.slingshot)
            {
               _loc2_ += §=w§.§ o§.slingshot.§7!@§();
            }
            this.§5G§ = Math.min(this.§5G§,_loc2_);
         }
         if(this.§5G§ > 0)
         {
            §]F§.setText(this.§5G§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §]F§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §]F§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndEmbedRio[0];
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
         if(§6g§)
         {
            §0L§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §<!7§.§4!"§.§^"§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§`!E§();
         super.setScoreData();
         if(§6g§)
         {
            (§=w§.§ !H§ as §<!7§).§"A§(§[4§.§"!>§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§`!E§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
