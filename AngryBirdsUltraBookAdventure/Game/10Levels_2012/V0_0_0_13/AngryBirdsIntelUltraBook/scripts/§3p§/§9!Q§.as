package §3p§
{
   import §&L§.b2Vec2;
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §9!Q§ extends §4!G§
   {
       
      
      public function §9!Q§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc11_ || param1)
            {
               §§push(!§§pop());
               if(!(_loc10_ && _loc2_))
               {
                  addr37:
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(false);
                     }
                     else
                     {
                        addr42:
                        var _loc2_:Number = §9f§().GetPosition().x;
                        var _loc3_:Number = §9f§().GetPosition().y;
                        var _loc4_:Number = §9f§().GetLinearVelocity().x;
                        var _loc5_:Number = §9f§().GetLinearVelocity().y;
                        var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                        §§push(_loc4_);
                        if(_loc11_ || this)
                        {
                           §§push(-§§pop());
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(§§pop() / _loc6_);
                              if(_loc11_)
                              {
                                 addr98:
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc11_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(!_loc10_)
                              {
                                 addr107:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(_loc11_)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    addr133:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc3_);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() - _loc7_);
                                    }
                                 }
                                 var _loc9_:LevelObject = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale);
                                 if(_loc11_)
                                 {
                                    §§push(_loc9_);
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(_loc11_)
                                    {
                                       §§push(7 * _loc8_);
                                       if(_loc11_ || _loc2_)
                                       {
                                          §§goto(addr165);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr165);
                                 }
                                 addr165:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc5_);
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    addr173:
                                    §§push(§§pop() - 7 * _loc7_);
                                 }
                                 §§pop().§4g§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 §§push(param1);
                                 §§push("BIRD_BLUE");
                                 §§push(_loc2_);
                                 if(!_loc10_)
                                 {
                                    §§push(_loc8_);
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§goto(addr194);
                                    }
                                    §§goto(addr202);
                                 }
                                 addr194:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc3_);
                                 if(_loc11_ || _loc3_)
                                 {
                                    addr202:
                                    §§push(§§pop() + _loc7_);
                                 }
                                 _loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(_loc9_);
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(!_loc10_)
                                    {
                                       §§push(7 * _loc8_);
                                       if(_loc11_)
                                       {
                                          §§goto(addr241);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr241);
                                 }
                                 addr241:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_);
                                 if(_loc11_ || param1)
                                 {
                                    addr249:
                                    §§push(§§pop() + 7 * _loc7_);
                                 }
                                 §§pop().§4g§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 return true;
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr42);
               }
               return §§pop();
            }
            §§goto(addr37);
         }
         §§goto(addr42);
      }
   }
}
