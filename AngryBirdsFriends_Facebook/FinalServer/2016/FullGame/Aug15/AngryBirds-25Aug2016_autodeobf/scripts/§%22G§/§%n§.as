package §"G§
{
   import §#v§.§#!?§;
   import §%$!§.§,"n§;
   import §'U§.§]#[§;
   import §6"r§.§0"<§;
   import §?§.§>"$§;
   
   public class §%n§ extends §,"0§
   {
       
      
      public function §%n§(param1:§0"<§, param2:§#!?§, param3:§,"n§, param4:§]#[§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §-"3§() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeStateRegardingPowerUpsSyncing() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeFailState() : Boolean
      {
         return true;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §>"$§.§3#'§.background.playAmbientSound();
      }
   }
}
