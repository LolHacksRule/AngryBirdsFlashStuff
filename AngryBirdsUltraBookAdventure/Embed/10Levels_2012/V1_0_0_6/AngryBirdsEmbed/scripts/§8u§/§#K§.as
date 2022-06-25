package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#K§ extends §8j§
   {
      
      public static const §@!=§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@!=§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §#K§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr33);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         addr33:
         var _loc2_:Number = §?n§().GetPosition().x;
         var _loc3_:Number = §?n§().GetPosition().y;
         §§push(param1);
         §§push(§@!=§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(!_loc6_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§0r§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§9R§ = true;
         if(!_loc6_)
         {
            _loc4_.§?n§().SetLinearVelocity(new b2Vec2(0,100));
            if(_loc5_)
            {
               §?n§().ApplyImpulse(new b2Vec2(30 * §?n§().GetMass(),-60 * §?n§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(_loc8_ || param1)
            {
               §§goto(addr54);
            }
            §§goto(addr58);
         }
         addr54:
         if(§=t§)
         {
            if(!_loc7_)
            {
               addr58:
               §@^§ = §%!J§ - 1;
               if(!(_loc7_ && param2))
               {
                  §7!;§.setDamagedFrame();
               }
            }
         }
         return §@^§;
      }
   }
}
