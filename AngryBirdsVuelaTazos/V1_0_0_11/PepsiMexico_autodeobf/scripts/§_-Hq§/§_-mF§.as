package §_-Hq§
{
   import §_-Ah§.§_-b§;
   import §_-Y-§.§_-A5§;
   
   public class §_-mF§ extends §_-34§
   {
      
      public static const §_-dh§:String = "LevelLoadStateClassic";
       
      
      public function §_-mF§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-YZ§() : void
      {
         §_-A5§.§_-51§(§_-A5§.§_-Jo§());
         §_-ng§ = §_-pw§;
      }
      
      public static function §_-Sa§(param1:int) : void
      {
         §_-wI§ = param1;
         §_-ng§ = §_-pw§;
      }
      
      public static function §_-4C§() : void
      {
         §_-ng§ = §_-pw§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-GU§(§_-A5§.§_-6O§(§_-A5§.§_-KH§));
         §_-A5§.§_-51§(§_-A5§.§_-KH§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-b§.§_-cK§.§_-90§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-dh§;
      }
   }
}
