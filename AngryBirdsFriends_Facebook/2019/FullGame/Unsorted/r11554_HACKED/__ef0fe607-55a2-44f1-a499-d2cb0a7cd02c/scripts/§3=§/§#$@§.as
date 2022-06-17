package §3=§
{
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §"$=§.§[§;
   import §+#B§.§ "f§;
   import §3"G§.§16§;
   import §9#o§.§,#t§;
   import §=!2§.§%"T§;
   import §>"Q§.§>!d§;
   import §]"'§.§5$$§;
   
   public class §#$@§ extends §]#A§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §?#A§:§,#t§;
      
      private static var §?%§:§5$$§;
       
      
      public function §#$@§(param1:§'![§, param2:§16§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §^1§() : void
      {
         §#"2§ = §2#k§;
      }
      
      override public function deActivate() : void
      {
         if(§?#A§)
         {
            §?#A§.§1"b§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §5$$§
      {
         return new §5$$§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§=$&§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
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
         var _loc1_:§[#5§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§?%§)
            {
               §?%§ = this.initPackageManager();
            }
            if(!§?#A§)
            {
               §?#A§ = new §,#t§();
               _loc3_ = §+y§.assetsUrl || "";
               _loc4_ = §+y§.buildNumber || "";
               §?#A§.init(§>!d§.§5!9§(),_loc3_,_loc4_,§?%§);
            }
            §?#A§.§"a§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §?#A§.§=!D§(<pack url="{_loc2_}"/>);
            §?#A§.§!#c§(this.§^"c§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §^"c§() : void
      {
         var _loc1_:§=$&§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§ "f§.§@!S§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §%"T§.§;`§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §%"T§.§;`§.§,#l§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §%D§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §%D§(§8$8§.STATE_NAME);
      }
      
      public function §9=§(param1:int) : void
      {
         §=e§ = param1;
         §#"2§ = §2#k§;
      }
   }
}
