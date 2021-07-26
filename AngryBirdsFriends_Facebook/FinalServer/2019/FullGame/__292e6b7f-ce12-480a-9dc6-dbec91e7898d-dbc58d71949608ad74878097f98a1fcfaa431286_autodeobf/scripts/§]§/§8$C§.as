package §]§
{
   import §#"4§.§@$7§;
   import §&?§.§5"f§;
   import §+`§.§%"q§;
   import §,#,§.§7Y§;
   import §4S§.§<#j§;
   import §7#$§.§3!,§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   
   public class §8$C§ extends §0$C§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §'!-§:§5"f§;
      
      private static var §"#D§:§7Y§;
       
      
      public function §8$C§(param1:§]#q§, param2:§%"q§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §`$A§() : void
      {
         §[#<§ = §<#=§;
      }
      
      override public function deActivate() : void
      {
         if(§'!-§)
         {
            §'!-§.§=#F§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §7Y§
      {
         return new §7Y§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§?# § = mLevelManager.getLevelForId(mLevelManager.currentLevel);
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
         var _loc1_:§3!,§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§"#D§)
            {
               §"#D§ = this.initPackageManager();
            }
            if(!§'!-§)
            {
               §'!-§ = new §5"f§();
               _loc3_ = §@"G§.assetsUrl || "";
               _loc4_ = §@"G§.buildNumber || "";
               §'!-§.init(§<#j§.§<!b§(),_loc3_,_loc4_,§"#D§);
            }
            §'!-§.§?p§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §'!-§.§,b§(<pack url="{_loc2_}"/>);
            §'!-§.§4H§(this.§]$3§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §]$3§() : void
      {
         var _loc1_:§?# § = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§@$7§.§+#M§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §]$?§.§2#§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §]$?§.§2#§.§&"u§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §3#§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §3#§(§#!$§.STATE_NAME);
      }
      
      public function §^#a§(param1:int) : void
      {
         §7#4§ = param1;
         §[#<§ = §<#=§;
      }
   }
}
