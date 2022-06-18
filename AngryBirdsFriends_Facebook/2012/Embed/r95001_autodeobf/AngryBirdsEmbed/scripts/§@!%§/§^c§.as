package §@!%§
{
   import § "§.§8!3§;
   import § "§.§;4§;
   import §0u§.§&]§;
   import §10§.§#!4§;
   import §6!,§.§1W§;
   
   public class §^c§ extends §=z§
   {
       
      
      private var §^<§:int = 0;
      
      public function §^c§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§^<§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §#!4§.§^Y§.background.§[r§();
         var _loc1_:§;4§ = §8!3§.§]!>§(§8!3§.§-[§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§2r§();
            if(§#!4§.§^Y§.slingshot)
            {
               _loc2_ += §#!4§.§^Y§.slingshot.§[i§();
            }
            this.§^<§ = Math.min(this.§^<§,_loc2_);
         }
         if(this.§^<§ > 0)
         {
            §`k§.setText(this.§^<§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §`k§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §`k§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §1W§.§&!G§.Views.View_LevelEndEmbedRio[0];
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
         if(§`M§)
         {
            §`N§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#@§.§]z§.§[!2§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§3!4§();
         super.setScoreData();
         if(§`M§)
         {
            (§#!4§.§='§ as §#@§).§<0§(§8!3§.§-[§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§3!4§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
