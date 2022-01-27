package §+!c§
{
   import §7!F§.§0'§;
   import §7!F§.§`y§;
   import com.angrybirds.§,!q§;
   
   public class PowerupFlash extends §0'§
   {
      
      private static const §@T§:String = "PowerupFlash";
       
      
      public function PowerupFlash()
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         if(!_loc1_.getAnimation(§@T§))
         {
            _loc2_ = [];
            _loc3_ = 1;
            while(_loc3_ <= 9)
            {
               _loc2_.push("POWERUP_FLASH_0" + _loc3_);
               _loc3_++;
            }
            _loc1_.§%#M§(§@T§,_loc2_);
         }
         super(_loc1_.getAnimation(§@T§),false,20);
      }
   }
}
