package §!!t§
{
   import §"$=§.§'![§;
   import §+"u§.§^"C§;
   import §3"G§.§16§;
   import §3=§.§0!e§;
   import §5!$§.§<c§;
   import §]"'§.§""K§;
   import §]#`§.§ B§;
   import §]#`§.§%7§;
   
   public class §2!S§ extends §0!e§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §2!S§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "stateTournamentPlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§""K§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§<c§ = §<c§(§<"`§.getItemByName("Container_Pause"));
         §;#K§ = new § B§(_loc2_,mLevelManager,_loc1_,§1#@§,§["6§);
         _loc2_.setVisibility(false);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§""K§ = AngryBirdsBase.singleton.dataModel;
         var _loc2_:§<c§ = §<c§(§<"`§.getItemByName("Container_Play"));
         §3"@§ = new §%7§(_loc2_,mLevelManager,§'"A§,_loc1_,§1#@§);
      }
      
      override public function getVictoryStateName() : String
      {
         return §<!x§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return § "X§.STATE_NAME;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §8!k§.STATE_NAME;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         §^"C§.§?q§.§""w§();
      }
   }
}
