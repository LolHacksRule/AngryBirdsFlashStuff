package §,H§
{
   import §3U§.§2!%§;
   import §;A§.§7!K§;
   
   public class §5d§ extends §!d§
   {
      
      public static const §^!O§:String = "LevelLoadStateClassic";
      
      private static var §@$§:Number;
       
      
      public function §5d§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §[!8§() : void
      {
         §2!%§.§4y§(§2!%§.§>1§());
         §-!`§ = §^!!§;
      }
      
      public static function §[#§(param1:int) : void
      {
         §%!H§ = param1;
         §-!`§ = §^!!§;
      }
      
      public static function §=O§() : void
      {
         if(§7!K§.§=j§.camera)
         {
            §@$§ = §7!K§.§=j§.camera.manualScale;
         }
         §-!`§ = §^!!§;
      }
      
      override public function initLevelLoad() : void
      {
         §3B§(§2!%§.§&j§(§2!%§.§<G§));
         if(!isNaN(§@$§))
         {
            §7!K§.§=j§.camera.§!1§(§@$§);
            §@$§ = NaN;
         }
      }
      
      override protected function setInitialState() : void
      {
         §+D§.enableLogOutButton(false);
      }
      
      override public function isReady() : Boolean
      {
         return §7!K§.§=j§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = StatePlay.§^!O§;
      }
   }
}
