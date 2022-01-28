package §_-RV§
{
   import §_-7x§.§_-4O§;
   import §_-pm§.§_-gb§;
   
   public class §_-Py§ extends §_-bC§
   {
      
      public static const §_-8r§:String = "LevelLoadStateClassic";
       
      
      public function §_-Py§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-op§() : void
      {
         §_-4O§.§_-bf§(§_-4O§.§_-Dt§());
         §_-uA§ = §_-L4§;
      }
      
      public static function §_-We§(param1:int) : void
      {
         §_-qQ§ = param1;
         §_-uA§ = §_-L4§;
      }
      
      public static function §_-vF§() : void
      {
         §_-uA§ = §_-L4§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-Qe§(§_-4O§.§_-Eo§(§_-4O§.§_-FH§));
         §_-4O§.§_-bf§(§_-4O§.§_-FH§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-gb§.§_-ls§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-8r§;
      }
   }
}
