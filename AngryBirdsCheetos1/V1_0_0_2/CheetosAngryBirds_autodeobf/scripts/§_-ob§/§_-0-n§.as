package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-MP§.§_-N5§;
   
   public class §_-0-n§ extends §_-st§
   {
      
      public static const §_-jn§:String = "LevelLoadStateClassic";
      
      private static var §_-ah§:Number;
       
      
      public function §_-0-n§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-1k§() : void
      {
         §_-N5§.§_-PC§(§_-N5§.§ in§());
         §_-SW§ = §_-Vt§;
      }
      
      public static function §_-us§(param1:int) : void
      {
         §_-Qa§ = param1;
         §_-SW§ = §_-Vt§;
      }
      
      public static function §_-5P§() : void
      {
         if(§_-si§.§_-HI§.camera)
         {
            §_-ah§ = §_-si§.§_-HI§.camera.manualScale;
         }
         §_-SW§ = §_-Vt§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-DL§(§_-N5§.§_-pj§(§_-N5§.§_-sI§));
         if(!isNaN(§_-ah§))
         {
            §_-si§.§_-HI§.camera.§_-ce§(§_-ah§);
            §_-ah§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §_-si§.§_-HI§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-jn§;
      }
   }
}
