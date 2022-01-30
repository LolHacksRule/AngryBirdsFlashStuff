package §`!6§
{
   import §#!`§.§%!w§;
   import §-!F§.§<s§;
   import §6!C§.§;-§;
   import §6%§.§8A§;
   import §>!a§.§-?§;
   import §>!a§.§5l§;
   import §>!a§.§>"2§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   
   public class §-%§ extends §<!y§
   {
      
      public static const §]O§:String = "LevelLoadStateClassic";
      
      private static var §-"3§:§8A§;
      
      private static var §4X§:§%!w§;
       
      
      public function §-%§(param1:§5l§, param2:§-!<§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §%!@§() : void
      {
         §"!Z§ = §`t§;
      }
      
      override public function deActivate() : void
      {
         if(§-"3§)
         {
            §-"3§.§=S§();
         }
         super.deActivate();
      }
      
      protected function §&$§() : §%!w§
      {
         return new §%!w§(§^!§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§>"2§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§-?§ = §^!§.getLevelForId(§^!§.currentLevel);
         if(_loc1_)
         {
            §3!i§(_loc1_);
         }
         else
         {
            _loc2_ = §^!§.getEpisodeForLevel(§^!§.currentLevel);
            if(_loc2_)
            {
               if(!§4X§)
               {
                  §4X§ = this.§&$§();
               }
               if(!§-"3§)
               {
                  §-"3§ = new §8A§();
                  _loc4_ = §2!;§.assetsUrl || "";
                  _loc5_ = §2!;§.buildNumber || "";
                  §-"3§.init(§;-§.§1!O§(),_loc4_,_loc5_,§4X§);
               }
               §-"3§.§-!p§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §-"3§.§,!K§(<pack url="{_loc3_}"/>);
               §-"3§.§;`§(this.§ var§);
            }
         }
      }
      
      protected function § var§() : void
      {
         var _loc1_:§-?§ = §^!§.getLevelForId(§^!§.currentLevel);
         if(_loc1_)
         {
            §3!i§(_loc1_);
            return;
         }
         throw new Error("Level " + §^!§.currentLevel + " not found in the package",§<s§.§8P§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §4!l§.§,!8§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §4!l§.§,!8§.§&M§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §8=§(this.§&!9§());
      }
      
      protected function §&!9§() : String
      {
         return StatePlay.§]O§;
      }
      
      override public function onLevelLoadError() : void
      {
         §8=§(§?E§.§]O§);
      }
      
      public function §&!E§(param1:int) : void
      {
         §1Q§ = param1;
         §"!Z§ = §`t§;
      }
   }
}
