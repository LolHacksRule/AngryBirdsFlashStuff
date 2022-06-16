package §3+§
{
   import § !j§.§4#c§;
   import § #s§.§4!$§;
   import § #s§.§?!J§;
   import §!#C§.§#H§;
   import §#,§.§]$+§;
   import §,"v§.§;"n§;
   import §2";§.§#$"§;
   import §<!r§.§'##§;
   
   public class §7#+§ extends §#$"§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §7#+§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§#H§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Pause"));
         §<$'§ = new §?!J§(_loc2_,mLevelManager,_loc1_,§+" §,§7"@§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§#H§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]$+§ = §]$+§(§[$5§.getItemByName("Container_Play"));
         §?!,§ = new §4!$§(_loc2_,mLevelManager,§3!;§,_loc1_,§+" §);
      }
      
      override public function getVictoryStateName() : String
      {
         return §`o§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §#D§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §+">§.STATE_NAME;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         §'##§.§`"H§.§`"M§();
      }
   }
}
