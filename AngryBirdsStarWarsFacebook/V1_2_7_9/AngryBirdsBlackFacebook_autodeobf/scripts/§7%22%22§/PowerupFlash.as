package §7""§
{
   import §3"$§.§@!3§;
   import §3"$§.§]k§;
   import com.angrybirds.§;!e§;
   
   public class PowerupFlash extends §@!3§
   {
      
      private static const §^!A§:String = "PowerupFlash";
       
      
      public function PowerupFlash()
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§]k§ = §;!e§.§<x§.animationManager;
         if(!_loc1_.getAnimation(§^!A§))
         {
            _loc2_ = [];
            _loc3_ = 1;
            while(_loc3_ <= 9)
            {
               _loc2_.push("POWERUP_FLASH_0" + _loc3_);
               _loc3_++;
            }
            _loc1_.§`'§(§^!A§,_loc2_);
         }
         super(_loc1_.getAnimation(§^!A§),false,20);
      }
   }
}
