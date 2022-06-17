package §`"S§
{
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §5!$§.§<c§;
   import §=!2§.§%"T§;
   import §]"'§.§""K§;
   
   public class §+l§ extends §]!a§
   {
       
      
      public function §+l§(param1:§<c§, param2:§'![§, param3:§""K§, param4:§16§)
      {
         super(param1,param2,param3,param4);
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §<"9§() : Boolean
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
         §%"T§.§;`§.background.playAmbientSound();
      }
   }
}
