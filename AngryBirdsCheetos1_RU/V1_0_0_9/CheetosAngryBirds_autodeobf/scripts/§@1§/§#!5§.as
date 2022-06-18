package §@1§
{
   import §"!@§.§3!+§;
   import §7!U§.§2!7§;
   
   public class §#!5§ extends §-r§
   {
      
      public static const §]U§:String = "LevelLoadStateClassic";
      
      private static var §<u§:Number;
       
      
      public function §#!5§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §%a§() : void
      {
         §3!+§.§'!D§(§3!+§.§'^§());
         §@!Z§ = §,%§;
      }
      
      public static function §"!1§(param1:int) : void
      {
         §^,§ = param1;
         §@!Z§ = §,%§;
      }
      
      public static function §#!,§() : void
      {
         if(§2!7§.§5G§.camera)
         {
            §<u§ = §2!7§.§5G§.camera.manualScale;
         }
         §@!Z§ = §,%§;
      }
      
      override public function initLevelLoad() : void
      {
         §+!H§(§3!+§.getLevelForId(§3!+§.§%2§));
         if(!isNaN(§<u§))
         {
            §2!7§.§5G§.camera.§-<§(§<u§);
            §<u§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §2!7§.§5G§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§]U§;
      }
   }
}
