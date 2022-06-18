package §?w§
{
   import §'!"§.§?!6§;
   import §-!7§.§&$§;
   import §1A§.§?!0§;
   import §4W§.§!]§;
   import §4W§.§3!@§;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §;!1§.§&!@§;
   import §<!+§.§[!!§;
   import §<!+§.§with§;
   import §`a§.Sprite;
   import flash.display.Stage;
   
   public class §!&§ extends §9!%§
   {
       
      
      public function §!&§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§with§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §&q§ = new §&!@§(§[!!§.§7!F§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§,$§)
         {
            §`@§ = §&!@§.§[I§(§,$§);
            §`@§.speed = 1;
            §`@§.play();
            §^=§ = -1000;
            §,$§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§with§) : §;c§
      {
         return new §null§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§!]§) : §3!@§
      {
         return new §?!0§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§with§) : §&$§
      {
         return new §?!6§(this,param1,new Sprite());
      }
      
      public function §@!,§() : void
      {
         if(§&q§)
         {
            (§&q§ as §&!@§).§20§(mLevelEngine.currentStep);
         }
      }
      
      public function §`!P§() : Boolean
      {
         return §[!!§.§7!F§ != "1-1" && §[!!§.§7!F§ != "1-2" && §[!!§.§7!F§ != "1-3";
      }
   }
}
