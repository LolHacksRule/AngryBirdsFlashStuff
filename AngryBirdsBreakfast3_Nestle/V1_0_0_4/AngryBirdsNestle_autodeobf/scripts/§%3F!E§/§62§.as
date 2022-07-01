package §?!E§
{
   import §'<§.§77§;
   import §'<§.§;r§;
   import §'<§.§=!o§;
   import §3"%§.§>K§;
   import §;!b§.§%>§;
   import §@!2§.§2A§;
   import §[j§.§8&§;
   import §`6§.§7!q§;
   import com.angrybirds.§6U§;
   
   public class §62§ extends §[!l§
   {
      
      public static const §+B§:String = "LevelLoadStateClassic";
      
      private static var §+!l§:§2A§;
      
      private static var §;![§:§8&§;
       
      
      public function §62§(param1:§=!o§, param2:§%>§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function § case§() : void
      {
         §,8§ = §+s§;
      }
      
      override public function deActivate() : void
      {
         if(§+!l§)
         {
            §+!l§.§1!T§();
         }
         super.deActivate();
      }
      
      protected function §;!Q§() : §8&§
      {
         return new §8&§(§+o§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§77§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§;r§ = §+o§.getLevelForId(§+o§.currentLevel);
         if(_loc1_)
         {
            §[!<§(_loc1_);
         }
         else
         {
            _loc2_ = §+o§.getEpisodeForLevel(§+o§.currentLevel);
            if(_loc2_)
            {
               if(!§;![§)
               {
                  §;![§ = this.§;!Q§();
               }
               if(!§+!l§)
               {
                  §+!l§ = new §2A§();
                  _loc4_ = §4!f§.assetsUrl || "";
                  _loc5_ = §4!f§.buildNumber || "";
                  §+!l§.init(§>K§.§-b§(),_loc4_,_loc5_,§;![§);
               }
               §+!l§.§;" §();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §+!l§.§%R§(<pack url="{_loc3_}"/>);
               §+!l§.§3O§(this.§?!z§);
            }
         }
      }
      
      protected function §?!z§() : void
      {
         var _loc1_:§;r§ = §+o§.getLevelForId(§+o§.currentLevel);
         if(_loc1_)
         {
            §[!<§(_loc1_);
            return;
         }
         throw new Error("Level " + §+o§.currentLevel + " not found in the package",§7!q§.§2"&§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §6U§.§+_§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §6U§.§+_§.§^!a§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §0!w§(this.§=!+§());
      }
      
      protected function §=!+§() : String
      {
         return StatePlay.§+B§;
      }
      
      override public function onLevelLoadError() : void
      {
         §0!w§(§]l§.§+B§);
      }
      
      public function §,!!§(param1:int) : void
      {
         §@!o§ = param1;
         §,8§ = §+s§;
      }
   }
}
