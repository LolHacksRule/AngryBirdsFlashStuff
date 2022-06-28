package §`@§
{
   import §"!5§.§,!!§;
   import §1;§.§0!&§;
   import §1h§.§@s§;
   import §>!C§.§6M§;
   import §>!C§.§<-§;
   
   public class § z§ extends §#!6§
   {
       
      
      private var §<!?§:int = 0;
      
      public function § z§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§<!?§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §,!!§.§;4§.background.§!M§();
         var _loc1_:§<-§ = §6M§.getLevelForId(§6M§.§[z§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§,!%§();
            if(§,!!§.§;4§.slingshot)
            {
               _loc2_ += §,!!§.§;4§.slingshot.§^! §();
            }
            this.§<!?§ = Math.min(this.§<!?§,_loc2_);
         }
         if(this.§<!?§ > 0)
         {
            §#Z§.setText(this.§<!?§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §#Z§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §#Z§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §0!&§.§'^§.Views.View_LevelEndEmbedRio[0];
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
         if(§]!#§)
         {
            §@X§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §@!?§.§%P§.§7a§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§]<§();
         super.setScoreData();
         if(§]!#§)
         {
            (§,!!§.§-k§ as §@!?§).§=§(§6M§.§[z§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§]<§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
