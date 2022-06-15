package §!!L§
{
   import § "L§.§23§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §7#$§.§]#q§;
   import §@r§.§9#V§;
   import §@r§.§>!A§;
   import §]§.§ "F§;
   import §`,§.§7!$§;
   
   public class §'"H§ extends § "F§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §'"H§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§3#J§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§23§ = §23§(§;!w§.getItemByName("Container_Pause"));
         §;!V§ = new §>!A§(_loc2_,mLevelManager,_loc1_,§#$&§,§`?§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§3#J§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§23§ = §23§(§;!w§.getItemByName("Container_Play"));
         §2#x§ = new §9#V§(_loc2_,mLevelManager,§!"K§,_loc1_,§#$&§);
      }
      
      override public function getVictoryStateName() : String
      {
         return §]!p§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §6$1§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §=$3§.STATE_NAME;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         §7!$§.§+!,§.§[#h§();
      }
   }
}
