package §-"i§
{
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §'U§.§]#[§;
   import §,!=§.§,#?§;
   import §6"r§.§0"<§;
   import §>"^§.§0$§;
   import §>"^§.§3"x§;
   
   public class §4"X§ extends §,#?§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §4"X§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Pause"));
         § ""§ = new §0$§(_loc2_,mLevelManager,_loc1_,§'#w§,§,X§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§,"n§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§0"<§ = §0"<§(§!$§.getItemByName("Container_Play"));
         §2!z§ = new §3"x§(_loc2_,mLevelManager,§1#p§,_loc1_,§'#w§);
      }
      
      override public function getVictoryStateName() : String
      {
         return §6#A§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §^"A§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §;"§.STATE_NAME;
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §!$§.getItemByName("Button_MightyEagle").setVisibility(false);
      }
   }
}
