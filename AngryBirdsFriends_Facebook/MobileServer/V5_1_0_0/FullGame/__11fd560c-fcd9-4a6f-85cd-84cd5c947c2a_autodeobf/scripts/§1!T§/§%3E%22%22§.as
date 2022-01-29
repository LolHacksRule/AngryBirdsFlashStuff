package §1!T§
{
   import §2G§.§3W§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   
   public class §>""§ extends §##[§
   {
       
      
      public function §>""§(param1:§[#K§, param2:§8=§, param3:§3W§, param4:§""C§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §!$,§() : Boolean
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
         §3#U§.§#$4§.background.playAmbientSound();
      }
   }
}
