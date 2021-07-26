package § true§
{
   import §>!O§.§[+§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §]!=§.§;!6§;
   
   public class §3!%§ extends §"!>§
   {
       
      
      private var §^U§:int = 0;
      
      public function §3!%§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         super(param1,param3);
         this.§^U§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc2_:int = 0;
         super.activate();
         §[+§.§,!&§.background.§ 8§();
         var _loc1_:§9?§ = §`R§.§7!E§(§`R§.§7S§);
         if(_loc1_)
         {
            _loc2_ = _loc1_.§+V§();
            if(§[+§.§,!&§.slingshot)
            {
               _loc2_ += §[+§.§,!&§.slingshot.§7@§();
            }
            this.§^U§ = Math.min(this.§^U§,_loc2_);
         }
         if(this.§^U§ > 0)
         {
            §while§.setText(this.§^U§.toString(),"TextField_ScoreToBeat");
         }
         else
         {
            §while§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
            §while§.getItemByName("TextField_ScoreToBeat").setVisibility(false);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §'p§.§ ,§.Views.View_LevelEndEmbedRio[0];
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
         if(§0T§)
         {
            §!!5§();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "FULL_GAME":
               §#m§.§;C§.§%!4§("LevelWin");
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
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§+!&§();
         super.setScoreData();
         if(§0T§)
         {
            (§[+§.§&!"§ as §#m§).§+!%§(§`R§.§7S§);
         }
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§+!&§();
         if(_loc2_ > _loc1_)
         {
         }
      }
   }
}
