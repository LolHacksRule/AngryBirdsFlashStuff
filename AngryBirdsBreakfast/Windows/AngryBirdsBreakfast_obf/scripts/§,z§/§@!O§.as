package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §?s§.§8K§;
   
   public class §@!O§ extends §?!z§
   {
      
      public static const §#5§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §#5§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §@!O§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function activateSpecialPower(param1:§3!#§, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            §§push(super.activateSpecialPower(param1,param2,param3));
            if(!_loc8_)
            {
               if(!§§pop())
               {
                  if(_loc7_)
                  {
                     §§goto(addr34);
                  }
               }
               var _loc4_:Number = §^`§().GetPosition().x;
               var _loc5_:Number = §^`§().GetPosition().y;
               §§push(§§findproperty(§"_§));
               §§push(param1);
               §§push(§#5§);
               §§push(_loc4_);
               §§push(_loc5_);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc6_:§"_§;
               (_loc6_ = §§pop().§"_§(§§pop().§,]§(§§pop(),§§pop(),§§pop(),0,§&"§.§5!1§,false,true,true,scale))).§%!Q§ = true;
               if(!_loc8_)
               {
                  _loc6_.§^`§().SetLinearVelocity(new b2Vec2(0,100));
               }
               do
               {
                  §^`§().ApplyImpulse(new b2Vec2(30 * §^`§().GetMass(),-60 * §^`§().GetMass()),new b2Vec2(_loc4_ - 0.5,_loc5_));
               }
               while(!_loc7_);
               
               return true;
            }
            §§goto(addr34);
         }
         addr34:
         return false;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(specialPowerUsed)
            {
               if(_loc1_ || _loc2_)
               {
                  §§push(false);
                  if(_loc1_ || _loc1_)
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
         }
         §§goto(addr56);
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super.applyDamage(param1,param2,param3,param4);
            while(specialPowerUsed)
            {
               if(!(_loc5_ && param2))
               {
                  if(_loc6_)
                  {
                     health = healthMax - 1;
                     addr66:
                     break;
                  }
                  continue;
               }
               §§goto(addr66);
            }
            return health;
         }
         §§goto(addr66);
      }
   }
}
