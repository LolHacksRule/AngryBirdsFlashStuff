package §1v§
{
   import §&!j§.§5#+§;
   import §9"U§.§'!;§;
   import §=Z§.§@!8§;
   import com.angrybirds.§<!J§;
   import §null §.§5#§;
   
   public class §!!b§ extends §]"2§
   {
       
      
      public function §!!b§(param1:§@!8§, param2:§5#§, param3:§'!;§, param4:§5#+§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function isAllowedToChangeStateRegardingPowerUpsRunning() : Boolean
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
         §<!J§.§=!%§.background.playAmbientSound();
      }
   }
}
