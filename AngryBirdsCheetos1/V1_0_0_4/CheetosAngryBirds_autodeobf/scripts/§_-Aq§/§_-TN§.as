package §_-Aq§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-xV§;
   import §_-4I§.§_-ok§;
   import §_-4I§.§_-v8§;
   import §_-5b§.§_-Mm§;
   import §_-5b§.§_-Vj§;
   import §_-CA§.§_-4-§;
   import §_-Fk§.§_-lp§;
   import §_-bF§.§_-Ts§;
   import §_-o0§.§_-pw§;
   import §case §.Sprite;
   import flash.display.Stage;
   
   public class §_-TN§ extends §_-FL§
   {
       
      
      public function §_-TN§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§_-Vj§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §_-PZ§ = new §_-Ts§(§_-Mm§.§_-Kw§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§_-g0§)
         {
            §in § = §_-Ts§.§_-sY§(§_-g0§);
            §in §.speed = 1;
            §in §.play();
            §_-8w§ = -1000;
            §_-g0§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§_-Vj§) : §_-xV§
      {
         return new §_-oL§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§_-v8§) : §_-ok§
      {
         return new §_-pw§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§_-Vj§) : §_-lp§
      {
         return new §_-4-§(this,param1,new Sprite());
      }
      
      public function §_-JF§() : void
      {
         if(§_-PZ§)
         {
            (§_-PZ§ as §_-Ts§).§_-lc§(mLevelEngine.currentStep);
         }
      }
      
      public function §_-dx§() : Boolean
      {
         return §_-Mm§.§_-Kw§ != "1-1" && §_-Mm§.§_-Kw§ != "1-2" && §_-Mm§.§_-Kw§ != "1-3";
      }
   }
}
