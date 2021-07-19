package §]">§
{
   import §"!&§.§+W§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §=!;§ extends §6!y§
   {
      
      public static const §!!p§:String = "SmallBlueBird";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!p§ = "SmallBlueBird";
         }
      }
      
      public function §=!;§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               if(_loc13_ || param3)
               {
                  return false;
               }
            }
         }
         var _loc4_:Number = §^!z§().GetPosition().x;
         var _loc5_:Number = §^!z§().GetPosition().y;
         var _loc6_:Number = §^!z§().GetLinearVelocity().x;
         var _loc7_:Number = §^!z§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         §§push(_loc6_);
         if(_loc13_ || param3)
         {
            §§push(-§§pop());
            if(_loc13_ || param1)
            {
               §§push(§§pop() / _loc8_);
               if(!(_loc12_ && this))
               {
                  addr94:
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            §§push(_loc7_);
            if(!_loc12_)
            {
               §§push(§§pop() / _loc8_);
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc10_:* = §§pop();
            §§push(§§findproperty(§ 6§));
            §§push(param1);
            §§push(§!!p§);
            §§push(_loc4_);
            if(_loc13_)
            {
               §§push(_loc10_);
               if(_loc13_)
               {
                  addr125:
                  §§push(§§pop() - §§pop());
                  §§push(_loc5_);
                  if(!(_loc12_ && this))
                  {
                     §§push(§§pop() - _loc9_);
                  }
               }
               var _loc11_:§ 6§;
               §§push(_loc11_ = §§pop().§ 6§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,true,false,false,scale)));
               §§push(§§findproperty(b2Vec2));
               §§push(_loc6_);
               if(!(_loc12_ && param1))
               {
                  §§push(7 * _loc10_);
                  if(!_loc12_)
                  {
                     addr162:
                     §§push(§§pop() - §§pop());
                     §§push(_loc7_);
                     if(!_loc12_)
                     {
                        addr165:
                        §§push(§§pop() - 7 * _loc9_);
                     }
                     §§pop().§=9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                     §§push(§§findproperty(§ 6§));
                     §§push(param1);
                     §§push(§!!p§);
                     §§push(_loc4_);
                     if(_loc13_)
                     {
                        §§push(_loc10_);
                        if(_loc13_ || param3)
                        {
                           addr186:
                           §§push(§§pop() + §§pop());
                           §§push(_loc5_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(§§pop() + _loc9_);
                           }
                        }
                        §§push(_loc11_ = §§pop().§ 6§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,true,false,false,scale)));
                        §§push(§§findproperty(b2Vec2));
                        §§push(_loc6_);
                        if(!_loc12_)
                        {
                           §§push(7 * _loc10_);
                           if(!(_loc12_ && param1))
                           {
                              §§goto(addr223);
                           }
                           §§goto(addr236);
                        }
                        addr223:
                        §§push(§§pop() + §§pop());
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           addr236:
                           §§push(§§pop() + 7 * _loc9_);
                        }
                        §§pop().§=9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                        return true;
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr165);
               }
               §§goto(addr162);
            }
            §§goto(addr125);
         }
         §§goto(addr94);
      }
   }
}
