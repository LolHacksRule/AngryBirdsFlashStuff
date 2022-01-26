package §_-uG§
{
   import §_-2r§.§_-Qo§;
   import §_-2r§.§_-sn§;
   import §_-5p§.§_-Kf§;
   import §_-5p§.§_-Kn§;
   import §_-BN§.§_-He§;
   import §_-Ls§.Sprite;
   import §_-T8§.§_-GI§;
   import §_-T8§.§_-Sa§;
   import §_-aX§.§_-DY§;
   import §_-bl§.§_-S4§;
   import §_-nd§.§_-hV§;
   import flash.display.Stage;
   
   public class §_-Eu§ extends §_-sn§
   {
       
      
      public function §_-Eu§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§_-GI§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §_-Jm§ = new §_-hV§(§_-Sa§.§_-LZ§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§_-2x§)
         {
            §_-4u§ = §_-hV§.§_-Eh§(§_-2x§);
            §_-4u§.speed = 1;
            §_-4u§.play();
            §_-Jl§ = -1000;
            §_-2x§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§_-GI§) : §_-Qo§
      {
         return new §_-uL§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§_-Kf§) : §_-Kn§
      {
         return new §_-He§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§_-GI§) : §_-S4§
      {
         return new §_-DY§(this,param1,new Sprite());
      }
      
      public function §_-pK§() : void
      {
         if(§_-Jm§)
         {
            (§_-Jm§ as §_-hV§).§_-ce§(mLevelEngine.currentStep);
         }
      }
      
      public function §_-cj§() : Boolean
      {
         return §_-Sa§.§_-LZ§ != "1-1" && §_-Sa§.§_-LZ§ != "1-2" && §_-Sa§.§_-LZ§ != "1-3";
      }
   }
}
