package §_-JB§
{
   import §_-7§.§_-ph§;
   import §_-PS§.§_-Xz§;
   
   public class §_-gc§ extends §_-y§
   {
      
      public static const §_-1h§:String = "LevelLoadStateClassic";
       
      
      public function §_-gc§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-e7§() : void
      {
         §_-Xz§.§_-9v§(§_-Xz§.§_-ly§());
         §_-hZ§ = §_-BC§;
      }
      
      public static function §_-B8§(param1:int) : void
      {
         §_-U-§ = param1;
         §_-hZ§ = §_-BC§;
      }
      
      public static function §_-hG§() : void
      {
         §_-hZ§ = §_-BC§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-lc§(§_-Xz§.§_-BH§(§_-Xz§.§_-AP§));
         §_-Xz§.§_-9v§(§_-Xz§.§_-AP§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-ph§.§_-Tw§.§_-FO§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-1h§;
      }
   }
}
