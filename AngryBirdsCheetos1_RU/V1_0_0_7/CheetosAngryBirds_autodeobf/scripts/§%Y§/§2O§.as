package §%Y§
{
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   
   public class §2O§ extends §>f§
   {
      
      public static const §7!Q§:String = "LevelLoadStateClassic";
      
      private static var §[!7§:Number;
       
      
      public function §2O§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §11§() : void
      {
         §7M§.§"1§(§7M§.§]b§());
         §>o§ = §>'§;
      }
      
      public static function §^!H§(param1:int) : void
      {
         §%!Y§ = param1;
         §>o§ = §>'§;
      }
      
      public static function §]! §() : void
      {
         if(§@!Q§.§7l§.camera)
         {
            §[!7§ = §@!Q§.§7l§.camera.manualScale;
         }
         §>o§ = §>'§;
      }
      
      override public function initLevelLoad() : void
      {
         § <§(§7M§.getLevelForId(§7M§.§9-§));
         if(!isNaN(§[!7§))
         {
            §@!Q§.§7l§.camera.§-!H§(§[!7§);
            §[!7§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §@!Q§.§7l§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§7!Q§;
      }
   }
}
