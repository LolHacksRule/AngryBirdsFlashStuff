package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §3i§ extends §^"2§
   {
       
      
      public function §3i§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super.specialPower(param1,param2,param3);
         }
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(specialPowerUsed)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§push(false);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return super.canActivateSpecialPower;
               }
               return §§pop();
            }
         }
         §§goto(addr57);
      }
   }
}
