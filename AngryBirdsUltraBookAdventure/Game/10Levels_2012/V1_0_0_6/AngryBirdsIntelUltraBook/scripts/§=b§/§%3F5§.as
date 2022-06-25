package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   
   public class §?5§ extends §0d§
   {
       
      
      public function §?5§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc11_ || this)
            {
               if(!§§pop())
               {
                  if(_loc11_ || param1)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr39:
                     var _loc2_:Number = §3J§().GetPosition().x;
                     var _loc3_:Number = §3J§().GetPosition().y;
                     var _loc4_:Number = §3J§().GetLinearVelocity().x;
                     var _loc5_:Number = §3J§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!(_loc10_ && _loc2_))
                     {
                        §§push(-§§pop());
                        if(!_loc10_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(_loc11_)
                           {
                              addr89:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc11_ || _loc3_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(_loc11_ || this)
                              {
                                 addr118:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(!_loc10_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc10_)
                                 {
                                    addr129:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc3_);
                                    if(_loc11_)
                                    {
                                       addr132:
                                       §§push(§§pop() - _loc7_);
                                    }
                                    var _loc9_:§`!_§;
                                    §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(!_loc10_)
                                    {
                                       §§push(7 * _loc8_);
                                       if(!(_loc10_ && this))
                                       {
                                          addr158:
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc5_);
                                          if(_loc11_ || this)
                                          {
                                             addr166:
                                             §§push(§§pop() - 7 * _loc7_);
                                          }
                                          §§pop().§=!`§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                          §§push(param1);
                                          §§push("BIRD_BLUE");
                                          §§push(_loc2_);
                                          if(_loc11_)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr186:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc3_);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(§§pop() + _loc7_);
                                                }
                                             }
                                             §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(_loc4_);
                                             if(_loc11_)
                                             {
                                                §§push(7 * _loc8_);
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr233);
                                             }
                                             addr230:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc5_);
                                             if(!_loc10_)
                                             {
                                                addr233:
                                                §§push(§§pop() + 7 * _loc7_);
                                             }
                                             §§pop().§=!`§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                             return true;
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr118);
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
