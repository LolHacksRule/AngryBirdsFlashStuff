package §_-fp§
{
   import §_-0-W§.§_-C3§;
   import §_-0C§.§_-42§;
   import §_-D9§.§_-89§;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-hD§;
   import §_-MP§.§_-BI§;
   import §_-MP§.§_-N5§;
   import §_-fr§.§ else§;
   import §_-my§.§_-Oi§;
   import §_-my§.§_-V0§;
   import flash.display.Stage;
   
   public class §_-W9§ extends §_-c3§
   {
       
      
      public function §_-W9§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§_-BI§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §_-iZ§ = new §_-C3§(§_-N5§.§_-sI§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§_-D§)
         {
            §_-ih§ = §_-C3§.§_-9M§(§_-D§);
            §_-ih§.speed = 1;
            §_-ih§.play();
            §_-1P§ = -1000;
            §_-D§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§_-BI§) : §_-hD§
      {
         return new §_-cN§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§_-V0§) : §_-Oi§
      {
         return new §_-42§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§_-BI§) : § else§
      {
         return new §_-89§(this,param1,new Sprite());
      }
      
      public function §_-Gr§() : void
      {
         if(§_-iZ§)
         {
            (§_-iZ§ as §_-C3§).§_-I-§(mLevelEngine.currentStep);
         }
      }
      
      public function §_-k4§() : Boolean
      {
         return §_-N5§.§_-sI§ != "1-1" && §_-N5§.§_-sI§ != "1-2" && §_-N5§.§_-sI§ != "1-3";
      }
   }
}
