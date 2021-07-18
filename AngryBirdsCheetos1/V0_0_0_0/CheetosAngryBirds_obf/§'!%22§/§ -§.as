package §'!"§
{
   import §&!"§.b2FilterData;
   import §&!"§.b2World;
   import §-!7§.§&$§;
   import §-!7§.§@m§;
   import §-!7§.§^!1§;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class § -§ extends §^!1§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            CHEETOS_EXPLOSION = "CHEETOS_EXPLOSION";
         }
         do
         {
            CHEESE_PARTICLE = "CHEESE_PARTICLE";
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public var §&L§:Boolean = true;
      
      public function § -§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc17_:§@m§ = null;
         if(!_loc19_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc19_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc19_)
                  {
                     §§goto(addr35);
                  }
               }
               var _loc2_:Number = §`!#§().GetPosition().x;
               var _loc3_:Number = §`!#§().GetPosition().y;
               var _loc4_:Number = §`!#§().GetLinearVelocity().x;
               var _loc5_:Number = §`!#§().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(!_loc19_)
               {
                  §§push(-§§pop());
                  if(!(_loc19_ && this))
                  {
                     §§push(§§pop() / _loc6_);
                     if(_loc18_)
                     {
                        addr86:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(_loc18_)
                  {
                     §§push(§§pop() / _loc6_);
                     if(!_loc19_)
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     var _loc9_:b2FilterData;
                     (_loc9_ = new b2FilterData()).§]@§ = §[!-§;
                     if(_loc18_ || this)
                     {
                        §§push(_loc9_);
                        §§push(65535);
                        if(!_loc19_)
                        {
                           §§push(~§"!=§);
                           if(!(_loc19_ && _loc2_))
                           {
                              addr130:
                              §§push(§§pop() & §§pop());
                              if(!_loc19_)
                              {
                                 §§push(~§[!-§);
                              }
                              §§pop().§+!0§ = §§pop();
                              var _loc10_:Number = 2;
                              var _loc11_:Number = 75;
                              var _loc12_:Number = 10;
                              var _loc13_:Number = -7;
                              var _loc14_:Number = 3;
                              var _loc15_:Number = -17;
                              var _loc16_:Number = 0;
                              if(_loc18_)
                              {
                                 if(this.§&L§)
                                 {
                                    addr157:
                                    §§push(param1);
                                    §§push("CHEESE_STICKS");
                                    §§push(_loc2_);
                                    if(_loc18_ || _loc2_)
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc19_ && _loc3_))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc19_)
                                          {
                                             §§push(_loc10_);
                                             if(!(_loc19_ && _loc3_))
                                             {
                                                addr187:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc3_);
                                                if(!(_loc19_ && _loc2_))
                                                {
                                                   addr195:
                                                   §§push(§§pop() - _loc7_);
                                                }
                                                §§push(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false));
                                                if(!(_loc19_ && param1))
                                                {
                                                   (_loc17_ = §§pop()).§>C§ = true;
                                                   if(!(_loc19_ && this))
                                                   {
                                                      §§push(_loc17_);
                                                      §§push(§§findproperty(b2Vec2));
                                                      §§push(_loc12_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(_loc16_);
                                                         if(!(_loc19_ && this))
                                                         {
                                                            addr255:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(_loc13_);
                                                         }
                                                         §§pop().§%!K§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                         loop0:
                                                         while(true)
                                                         {
                                                            addr229:
                                                            while(true)
                                                            {
                                                               _loc17_.§#a§(_loc11_);
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                else
                                                {
                                                   addr651:
                                                   (_loc17_ = §§pop()).§>C§ = false;
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      _loc17_.§%!K§(new b2Vec2(20,20));
                                                      if(_loc18_ || _loc2_)
                                                      {
                                                      }
                                                      §§goto(addr689);
                                                   }
                                                   _loc17_.§`!K§(_loc9_);
                                                }
                                                §§goto(addr689);
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    §§push("CHEESE_STICKS");
                                    §§push(_loc2_);
                                    if(_loc18_ || _loc3_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc18_)
                                       {
                                          addr637:
                                          §§push(§§pop() - §§pop());
                                          §§push(_loc3_);
                                          if(_loc18_ || this)
                                          {
                                             §§push(§§pop() - _loc7_);
                                          }
                                       }
                                       §§goto(addr651);
                                       §§push(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false));
                                    }
                                    §§goto(addr637);
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§push(§§pop() & §§pop());
                        }
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr95);
               }
               §§goto(addr86);
            }
            §§goto(addr35);
         }
         addr35:
         return false;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(super.isReadyToBeRemoved(param1));
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr94:
                        while(true)
                        {
                           §§push(Boolean(§]Z§));
                        }
                     }
                     addr93:
                  }
                  loop0:
                  do
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              §§push(true);
                              break;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc2_ && _loc3_)
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                  }
                  while(_loc2_ && _loc3_);
                  
                  return §§pop();
               }
            }
            §§goto(addr93);
         }
         §§goto(addr94);
      }
      
      override public function addDestructionParticles(param1:§,v§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Number = 5;
         var _loc3_:int = §>!&§(false) + 1;
         var _loc4_:Number;
         §§push(_loc4_ = 90);
         if(!_loc6_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc7_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               param1.addParticle(§ -§.CHEETOS_EXPLOSION,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x,§`!#§().GetPosition().y,1500,"",§-&§.§3>§,0,0,0,0,2,20,true);
            }
            do
            {
               this.§=E§(param1);
            }
            while(!(_loc7_ || _loc3_));
            
            return;
         }
         §§goto(addr40);
      }
      
      private function §=E§(param1:§,v§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 25;
         var _loc3_:* = 100;
         var _loc4_:* = Number(90);
         if(!(_loc10_ && _loc3_))
         {
            §§push(_loc3_);
            if(!_loc10_)
            {
               §§push(int(§§pop() * 1));
               if(!_loc10_)
               {
                  addr45:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(_loc9_ || _loc3_)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        while(true)
                        {
                           param1.addParticle(§ -§.CHEESE_PARTICLE,§,v§.§-!;§,§-&§.§ ,§,§`!#§().GetPosition().x,§`!#§().GetPosition().y,400 + 700 * Math.random(),"",§-&§.§%6§(§ h§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
                           addr116:
                           while(true)
                           {
                              _loc5_++;
                           }
                           addr174:
                           _loc8_ = §§pop();
                        }
                     }
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           if(!(_loc10_ && param1))
                           {
                              break;
                           }
                           while(true)
                           {
                              if(_loc9_ || this)
                              {
                                 §§push(_loc2_);
                                 if(_loc9_)
                                 {
                                    addr121:
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(-§§pop());
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() * Math.sin(_loc6_));
                                       if(!(_loc9_ || _loc2_))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() * Math.random());
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       addr157:
                                       if(!_loc10_)
                                       {
                                          if(_loc9_ || _loc3_)
                                          {
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                                break;
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(§§pop() * Math.random());
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc9_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr259:
                                                            while(true)
                                                            {
                                                               §§push(180 / Math.PI);
                                                            }
                                                            addr259:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            addr264:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr265:
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  addr266:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§push(§§pop() * Math.cos(_loc6_));
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               §§goto(addr121);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         addr263:
                                                      }
                                                      §§goto(addr265);
                                                      continue loop9;
                                                   }
                                                   addr237:
                                                }
                                                §§goto(addr265);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       while(_loc10_)
                                       {
                                          §§goto(addr259);
                                       }
                                       continue;
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr266);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr116);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  if(!(_loc10_ && this))
                  {
                     §§push(Math.random() * (720 / _loc3_));
                     if(_loc9_ || param1)
                     {
                        §§goto(addr237);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr265);
               }
               return;
            }
         }
         §§goto(addr45);
      }
   }
}
