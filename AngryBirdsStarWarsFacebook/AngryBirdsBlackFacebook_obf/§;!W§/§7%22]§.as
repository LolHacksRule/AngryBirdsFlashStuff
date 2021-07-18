package §;!W§
{
   import §+D§.§ #^§;
   import §,"N§.§@>§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   
   public class §7"]§ extends §[!§
   {
       
      
      public function §7"]§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
         }
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.enable(param1);
         }
         do
         {
            §,!q§.§9!,§.background.playAmbientSound();
         }
         while(!(_loc2_ || _loc2_));
         
      }
   }
}
