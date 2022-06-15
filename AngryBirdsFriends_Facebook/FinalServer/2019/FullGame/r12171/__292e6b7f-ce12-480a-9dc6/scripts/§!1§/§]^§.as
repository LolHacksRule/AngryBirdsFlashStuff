package §!1§
{
   import § "L§.§23§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   
   public class §]^§ extends §&#q§
   {
       
      
      public function §]^§(param1:§23§, param2:§]#q§, param3:§3#J§, param4:§%"q§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §7!<§() : Boolean
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
         §]$?§.§2#§.background.playAmbientSound();
      }
   }
}
