package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   
   public class §<!c§ extends §?"N§
   {
      
      public static const §8>§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8>§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §<!c§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(_loc7_ || param1)
            {
               if(!§§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr40);
                  }
               }
               §§goto(addr40);
            }
            return §§pop();
         }
         addr40:
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         §§push(§§findproperty(§&#=§));
         §§push(param1);
         §§push(§8>§);
         §§push(_loc4_);
         §§push(_loc5_);
         if(_loc7_ || this)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc6_:§&#=§;
         (_loc6_ = §§pop().§&#=§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§;=§.§""3§,false,true,true,scale))).§=!s§ = true;
         if(!(_loc8_ && param3))
         {
            _loc6_.§3!t§().SetLinearVelocity(new b2Vec2(0,100));
         }
         do
         {
            §3!t§().ApplyImpulse(new b2Vec2(30 * §3!t§().GetMass(),-60 * §3!t§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
         }
         while(!_loc7_);
         
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(specialPowerUsed)
            {
               if(_loc2_)
               {
                  addr38:
                  §§push(false);
                  if(_loc2_ || this)
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
            §§goto(addr57);
         }
         §§goto(addr38);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.applyDamage(param1,param2,param3,param4);
         }
         while(specialPowerUsed)
         {
            if(!(_loc6_ && param3))
            {
               health = healthMax - 1;
            }
            if(!(_loc6_ && param2))
            {
               break;
            }
         }
         return health;
      }
   }
}
