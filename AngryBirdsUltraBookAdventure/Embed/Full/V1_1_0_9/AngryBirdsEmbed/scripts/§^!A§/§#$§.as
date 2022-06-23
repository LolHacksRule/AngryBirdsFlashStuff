package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#$§ extends §^`§
   {
      
      public static const §"!!§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §"!!§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §#$§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc6_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr38:
                     var _loc2_:Number = §'[§().GetPosition().x;
                     var _loc3_:Number = §'[§().GetPosition().y;
                     §§push(param1);
                     §§push(§"!!§);
                     §§push(_loc2_);
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 0.01);
                     }
                     var _loc4_:§;!%§;
                     (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§?Z§ = true;
                     if(!_loc6_)
                     {
                        _loc4_.§'[§().SetLinearVelocity(new b2Vec2(0,100));
                        if(_loc5_ || this)
                        {
                           addr105:
                           §'[§().ApplyImpulse(new b2Vec2(30 * §'[§().GetMass(),-60 * §'[§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                        }
                        return true;
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr38);
            }
            return §§pop();
         }
         §§goto(addr38);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            if(_loc7_)
            {
               if(§[!E§)
               {
                  if(!(_loc8_ && this))
                  {
                     addr47:
                     §`Y§ = §@!§ - 1;
                     if(_loc7_)
                     {
                        addr53:
                        §;S§.setDamagedFrame();
                     }
                  }
                  §§goto(addr53);
               }
               return §`Y§;
            }
            §§goto(addr47);
         }
         §§goto(addr53);
      }
   }
}
