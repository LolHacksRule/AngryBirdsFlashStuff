package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-En§ extends §_-Fh§
   {
       
      
      public function §_-En§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc11_)
            {
               if(!§§pop())
               {
                  if(_loc10_ || this)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr33:
                     var _loc2_:Number = §_-SJ§().GetPosition().x;
                     var _loc3_:Number = §_-SJ§().GetPosition().y;
                     var _loc4_:Number = §_-SJ§().GetLinearVelocity().x;
                     var _loc5_:Number = §_-SJ§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!_loc11_)
                     {
                        §§push(-§§pop());
                        if(_loc10_)
                        {
                           addr74:
                           §§push(§§pop() / _loc6_);
                           if(!(_loc11_ && _loc2_))
                           {
                              addr83:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc10_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(_loc10_ || this)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(!(_loc11_ && _loc3_))
                           {
                              §§push(_loc8_);
                              if(!_loc11_)
                              {
                                 addr123:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc3_);
                                 if(_loc10_ || this)
                                 {
                                    addr131:
                                    §§push(§§pop() - _loc7_);
                                 }
                                 var _loc9_:§_-eZ§;
                                 §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc4_);
                                 if(_loc10_ || this)
                                 {
                                    §§push(7 * _loc8_);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       addr162:
                                       §§push(§§pop() - §§pop());
                                       §§push(_loc5_);
                                       if(_loc10_ || this)
                                       {
                                          §§push(§§pop() - 7 * _loc7_);
                                       }
                                    }
                                    §§pop().§_-To§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    §§push(param1);
                                    §§push("BIRD_BLUE");
                                    §§push(_loc2_);
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       §§push(_loc8_);
                                       if(_loc10_ || _loc2_)
                                       {
                                          addr195:
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
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(7 * _loc8_);
                                          if(_loc10_ || _loc3_)
                                          {
                                             addr239:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc5_);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() + 7 * _loc7_);
                                             }
                                          }
                                          §§pop().§_-To§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                          return true;
                                       }
                                       §§goto(addr239);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr74);
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
