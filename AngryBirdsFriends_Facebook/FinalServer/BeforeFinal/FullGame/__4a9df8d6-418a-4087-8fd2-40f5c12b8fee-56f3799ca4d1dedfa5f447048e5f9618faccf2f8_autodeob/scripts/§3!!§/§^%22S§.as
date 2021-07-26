package §3!!§
{
   import § !j§.§4#c§;
   import §!#C§.§#H§;
   import §#,§.§]$+§;
   import §,"v§.§;"n§;
   import §`#@§.§7n§;
   
   public class §^"S§ extends §;2§
   {
       
      
      public function §^"S§(param1:§]$+§, param2:§;"n§, param3:§#H§, param4:§4#c§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §?!S§() : Boolean
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
         §7n§.§6#K§.background.playAmbientSound();
      }
   }
}
