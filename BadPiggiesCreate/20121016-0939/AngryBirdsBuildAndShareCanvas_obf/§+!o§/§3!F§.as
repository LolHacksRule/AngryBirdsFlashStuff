package §+!o§
{
   import §+S§.b2World;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §3!F§ extends §>G§
   {
       
      
      public function §3!F§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc11_)
            {
               if(!§§pop())
               {
                  if(!_loc11_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr33:
                     var _loc2_:Number = getBody().GetPosition().x;
                     var _loc3_:Number = getBody().GetPosition().y;
                     var _loc4_:Number = getBody().GetLinearVelocity().x;
                     var _loc5_:Number = getBody().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!_loc11_)
                     {
                        §§push(-§§pop());
                        if(!_loc11_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(_loc11_ && this)
                           {
                           }
                           addr84:
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc10_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(_loc10_ || this)
                              {
                                 addr97:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(_loc10_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc11_)
                                 {
                                    addr118:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc3_);
                                    if(!(_loc11_ && this))
                                    {
                                       addr126:
                                       §§push(§§pop() - _loc7_);
                                    }
                                    var _loc9_:§]"5§;
                                    §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(_loc10_)
                                    {
                                       §§push(7 * _loc8_);
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr152:
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc5_);
                                          if(_loc10_ || param1)
                                          {
                                             §§push(§§pop() - 7 * _loc7_);
                                          }
                                       }
                                       §§pop().§ !K§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                       §§push(param1);
                                       §§push("BIRD_BLUE");
                                       §§push(_loc2_);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(_loc8_);
                                          if(_loc10_)
                                          {
                                             addr180:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc3_);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() + _loc7_);
                                             }
                                          }
                                          §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                          §§push(§§findproperty(b2Vec2));
                                          §§push(_loc4_);
                                          if(_loc10_)
                                          {
                                             §§push(7 * _loc8_);
                                             if(_loc10_)
                                             {
                                                addr204:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc5_);
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() + 7 * _loc7_);
                                                }
                                             }
                                             §§pop().§ !K§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                             return true;
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr97);
                        }
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
   }
}
