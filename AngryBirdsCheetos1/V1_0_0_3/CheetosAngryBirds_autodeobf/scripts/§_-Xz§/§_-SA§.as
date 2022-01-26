package §_-Xz§
{
   import §_-5b§.§_-Mm§;
   import §_-TX§.§_-0X§;
   
   public class §_-SA§ extends §_-tW§
   {
      
      public static const §_-3o§:String = "LevelLoadStateClassic";
      
      private static var §_-gL§:Number;
       
      
      public function §_-SA§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-7t§() : void
      {
         §_-Mm§.§false§(§_-Mm§.§_-iM§());
         §_-003§ = §_-Of§;
      }
      
      public static function §_-nA§(param1:int) : void
      {
         §_-Ps§ = param1;
         §_-003§ = §_-Of§;
      }
      
      public static function §_-FK§() : void
      {
         if(§_-0X§.§_-O2§.camera)
         {
            §_-gL§ = §_-0X§.§_-O2§.camera.manualScale;
         }
         §_-003§ = §_-Of§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-CC§(§_-Mm§.§_-Bp§(§_-Mm§.§_-Kw§));
         if(!isNaN(§_-gL§))
         {
            §_-0X§.§_-O2§.camera.§_-bZ§(§_-gL§);
            §_-gL§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §_-0X§.§_-O2§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-3o§;
      }
   }
}
