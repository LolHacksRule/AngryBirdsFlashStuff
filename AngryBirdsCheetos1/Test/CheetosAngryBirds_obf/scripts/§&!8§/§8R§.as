package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §6!H§.b2Vec2;
   import §^a§.Sprite;
   
   public class §8R§ extends §]V§
   {
       
      
      public function §8R§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc10_)
            {
               if(!§§pop())
               {
                  if(!(_loc11_ && _loc2_))
                  {
                     §§goto(addr37);
                  }
               }
               var _loc2_:Number = §`e§().GetPosition().x;
               var _loc3_:Number = §`e§().GetPosition().y;
               var _loc4_:Number = §`e§().GetLinearVelocity().x;
               var _loc5_:Number = §`e§().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc10_ || _loc2_)
                  {
                     §§push(§§pop() / _loc6_);
                     if(!_loc11_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc10_ || _loc2_)
               {
                  §§push(§§pop() / _loc6_);
                  if(!(_loc11_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(param1);
               §§push("BIRD_BLUE");
               §§push(_loc2_);
               if(_loc10_ || this)
               {
                  §§push(_loc8_);
                  if(!_loc11_)
                  {
                     addr138:
                     §§push(§§pop() - §§pop());
                     §§push(_loc3_);
                     if(!(_loc11_ && _loc2_))
                     {
                        §§push(§§pop() - _loc7_);
                     }
                  }
                  var _loc9_:§[g§;
                  §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                  §§push(§§findproperty(b2Vec2));
                  §§push(_loc4_);
                  if(_loc10_ || this)
                  {
                     §§push(7 * _loc8_);
                     if(!_loc11_)
                     {
                        addr172:
                        §§push(§§pop() - §§pop());
                        §§push(_loc5_);
                        if(_loc10_)
                        {
                           addr175:
                           §§push(§§pop() - 7 * _loc7_);
                        }
                        §§pop().§5! §(new §§pop().b2Vec2(§§pop(),§§pop()));
                        §§push(param1);
                        §§push("BIRD_BLUE");
                        §§push(_loc2_);
                        if(!(_loc11_ && param1))
                        {
                           §§push(_loc8_);
                           if(_loc10_ || _loc3_)
                           {
                              addr200:
                              §§push(§§pop() + §§pop());
                              §§push(_loc3_);
                              if(!(_loc11_ && this))
                              {
                                 addr208:
                                 §§push(§§pop() + _loc7_);
                              }
                              §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc4_);
                              if(_loc10_)
                              {
                                 §§push(7 * _loc8_);
                                 if(!(_loc11_ && param1))
                                 {
                                    addr234:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc5_);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(§§pop() + 7 * _loc7_);
                                    }
                                 }
                                 §§pop().§5! §(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 return true;
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr172);
               }
               §§goto(addr138);
            }
            §§goto(addr37);
         }
         addr37:
         return false;
      }
   }
}
