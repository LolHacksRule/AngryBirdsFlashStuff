package §_-L5§
{
   import §_-Hw§.§_-3C§;
   import §_-Su§.§_-8v§;
   
   public class §_-0v§ extends §_-4h§
   {
      
      public static const §_-Mi§:String = "LevelLoadStateClassic";
       
      
      public function §_-0v§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-ky§() : void
      {
         §_-8v§.static(§_-8v§.§_-r3§());
         §_-4F§ = §_-7j§;
      }
      
      public static function §_-j2§(param1:int) : void
      {
         §_-xB§ = param1;
         §_-4F§ = §_-7j§;
      }
      
      public static function §_-R3§() : void
      {
         §_-4F§ = §_-7j§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-wJ§(§_-8v§.§_-NQ§(§_-8v§.§_-rq§));
         §_-8v§.static(§_-8v§.§_-rq§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-3C§.§_-bz§.§ if§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-Mi§;
      }
   }
}
