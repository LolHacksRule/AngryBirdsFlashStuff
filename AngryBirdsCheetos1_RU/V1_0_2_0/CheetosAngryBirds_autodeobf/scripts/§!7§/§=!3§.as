package §!7§
{
   import §#b§.§5!#§;
   import §#b§.§85§;
   import §,H§.Sprite;
   import §-A§.§ '§;
   import §-A§.§%9§;
   import §2!4§.§5T§;
   import §2!4§.§]!7§;
   import §9T§.§+8§;
   import §;z§.§]!N§;
   import §>!Q§.§#R§;
   import §?>§.§=q§;
   import flash.display.Stage;
   
   public class §=!3§ extends §%9§
   {
       
      
      public function §=!3§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§85§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §>D§ = new §#R§(§5!#§.§'D§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§!H§)
         {
            §54§ = §#R§.§>!W§(§!H§);
            §54§.speed = 1;
            §54§.play();
            §9Z§ = -1000;
            §!H§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§85§) : § '§
      {
         return new §@a§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§5T§) : §]!7§
      {
         return new §=q§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§85§) : §]!N§
      {
         return new §+8§(this,param1,new Sprite());
      }
      
      public function §-W§() : void
      {
         if(§>D§)
         {
            (§>D§ as §#R§).§'%§(mLevelEngine.currentStep);
         }
      }
      
      public function §^!7§() : Boolean
      {
         return §5!#§.§'D§ != "1-1" && §5!#§.§'D§ != "1-2" && §5!#§.§'D§ != "1-3";
      }
   }
}
