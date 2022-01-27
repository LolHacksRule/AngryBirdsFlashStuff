package §;"G§
{
   import §,!7§.§5!k§;
   import §4",§.§,!j§;
   import §5R§.§6"7§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   
   public class §5"2§ extends §3!>§
   {
       
      
      public function §5"2§(param1:§5!k§, param2:§,!j§, param3:§6"7§, param4:§;l§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §9!p§() : Boolean
      {
         return true;
      }
      
      public function §6!k§() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      public function § !Q§() : Boolean
      {
         return true;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §8!w§.§5!V§.background.playAmbientSound();
      }
   }
}
