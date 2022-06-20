package §>"c§
{
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §8"X§.§6#K§;
   import §@#§.§^#Q§;
   
   public class §+!_§ extends §6#K§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §+!_§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§<&§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§]!_§ = §]!_§(§?Q§.getItemByName("Container_Play"));
         §-"<§ = new §-$5§(_loc2_,mLevelManager,§?5§,_loc1_,§-"Q§);
      }
   }
}
