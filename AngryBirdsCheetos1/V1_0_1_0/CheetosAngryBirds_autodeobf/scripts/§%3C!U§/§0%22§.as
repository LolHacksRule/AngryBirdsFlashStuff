package §<!U§
{
   import §!J§.§[&§;
   import §<!+§.§[!!§;
   
   public class §0"§ extends §&v§
   {
      
      public static const §`O§:String = "LevelLoadStateClassic";
      
      private static var §]!8§:Number;
       
      
      public function §0"§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §>!U§() : void
      {
         §[!!§.§,s§(§[!!§.§?I§());
         §@4§ = §%!U§;
      }
      
      public static function §9n§(param1:int) : void
      {
         §51§ = param1;
         §@4§ = §%!U§;
      }
      
      public static function §!7§() : void
      {
         if(§[&§.§&!'§.camera)
         {
            §]!8§ = §[&§.§&!'§.camera.manualScale;
         }
         §@4§ = §%!U§;
      }
      
      override public function initLevelLoad() : void
      {
         §9!I§(§[!!§.§1L§(§[!!§.§7!F§));
         if(!isNaN(§]!8§))
         {
            §[&§.§&!'§.camera.§?!R§(§]!8§);
            §]!8§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §[&§.§&!'§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§`O§;
      }
   }
}
