package §,#§
{
   import §"!G§.§3!f§;
   import §#!n§.§+"3§;
   import §%f§.§[!l§;
   import §5h§.§-!Q§;
   import §8!e§.§!!E§;
   import §8!e§.§,!M§;
   import §8!e§.§3"&§;
   import §]!5§.§^""§;
   import com.angrybirds.§4"6§;
   
   public class § K§ extends §6B§
   {
      
      public static const §'u§:String = "LevelLoadStateClassic";
      
      private static var §"?§:§-!Q§;
      
      private static var §3!'§:§+"3§;
       
      
      public function § K§(param1:§3"&§, param2:§3!f§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §>E§() : void
      {
         §2%§ = §2!w§;
      }
      
      override public function deActivate() : void
      {
         if(§"?§)
         {
            §"?§.§!!V§();
         }
         super.deActivate();
      }
      
      protected function §>!j§() : §+"3§
      {
         return new §+"3§(§!3§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§,!M§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§!!E§ = §!3§.getLevelForId(§!3§.currentLevel);
         if(_loc1_)
         {
            §,!!§(_loc1_);
         }
         else
         {
            _loc2_ = §!3§.getEpisodeForLevel(§!3§.currentLevel);
            if(_loc2_)
            {
               if(!§3!'§)
               {
                  §3!'§ = this.§>!j§();
               }
               if(!§"?§)
               {
                  §"?§ = new §-!Q§();
                  _loc4_ = §;w§.assetsUrl || "";
                  _loc5_ = §;w§.buildNumber || "";
                  §"?§.init(§^""§.§%W§(),_loc4_,_loc5_,§3!'§);
               }
               §"?§.§7!f§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §"?§.§7l§(<pack url="{_loc3_}"/>);
               §"?§.§]"&§(this.§7!!§);
            }
         }
      }
      
      protected function §7!!§() : void
      {
         var _loc1_:§!!E§ = §!3§.getLevelForId(§!3§.currentLevel);
         if(_loc1_)
         {
            §,!!§(_loc1_);
            return;
         }
         throw new Error("Level " + §!3§.currentLevel + " not found in the package",§[!l§.§^"$§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §4"6§.§;!k§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §4"6§.§;!k§.§5!K§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §'"6§(this.§0"4§());
      }
      
      protected function §0"4§() : String
      {
         return StatePlay.§'u§;
      }
      
      override public function onLevelLoadError() : void
      {
         §'"6§(§=%§.§'u§);
      }
      
      public function §;!'§(param1:int) : void
      {
         §2>§ = param1;
         §2%§ = §2!w§;
      }
   }
}
