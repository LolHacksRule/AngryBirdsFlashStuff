package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-Gv§ extends §_-zf§
   {
       
      
      public function §_-Gv§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || this)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc11_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc11_ || param1)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr41:
                     var _loc2_:Number = §_-zq§().GetPosition().x;
                     var _loc3_:Number = §_-zq§().GetPosition().y;
                     var _loc4_:Number = §_-zq§().GetLinearVelocity().x;
                     var _loc5_:Number = §_-zq§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(_loc11_)
                     {
                        §§push(-§§pop());
                        if(_loc11_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(!(_loc10_ && _loc3_))
                           {
                              addr91:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc11_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(!_loc10_)
                              {
                                 addr100:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(_loc11_ || _loc3_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc10_)
                                 {
                                    addr123:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc3_);
                                    if(_loc11_)
                                    {
                                       addr126:
                                       §§push(§§pop() - _loc7_);
                                    }
                                    var _loc9_:§_-Dz§;
                                    §§push(_loc9_ = §§pop().§switch§(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(7 * _loc8_);
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr157:
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc5_);
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push(§§pop() - 7 * _loc7_);
                                          }
                                       }
                                       §§pop().§var§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                       §§push(param1);
                                       §§push("BIRD_BLUE");
                                       §§push(_loc2_);
                                       if(_loc11_ || param1)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc10_ && this))
                                          {
                                             addr190:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc3_);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + _loc7_);
                                             }
                                          }
                                          §§push(_loc9_ = §§pop().§switch§(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                          §§push(§§findproperty(b2Vec2));
                                          §§push(_loc4_);
                                          if(_loc11_)
                                          {
                                             §§push(7 * _loc8_);
                                             if(_loc11_)
                                             {
                                                §§goto(addr214);
                                             }
                                             §§goto(addr229);
                                          }
                                          addr214:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc5_);
                                          if(_loc11_ || param1)
                                          {
                                             addr229:
                                             §§push(§§pop() + 7 * _loc7_);
                                          }
                                          §§pop().§var§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                          return true;
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr41);
            }
            return §§pop();
         }
         §§goto(addr41);
      }
   }
}
