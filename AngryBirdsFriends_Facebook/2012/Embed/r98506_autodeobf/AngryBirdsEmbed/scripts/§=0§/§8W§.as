package §=0§
{
   import §+n§.§^!%§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §[R§.§3!@§;
   import §`t§.§^?§;
   
   public class §8W§ extends §,!'§
   {
       
      
      private var §,"§:int = 0;
      
      public function §8W§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§,"§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §^?§.§]!%§.background.§79§();
         var _loc1_:§1w§ = §-Z§.§4! §(§-Z§.§%s§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§=!1§();
            if(§^?§.§]!%§.slingshot)
            {
               _loc2_ += §^?§.§]!%§.slingshot.§7'§();
            }
            this.§,"§ = Math.min(this.§,"§,_loc2_);
         }
         if(this.§,"§ > 0)
         {
            §4G§.setText(this.§,"§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §4G§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §4G§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §3!@§.§`Z§.Views.View_LevelEndEmbedRio[0];
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
         if(§,v§)
         {
            §`!0§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §]o§.§1$§.§!!B§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§#!J§();
         super.setScoreData();
         if(§,v§)
         {
            (§^?§.§?f§ as §]o§).§&k§(§-Z§.§%s§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§#!J§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
