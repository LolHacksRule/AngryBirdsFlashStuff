package § !3§
{
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §2$;§.§!"e§;
   import §>#Y§.§@!p§;
   import §?o§.§4#?§;
   
   public class §^L§ extends §+$E§
   {
       
      
      public function §^L§(param1:§!"e§, param2:§4#?§, param3:§@!p§, param4:§?!>§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §0#b§() : Boolean
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
         §+!p§.§`?§.background.playAmbientSound();
      }
   }
}
