package §_-5M§
{
   import §_-3P§.§_-dN§;
   import §_-I1§.§_-2N§;
   
   public class §_-G§ extends §_-sC§
   {
      
      public static const §_-7J§:String = "LevelLoadStateClassic";
       
      
      public function §_-G§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-oz§() : void
      {
         §_-dN§.§_-Zx§(§_-dN§.§_-XC§());
         §_-2d§ = §_-Fv§;
      }
      
      public static function §_-T4§(param1:int) : void
      {
         §_-kK§ = param1;
         §_-2d§ = §_-Fv§;
      }
      
      public static function §_-pN§() : void
      {
         §_-2d§ = §_-Fv§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-Mq§(§_-dN§.§_-wm§(§_-dN§.§_-fy§));
         §_-dN§.§_-Zx§(§_-dN§.§_-fy§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-2N§.§_-iP§.§_-Ci§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-7J§;
      }
   }
}
