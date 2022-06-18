package §[#v§
{
   import § #_§.§?!>§;
   import §2$;§.§!"e§;
   import §4#$§.§5"L§;
   import §7#o§.§@#>§;
   import §7#o§.§]!9§;
   import §>#Y§.§@!p§;
   import §?o§.§4#?§;
   import §^1§.§2#u§;
   
   public class §?"R§ extends §2#u§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §?"R§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§@!p§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Pause"));
         §9"F§ = new §@#>§(_loc2_,mLevelManager,_loc1_,§,#a§,§%!o§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§@!p§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§!"e§ = §!"e§(§@!D§.getItemByName("Container_Play"));
         §-!=§ = new §]!9§(_loc2_,mLevelManager,§%#4§,_loc1_,§,#a§);
      }
      
      override public function getVictoryStateName() : String
      {
         return §>#P§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §]#<§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §'"b§.STATE_NAME;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         §5"L§.§3"1§.§>"$§();
      }
   }
}
