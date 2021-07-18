package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §9!§ extends §1!"§
   {
       
      
      public function §9!§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc10_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc11_ || _loc2_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr39:
                     var _loc2_:Number = §`%§().GetPosition().x;
                     var _loc3_:Number = §`%§().GetPosition().y;
                     var _loc4_:Number = §`%§().GetLinearVelocity().x;
                     var _loc5_:Number = §`%§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!_loc10_)
                     {
                        §§push(-§§pop());
                        if(_loc11_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(!(_loc10_ && this))
                           {
                              addr89:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc11_ || _loc3_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(!(_loc10_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(_loc11_ || this)
                           {
                              §§push(_loc8_);
                              if(!_loc10_)
                              {
                                 addr134:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc3_);
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(§§pop() - _loc7_);
                                 }
                              }
                              var _loc9_:§3!,§;
                              §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc4_);
                              if(_loc11_ || _loc2_)
                              {
                                 §§push(7 * _loc8_);
                                 if(!_loc10_)
                                 {
                                    addr168:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc5_);
                                    if(_loc11_ || _loc3_)
                                    {
                                       §§push(§§pop() - 7 * _loc7_);
                                    }
                                 }
                                 §§pop().§37§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 §§push(param1);
                                 §§push("BIRD_BLUE");
                                 §§push(_loc2_);
                                 if(!_loc10_)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc10_)
                                    {
                                       addr191:
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc3_);
                                       if(!_loc10_)
                                       {
                                          addr194:
                                          §§push(§§pop() + _loc7_);
                                       }
                                       §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                       §§push(§§findproperty(b2Vec2));
                                       §§push(_loc4_);
                                       if(_loc11_)
                                       {
                                          §§push(7 * _loc8_);
                                          if(_loc11_)
                                          {
                                             addr225:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc5_);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + 7 * _loc7_);
                                             }
                                          }
                                          §§pop().§37§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                          return true;
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr39);
            }
            return §§pop();
         }
         §§goto(addr39);
      }
   }
}
