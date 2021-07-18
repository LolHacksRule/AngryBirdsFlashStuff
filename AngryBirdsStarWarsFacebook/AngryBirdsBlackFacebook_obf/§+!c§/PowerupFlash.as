package §+!c§
{
   import §7!F§.§0'§;
   import §7!F§.§`y§;
   import com.angrybirds.§,!q§;
   
   public class PowerupFlash extends §0'§
   {
      
      private static const §@T§:String = "PowerupFlash";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@T§ = "PowerupFlash";
         }
      }
      
      public function PowerupFlash()
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         if(!_loc4_)
         {
            if(!_loc1_.getAnimation(§@T§))
            {
               addr33:
               _loc2_ = [];
               if(!_loc4_)
               {
                  _loc3_ = 1;
               }
               while(true)
               {
                  if(_loc3_ > 9)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!(_loc4_ && this))
                           {
                              _loc1_.§%#M§(§@T§,_loc2_);
                              addr78:
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr91:
                           }
                           _loc3_++;
                        }
                        continue;
                     }
                     §§goto(addr78);
                  }
                  else
                  {
                     _loc2_.push("POWERUP_FLASH_0" + _loc3_);
                  }
                  §§goto(addr91);
               }
            }
            super(_loc1_.getAnimation(§@T§),false,20);
            return;
         }
         §§goto(addr33);
      }
   }
}
