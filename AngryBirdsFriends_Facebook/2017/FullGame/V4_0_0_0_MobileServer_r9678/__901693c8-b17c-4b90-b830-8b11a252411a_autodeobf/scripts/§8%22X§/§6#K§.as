package §8"X§
{
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §94§.§&I§;
   import §;!b§.§0w§;
   import §;!b§.§7">§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   
   public class §6#K§ extends §&I§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §6#K§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Pause"));
         §@c§ = new §0w§(_loc2_,mLevelManager,_loc1_,§-"Q§,§0#<§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Play"));
         §-"<§ = new §7">§(_loc2_,mLevelManager,§?5§,_loc1_,§-"Q§);
      }
      
      override public function getVictoryStateName() : String
      {
         return §#p§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §>!k§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §`$>§.STATE_NAME;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         §-!t§.§ "D§.§+"p§();
      }
   }
}
