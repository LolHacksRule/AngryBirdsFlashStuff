package §94§
{
   import § $%§.§ $7§;
   import §&"J§.§4b§;
   import §&$!§.§+#!§;
   import §6"r§.§!#A§;
   import §6V§.§4!v§;
   import §>!I§.§@!q§;
   import §@#§.§9##§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   
   public class §9#P§ extends §?"D§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §const§:§@!q§;
      
      private static var §4!1§:§4b§;
       
      
      public function §9#P§(param1:§^#Q§, param2:§+#!§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §5#M§() : void
      {
         §6$7§ = §-]§;
      }
      
      override public function deActivate() : void
      {
         if(§const§)
         {
            §const§.§<!z§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §4b§
      {
         return new §4b§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§]#B§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
         }
         else
         {
            this.loadLevel();
         }
      }
      
      protected function loadLevel() : void
      {
         var _loc2_:* = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§9##§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§4!1§)
            {
               §4!1§ = this.initPackageManager();
            }
            if(!§const§)
            {
               §const§ = new §@!q§();
               _loc3_ = §`$=§.assetsUrl || "";
               _loc4_ = §`$=§.buildNumber || "";
               §const§.init(§ $7§.§<J§(),_loc3_,_loc4_,§4!1§);
            }
            §const§.§8#N§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §const§.§'"g§(<pack url="{_loc2_}"/>);
            §const§.§?!+§(this.§"#w§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §"#w§() : void
      {
         var _loc1_:§]#B§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§4!v§.§4#K§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §!#A§.§#F§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §!#A§.§#F§.§7!B§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §5"p§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §5"p§(§7!c§.STATE_NAME);
      }
      
      public function §%J§(param1:int) : void
      {
         §>"w§ = param1;
         §6$7§ = §-]§;
      }
   }
}
