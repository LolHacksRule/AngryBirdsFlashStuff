package § C§
{
   import §!Y§.§[o§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §`W§.§-[§;
   
   public class §5m§ extends §]O§
   {
       
      
      private var §1T§:int = 0;
      
      public function §5m§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§1T§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         this.§1T§ = AngryBirdsFP11.§64§.§5!4§(§0$§.§[C§);
         super.activate();
         §[o§.§='§.background.§1!>§();
         var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§%!%§();
            if(§[o§.§='§.slingshot)
            {
               _loc2_ += §[o§.§='§.slingshot.§1!5§();
            }
            this.§1T§ = Math.min(this.§1T§,_loc2_);
         }
         if(this.§1T§ > 0)
         {
            §,R§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
            §,R§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
            §,R§.setText(this.§1T§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §,R§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §,R§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndEmbedRio[0];
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
         if(§&i§)
         {
            AngryBirdsFP11.§64§.§,! §(§0$§.§[C§,param1);
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         if(§&i§)
         {
            §@6§.playSound("Hiscore_Badge",§,!+§);
            §-0§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(§0$§.§?W§() == null)
               {
                  §0$§.§;4§(§0$§.§5D§("1-1"));
               }
               else
               {
                  §7!6§.§2v§();
               }
               mNextState = §7!6§.§?B§;
               break;
            case "REPLAY":
               §7!6§.§<!G§();
               mNextState = §7!6§.§?B§;
               break;
            case "MENU":
               mNextState = §>!9§.§?B§;
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
         if(§&i§)
         {
            (§[o§.§&6§ as §^y§).§8M§(§0$§.§[C§);
         }
      }
   }
}
