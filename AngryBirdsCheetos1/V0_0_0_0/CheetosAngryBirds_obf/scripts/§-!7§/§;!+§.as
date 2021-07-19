package §-!7§
{
   import §&!"§.b2World;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §`a§.Sprite;
   
   public class §;!+§ extends §^!1§
   {
       
      
      public function §;!+§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc11_ && param1))
            {
               if(!§§pop())
               {
                  if(!_loc11_)
                  {
                     §§goto(addr32);
                  }
               }
               var _loc2_:Number = §`!#§().GetPosition().x;
               var _loc3_:Number = §`!#§().GetPosition().y;
               var _loc4_:Number = §`!#§().GetLinearVelocity().x;
               var _loc5_:Number = §`!#§().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(!_loc11_)
               {
                  §§push(-§§pop());
                  if(!_loc11_)
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
               if(!_loc11_)
               {
                  §§push(§§pop() / _loc6_);
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               §§push(param1);
               §§push("BIRD_BLUE");
               §§push(_loc2_);
               if(!(_loc11_ && param1))
               {
                  §§push(_loc8_);
                  if(!_loc11_)
                  {
                     addr103:
                     §§push(§§pop() - §§pop());
                     §§push(_loc3_);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop() - _loc7_);
                     }
                  }
                  var _loc9_:§@m§;
                  §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                  §§push(§§findproperty(b2Vec2));
                  §§push(_loc4_);
                  if(_loc10_ || this)
                  {
                     §§push(7 * _loc8_);
                     if(!(_loc11_ && _loc3_))
                     {
                        addr152:
                        §§push(§§pop() - §§pop());
                        §§push(_loc5_);
                        if(_loc10_)
                        {
                           addr155:
                           §§push(§§pop() - 7 * _loc7_);
                        }
                        §§pop().§%!K§(new §§pop().b2Vec2(§§pop(),§§pop()));
                        §§push(param1);
                        §§push("BIRD_BLUE");
                        §§push(_loc2_);
                        if(!(_loc11_ && this))
                        {
                           §§push(_loc8_);
                           if(_loc10_)
                           {
                              addr175:
                              §§push(§§pop() + §§pop());
                              §§push(_loc3_);
                              if(!(_loc11_ && _loc3_))
                              {
                                 §§push(§§pop() + _loc7_);
                              }
                           }
                           §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                           §§push(§§findproperty(b2Vec2));
                           §§push(_loc4_);
                           if(!_loc11_)
                           {
                              §§push(7 * _loc8_);
                              if(_loc10_)
                              {
                                 addr204:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_);
                                 if(_loc10_ || this)
                                 {
                                    §§push(§§pop() + 7 * _loc7_);
                                 }
                              }
                              §§pop().§%!K§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              return true;
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr152);
               }
               §§goto(addr103);
            }
            §§goto(addr32);
         }
         addr32:
         return false;
      }
   }
}
