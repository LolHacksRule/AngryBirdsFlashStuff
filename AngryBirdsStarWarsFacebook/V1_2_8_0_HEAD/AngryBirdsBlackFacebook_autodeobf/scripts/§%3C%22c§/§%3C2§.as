package §<"c§
{
   import §%R§.§["N§;
   import §,"N§.§'#E§;
   import §1!i§.§8"x§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §?m§.§8!B§;
   import §`!o§.§6",§;
   import com.angrybirds.§,!q§;
   
   public class §<2§ extends §9#O§
   {
      
      public static const §^!7§:String = "LevelLoadStateClassic";
      
      private static var §""z§:§["N§;
      
      private static var §<E§:§'#E§;
       
      
      public function §<2§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §["V§() : void
      {
         §;#2§ = §1#0§;
      }
      
      override public function deActivate() : void
      {
         if(§""z§)
         {
            §""z§.§6q§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §'#E§
      {
         return new §'#E§(§+!b§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§3![§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§8!B§ = §+!b§.getLevelForId(§+!b§.currentLevel);
         if(_loc1_)
         {
            §]h§(_loc1_);
         }
         else
         {
            _loc2_ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
            if(_loc2_)
            {
               if(!§<E§)
               {
                  §<E§ = this.initPackageManager();
               }
               if(!§""z§)
               {
                  §""z§ = new §["N§();
                  _loc4_ = §8X§.assetsUrl || "";
                  _loc5_ = §8X§.buildNumber || "";
                  §""z§.init(§6",§.§<[§(),_loc4_,_loc5_,§<E§);
               }
               §""z§.§;r§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §""z§.§"#]§(<pack url="{_loc3_}"/>);
               §""z§.§,=§(this.§7d§);
            }
         }
      }
      
      protected function §7d§() : void
      {
         var _loc1_:§8!B§ = §+!b§.getLevelForId(§+!b§.currentLevel);
         if(_loc1_)
         {
            §]h§(_loc1_);
            return;
         }
         throw new Error("Level " + §+!b§.currentLevel + " not found in the package",§8"x§.§4g§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §,!q§.§9!,§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §,!q§.§9!,§.§;!F§;
      }
      
      override public function onLevelLoadReady() : void
      {
         § g§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^!7§;
      }
      
      override public function onLevelLoadError() : void
      {
         § g§(§+#?§.§^!7§);
      }
      
      public function §2";§(param1:int) : void
      {
         §2!M§ = param1;
         §;#2§ = §1#0§;
      }
   }
}
