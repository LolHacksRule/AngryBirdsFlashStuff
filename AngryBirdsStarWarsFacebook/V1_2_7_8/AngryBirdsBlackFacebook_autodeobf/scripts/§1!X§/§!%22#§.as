package §1!X§
{
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §`"8§.§4"K§;
   import com.angrybirds.§;!e§;
   
   public class §!"#§ extends §0"A§
   {
       
      
      public function §!"#§(param1:§,m§, param2:§7!m§, param3:§4"K§, param4:§="B§)
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
         §;!e§.§<x§.background.playAmbientSound();
      }
   }
}
