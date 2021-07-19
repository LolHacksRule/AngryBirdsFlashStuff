package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §3!Y§ extends §?"N§
   {
       
      
      public function §3!Y§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.specialPower(param1,param2,param3);
         }
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(specialPowerUsed)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr37:
                  §§push(false);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return super.canActivateSpecialPower;
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr37);
      }
   }
}
