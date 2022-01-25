package §%n§
{
   import §-v§.§,!1§;
   import §86§.§!!d§;
   
   public class §4-§ extends §+!W§
   {
      
      public static const §^6§:String = "LevelLoadStateClassic";
      
      private static var §'7§:Number;
       
      
      public function §4-§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §^!F§() : void
      {
         §!!d§.§do §(§!!d§.§;[§());
         §8!6§ = §`!'§;
      }
      
      public static function §#l§(param1:int) : void
      {
         §56§ = param1;
         §8!6§ = §`!'§;
      }
      
      public static function §[^§() : void
      {
         if(§,!1§.§2T§.camera)
         {
            §'7§ = §,!1§.§2T§.camera.manualScale;
         }
         §8!6§ = §`!'§;
      }
      
      override public function initLevelLoad() : void
      {
         §<]§(§!!d§.§2!H§(§!!d§.§%1§));
         if(!isNaN(§'7§))
         {
            §,!1§.§2T§.camera.§if §(§'7§);
            §'7§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         §'! §.enableLogOutButton(false);
      }
      
      override public function isReady() : Boolean
      {
         return §,!1§.§2T§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§^6§;
      }
   }
}
