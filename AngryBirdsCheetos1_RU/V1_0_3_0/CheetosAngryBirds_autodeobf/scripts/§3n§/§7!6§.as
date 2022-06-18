package §3n§
{
   import §+!^§.§'Y§;
   import §^9§.§[!L§;
   
   public class §7!6§ extends §`U§
   {
      
      public static const §,F§:String = "LevelLoadStateClassic";
      
      private static var §4`§:Number;
       
      
      public function §7!6§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §3w§() : void
      {
         §[!L§.§"!Y§(§[!L§.§6m§());
         §]!A§ = §[!?§;
      }
      
      public static function §[!=§(param1:int) : void
      {
         §#]§ = param1;
         §]!A§ = §[!?§;
      }
      
      public static function §]!D§() : void
      {
         if(§'Y§.§@j§.camera)
         {
            §4`§ = §'Y§.§@j§.camera.manualScale;
         }
         §]!A§ = §[!?§;
      }
      
      override public function initLevelLoad() : void
      {
         §,&§(§[!L§.getLevelForId(§[!L§.§^!X§));
         if(!isNaN(§4`§))
         {
            §'Y§.§@j§.camera.§5!9§(§4`§);
            §4`§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §'Y§.§@j§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§,F§;
      }
   }
}
