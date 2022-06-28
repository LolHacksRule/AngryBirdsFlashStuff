package §>!A§
{
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   
   public class §+=§ extends §"'§
   {
       
      
      private var §3Z§:int = 0;
      
      public function §+=§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§3Z§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §[k§.§&@§.background.§]I§();
         var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§="§();
            if(§[k§.§&@§.slingshot)
            {
               _loc2_ += §[k§.§&@§.slingshot.§,!G§();
            }
            this.§3Z§ = Math.min(this.§3Z§,_loc2_);
         }
         if(this.§3Z§ > 0)
         {
            §[=§.setText(this.§3Z§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §[=§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §[=§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndEmbedRio[0];
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
         if(§>!<§)
         {
            §[D§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#W§.§[G§.§=K§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§@!%§();
         super.setScoreData();
         if(§>!<§)
         {
            (§[k§.§;!+§ as §#W§).§0p§(§5j§.§%V§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§@!%§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
