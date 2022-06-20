package §[!2§
{
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §6"r§.§!#A§;
   import §@#§.§^#Q§;
   
   public class §=!C§ extends §2#E§
   {
       
      
      public function §=!C§(param1:§]!_§, param2:§^#Q§, param3:§<&§, param4:§+#!§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §7#d§() : Boolean
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
         §!#A§.§#F§.background.playAmbientSound();
      }
   }
}
