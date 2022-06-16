package §9#B§
{
   import §"!@§.§6!+§;
   import §2G§.§3W§;
   import §2r§.§ L§;
   import §2r§.§-g§;
   import §5P§.§""C§;
   import §8#!§.§5`§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   
   public class §0"h§ extends §6!+§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §0"h§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§3W§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Pause"));
         §?#?§ = new § L§(_loc2_,mLevelManager,_loc1_,§1a§,§@$+§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§3W§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§[#K§ = §[#K§(§`!H§.getItemByName("Container_Play"));
         §-2§ = new §-g§(_loc2_,mLevelManager,§!!p§,_loc1_,§1a§);
      }
      
      override public function getVictoryStateName() : String
      {
         return §1#h§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §=!V§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §+y§.STATE_NAME;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         §5`§.§6!§.§'!"§();
      }
   }
}
