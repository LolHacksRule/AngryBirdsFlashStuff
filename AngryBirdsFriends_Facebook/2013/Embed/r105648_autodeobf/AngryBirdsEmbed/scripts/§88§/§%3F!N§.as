package §88§
{
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §1t§.§`!B§;
   import §<!M§.§1!&§;
   import §<!M§.§[i§;
   
   public class §?!N§ extends §9X§
   {
       
      
      private var §7!+§:int = 0;
      
      public function §?!N§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§7!+§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §'5§.§^;§.background.§^'§();
         var _loc1_:§1!&§ = §[i§.§2!'§(§[i§.§0A§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§]u§();
            if(§'5§.§^;§.slingshot)
            {
               _loc2_ += §'5§.§^;§.slingshot.§ !H§();
            }
            this.§7!+§ = Math.min(this.§7!+§,_loc2_);
         }
         if(this.§7!+§ > 0)
         {
            §=V§.setText(this.§7!+§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §=V§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §=V§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §while§.§ v§.Views.View_LevelEndEmbedRio[0];
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
         if(§3<§)
         {
            §!s§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §3J§.§3!2§.§`q§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§return§();
         super.setScoreData();
         if(§3<§)
         {
            (§'5§.§-!<§ as §3J§).§!o§(§[i§.§0A§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§return§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
