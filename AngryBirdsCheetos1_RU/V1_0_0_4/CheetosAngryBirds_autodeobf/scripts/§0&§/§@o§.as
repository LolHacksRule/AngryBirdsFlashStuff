package §0&§
{
   import § T§.§1!'§;
   import §!s§.§<!@§;
   import §'!>§.§!!@§;
   import §1!A§.Sprite;
   import §7z§.§0!D§;
   import §7z§.§]!-§;
   import §8K§.§,!'§;
   import §8K§.§>g§;
   import §=q§.§<!,§;
   import §=q§.§?X§;
   import §?[§.§[t§;
   import flash.display.Stage;
   
   public class §@o§ extends §]!-§
   {
       
      
      public function §@o§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§?X§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §@^§ = new §!!@§(§<!,§.§1D§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§[!I§)
         {
            §!!F§ = §!!@§.§7x§(§[!I§);
            §!!F§.speed = 1;
            §!!F§.play();
            §9[§ = -1000;
            §[!I§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§?X§) : §0!D§
      {
         return new §<!+§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§>g§) : §,!'§
      {
         return new §<!@§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§?X§) : §1!'§
      {
         return new §[t§(this,param1,new Sprite());
      }
      
      public function §<x§() : void
      {
         if(§@^§)
         {
            (§@^§ as §!!@§).§2N§(mLevelEngine.currentStep);
         }
      }
      
      public function § null§() : Boolean
      {
         return §<!,§.§1D§ != "1-1" && §<!,§.§1D§ != "1-2" && §<!,§.§1D§ != "1-3";
      }
   }
}
