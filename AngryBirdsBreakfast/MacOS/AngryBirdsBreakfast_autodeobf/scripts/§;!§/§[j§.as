package §;!§
{
   import §"n§.§?!=§;
   import §#"&§.§6!F§;
   import §1!`§.§8!s§;
   import §8!K§.§3%§;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §@g§.§;!5§;
   import com.angrybirds.§&!"§;
   
   public class §[j§ extends §?!A§
   {
      
      public static const §-!q§:String = "LevelLoadStateClassic";
      
      private static var §4!O§:§;!5§;
      
      private static var §>H§:§6!F§;
       
      
      public function §[j§(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §=!<§() : void
      {
         §0@§ = §"c§;
      }
      
      override public function deActivate() : void
      {
         if(§4!O§)
         {
            §4!O§.§""0§();
         }
         super.deActivate();
      }
      
      protected function §'X§() : §6!F§
      {
         return new §6!F§(§&" §);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§3%§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§5!0§ = §&" §.getLevelForId(§&" §.currentLevel);
         if(_loc1_)
         {
            §5i§(_loc1_);
         }
         else
         {
            _loc2_ = §&" §.getEpisodeForLevel(§&" §.currentLevel);
            if(_loc2_)
            {
               if(!§>H§)
               {
                  §>H§ = this.§'X§();
               }
               if(!§4!O§)
               {
                  §4!O§ = new §;!5§();
                  _loc4_ = §#Z§.assetsUrl || "";
                  _loc5_ = §#Z§.buildNumber || "";
                  §4!O§.init(§8!s§.§3!b§(),_loc4_,_loc5_,§>H§);
               }
               §4!O§.§6S§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §4!O§.§>!&§(<pack url="{_loc3_}"/>);
               §4!O§.§>!]§(this.§'!Y§);
            }
         }
      }
      
      protected function §'!Y§() : void
      {
         var _loc1_:§5!0§ = §&" §.getLevelForId(§&" §.currentLevel);
         if(_loc1_)
         {
            §5i§(_loc1_);
            return;
         }
         throw new Error("Level " + §&" §.currentLevel + " not found in the package",§?!=§.§[!,§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §&!"§.§1!D§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §&!"§.§1!D§.§@K§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §<f§(this.§1f§());
      }
      
      protected function §1f§() : String
      {
         return StatePlay.§-!q§;
      }
      
      override public function onLevelLoadError() : void
      {
         §<f§(§+A§.§-!q§);
      }
      
      public function §+"+§(param1:int) : void
      {
         §0!"§ = param1;
         §0@§ = §"c§;
      }
   }
}
