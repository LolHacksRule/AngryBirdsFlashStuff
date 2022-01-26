package §9!S§
{
   import §-!?§.§26§;
   import §0V§.§^K§;
   import §0V§.§`!O§;
   import §1T§.§^#§;
   import §3§.Sprite;
   import §39§.§-W§;
   import §39§.§=R§;
   import §3`§.§'c§;
   import §3d§.§@?§;
   import §`n§.§#H§;
   import §`n§.§2!"§;
   import flash.display.Stage;
   
   public class §+!=§ extends §`!O§
   {
       
      
      public function §+!=§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§=R§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §>r§ = new §26§(§-W§.§,[§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§#j§)
         {
            §]U§ = §26§.§5M§(§#j§);
            §]U§.speed = 1;
            §]U§.play();
            §5<§ = -1000;
            §#j§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§=R§) : §^K§
      {
         return new §@!G§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§#H§) : §2!"§
      {
         return new §^#§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§=R§) : §@?§
      {
         return new §'c§(this,param1,new Sprite());
      }
      
      public function §<R§() : void
      {
         if(§>r§)
         {
            (§>r§ as §26§).§-E§(mLevelEngine.currentStep);
         }
      }
      
      public function §]!I§() : Boolean
      {
         return §-W§.§,[§ != "1-1" && §-W§.§,[§ != "1-2" && §-W§.§,[§ != "1-3";
      }
   }
}
