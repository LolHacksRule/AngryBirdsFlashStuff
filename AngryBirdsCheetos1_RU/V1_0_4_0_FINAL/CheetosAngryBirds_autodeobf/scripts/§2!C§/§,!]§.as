package §2!C§
{
   import §39§.§-W§;
   import §^Q§.§,^§;
   
   public class §,!]§ extends §4[§
   {
      
      public static const §+!a§:String = "LevelLoadStateClassic";
      
      private static var §4!P§:Number;
       
      
      public function §,!]§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §31§() : void
      {
         §-W§.§#N§(§-W§.§[?§());
         §8!-§ = §4§;
      }
      
      public static function §!z§(param1:int) : void
      {
         §`!]§ = param1;
         §8!-§ = §4§;
      }
      
      public static function §10§() : void
      {
         if(§,^§.§0K§.camera)
         {
            §4!P§ = §,^§.§0K§.camera.manualScale;
         }
         §8!-§ = §4§;
      }
      
      override public function initLevelLoad() : void
      {
         §=K§(§-W§.§2d§(§-W§.§,[§));
         if(!isNaN(§4!P§))
         {
            §,^§.§0K§.camera.§0@§(§4!P§);
            §4!P§ = NaN;
         }
      }
      
      override public function isReady() : Boolean
      {
         return §,^§.§0K§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§+!a§;
      }
   }
}
