package §5!M§
{
   import § `§.§2w§;
   import § `§.§5L§;
   import §!X§.§#K§;
   import §!X§.§86§;
   import §#![§.§7v§;
   import §,h§.§6M§;
   import §9! §.§%e§;
   import §<!Z§.§&!B§;
   import §]!F§.§&!]§;
   import §]!F§.§7e§;
   import §]@§.Sprite;
   import flash.display.Stage;
   
   public class §<e§ extends §86§
   {
       
      
      public function §<e§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§&!]§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §;_§ = new §&!B§(§7e§.§^"§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§#l§)
         {
            §5!>§ = §&!B§.§&O§(§#l§);
            §5!>§.speed = 1;
            §5!>§.play();
            § use§ = -1000;
            §#l§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§&!]§) : §#K§
      {
         return new §7!0§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§2w§) : §5L§
      {
         return new §%e§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§&!]§) : §6M§
      {
         return new §7v§(this,param1,new Sprite());
      }
      
      public function §>E§() : void
      {
         if(§;_§)
         {
            (§;_§ as §&!B§).§^p§(mLevelEngine.currentStep);
         }
      }
      
      public function §#n§() : Boolean
      {
         return §7e§.§^"§ != "1-1" && §7e§.§^"§ != "1-2" && §7e§.§^"§ != "1-3";
      }
   }
}
