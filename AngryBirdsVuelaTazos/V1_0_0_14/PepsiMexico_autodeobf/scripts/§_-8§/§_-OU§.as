package §_-8§
{
   import §_-M0§.§_-u4§;
   import §_-uh§.§_-HB§;
   
   public class §_-OU§ extends §_-Zq§
   {
      
      public static const §_-7m§:String = "LevelLoadStateClassic";
       
      
      public function §_-OU§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-U1§() : void
      {
         §_-HB§.§_-8e§(§_-HB§.§_-ru§());
         §_-Hv§ = §_-hX§;
      }
      
      public static function §_-9d§(param1:int) : void
      {
         §_-KP§ = param1;
         §_-Hv§ = §_-hX§;
      }
      
      public static function §for §() : void
      {
         §_-Hv§ = §_-hX§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-Jf§(§_-HB§.§_-ap§(§_-HB§.§_-Z-§));
         §_-HB§.§_-8e§(§_-HB§.§_-Z-§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-u4§.§_-40§.§_-3B§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-7m§;
      }
   }
}
