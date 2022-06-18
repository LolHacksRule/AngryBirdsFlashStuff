package §+!8§
{
   import §#b§.§5!#§;
   import §@!W§.§8!W§;
   
   public class §=!S§ extends §8B§
   {
      
      public static const §,!+§:String = "LevelLoadStateClassic";
      
      private static var §9Q§:Number;
       
      
      public function §=!S§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §20§() : void
      {
         §5!#§.§6F§(§5!#§.§8!<§());
         §^!L§ = §%!5§;
      }
      
      public static function §-a§(param1:int) : void
      {
         §8!Q§ = param1;
         §^!L§ = §%!5§;
      }
      
      public static function §?#§() : void
      {
         if(§8!W§.§=X§.camera)
         {
            §9Q§ = §8!W§.§=X§.camera.manualScale;
         }
         §^!L§ = §%!5§;
      }
      
      override public function initLevelLoad() : void
      {
         §>!5§(§5!#§.getLevelForId(§5!#§.§'D§));
         if(!isNaN(§9Q§))
         {
            §8!W§.§=X§.camera.§=I§(§9Q§);
            §9Q§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §8!W§.§=X§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§,!+§;
      }
   }
}
