package §else§
{
   import §_-Qx§.§_-Sf§;
   import §_-hU§.§_-MB§;
   
   public class §_-Jw§ extends §_-dT§
   {
      
      public static const §_-Az§:String = "LevelLoadStateClassic";
       
      
      public function §_-Jw§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §_-GL§() : void
      {
         §_-Sf§.§_-JA§(§_-Sf§.§_-ZP§());
         §_-Ec§ = §_-Cw§;
      }
      
      public static function §_-Y3§(param1:int) : void
      {
         §_-XM§ = param1;
         §_-Ec§ = §_-Cw§;
      }
      
      public static function §_-h5§() : void
      {
         §_-Ec§ = §_-Cw§;
      }
      
      override public function initLevelLoad() : void
      {
         §_-XZ§(§_-Sf§.§_-L0§(§_-Sf§.§_-vj§));
         §_-Sf§.§_-JA§(§_-Sf§.§_-vj§);
      }
      
      override public function isReady() : Boolean
      {
         return §_-MB§.§_-A7§.§_-57§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§_-Az§;
      }
   }
}
