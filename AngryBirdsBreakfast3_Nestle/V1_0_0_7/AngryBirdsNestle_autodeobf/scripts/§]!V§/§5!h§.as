package §]!V§
{
   import §!!&§.§'$§;
   import §!P§.§2"4§;
   import §!P§.§4K§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §2,§.§"G§;
   import §3@§.§4!m§;
   import §=M§.§&!1§;
   import com.angrybirds.§#Z§;
   
   public class §5!h§ extends §<l§
   {
      
      public static const §+a§:String = "LevelLoadStateClassic";
      
      private static var §79§:§&!1§;
      
      private static var §1!;§:§4!m§;
       
      
      public function §5!h§(param1:§5!1§, param2:§&S§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §`!H§() : void
      {
         §0b§ = §3!S§;
      }
      
      override public function deActivate() : void
      {
         if(§79§)
         {
            §79§.§<!h§();
         }
         super.deActivate();
      }
      
      protected function §8!?§() : §4!m§
      {
         return new §4!m§(§97§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§4K§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§2"4§ = §97§.getLevelForId(§97§.currentLevel);
         if(_loc1_)
         {
            §1[§(_loc1_);
         }
         else
         {
            _loc2_ = §97§.getEpisodeForLevel(§97§.currentLevel);
            if(_loc2_)
            {
               if(!§1!;§)
               {
                  §1!;§ = this.§8!?§();
               }
               if(!§79§)
               {
                  §79§ = new §&!1§();
                  _loc4_ = §90§.assetsUrl || "";
                  _loc5_ = §90§.buildNumber || "";
                  §79§.init(§"G§.§5!>§(),_loc4_,_loc5_,§1!;§);
               }
               §79§.§=a§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §79§.§<!'§(<pack url="{_loc3_}"/>);
               §79§.§ !4§(this.§@!h§);
            }
         }
      }
      
      protected function §@!h§() : void
      {
         var _loc1_:§2"4§ = §97§.getLevelForId(§97§.currentLevel);
         if(_loc1_)
         {
            §1[§(_loc1_);
            return;
         }
         throw new Error("Level " + §97§.currentLevel + " not found in the package",§'$§.§&Y§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §#Z§.§'0§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §#Z§.§'0§.§7F§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §8!`§(this.§![§());
      }
      
      protected function §![§() : String
      {
         return StatePlay.§+a§;
      }
      
      override public function onLevelLoadError() : void
      {
         §8!`§(§&g§.§+a§);
      }
      
      public function §>!!§(param1:int) : void
      {
         §@8§ = param1;
         §0b§ = §3!S§;
      }
   }
}
