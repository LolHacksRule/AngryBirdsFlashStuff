package §_-fg§
{
   import §_-T8§.§_-Sa§;
   import §_-gC§.§_-XR§;
   
   public class §_-V0§ extends §_-Ni§
   {
      
      public static const §_-bg§:String = "LevelLoadStateClassic";
      
      private static var §_-P2§:Number;
       
      
      public function §_-V0§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-xE§() : void
      {
         §_-Sa§.§_-wW§(§_-Sa§.§_-TD§());
         §_-B1§ = §_-wi§;
      }
      
      public static function §_-kb§(param1:int) : void
      {
         §_-pi§ = param1;
         §_-B1§ = §_-wi§;
      }
      
      public static function §_-70§() : void
      {
         if(§_-XR§.§_-Xv§.camera)
         {
            §_-P2§ = §_-XR§.§_-Xv§.camera.manualScale;
         }
         §_-B1§ = §_-wi§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-x0§(§_-Sa§.§_-x1§(§_-Sa§.§_-LZ§));
         if(!isNaN(§_-P2§))
         {
            §_-XR§.§_-Xv§.camera.§_-2B§(§_-P2§);
            §_-P2§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §_-XR§.§_-Xv§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-bg§;
      }
   }
}
