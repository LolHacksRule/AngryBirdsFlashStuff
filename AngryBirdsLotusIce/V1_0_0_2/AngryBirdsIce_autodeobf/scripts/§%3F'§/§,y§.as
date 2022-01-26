package §?'§
{
   import §87§.§2-§;
   import §;f§.§&#§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §in§.§%K§;
   
   public class §,y§ extends §<O§
   {
       
      
      private var §2o§:int = 0;
      
      public function §,y§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§2o§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         this.§2o§ = AngryBirdsFP11.§[l§.§?p§(§&#§.§<Y§);
         super.activate();
         §8[§.§import§.background.§^Y§();
         var _loc1_:§^o§ = §&#§.§@y§(§&#§.§<Y§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§-q§();
            if(§8[§.§import§.slingshot)
            {
               _loc2_ += §8[§.§import§.slingshot.§72§();
            }
            this.§2o§ = Math.min(this.§2o§,_loc2_);
         }
         if(this.§2o§ > 0)
         {
            §<o§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §<o§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §<o§.setText(this.§2o§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §<o§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §<o§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §2-§.§+J§.Views.View_LevelEndEmbedRio[0];
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
         if(§^W§)
         {
            AngryBirdsFP11.§[l§.§;!7§(§&#§.§<Y§,param1);
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         if(§^W§)
         {
            §2;§.playSound("Hiscore_Badge",§[!6§);
            §2!>§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§&#§.§6!§() == null)
               {
                  §&#§.§9,§(§&#§.§9j§("1-1"));
               }
               else
               {
                  §`0§.§6p§();
               }
               mNextState = §`0§.§`%§;
               break;
            case "REPLAY":
               §`0§.§#T§();
               mNextState = §`0§.§`%§;
               break;
            case "MENU":
               mNextState = §0k§.§`%§;
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
         super.setScoreData();
         if(§^W§)
         {
            (§8[§.§?v§ as §@A§).§^v§(§&#§.§<Y§);
         }
      }
   }
}
