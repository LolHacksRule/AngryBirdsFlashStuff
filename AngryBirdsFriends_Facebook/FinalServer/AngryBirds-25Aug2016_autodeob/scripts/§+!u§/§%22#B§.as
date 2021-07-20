package §+!u§
{
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §'U§.§]#[§;
   import §-"i§.§4"X§;
   import §6"r§.§0"<§;
   
   public class §"#B§ extends §4"X§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §"#B§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Play"));
         §2!z§ = new §4"&§(_loc2_,mLevelManager,§1#p§,_loc1_,§'#w§);
      }
   }
}
