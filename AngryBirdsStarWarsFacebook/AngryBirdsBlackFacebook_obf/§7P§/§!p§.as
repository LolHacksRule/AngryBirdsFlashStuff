package §7P§
{
   import §2"Y§.§8!D§;
   import §[R§.b2Vec2;
   
   public class §!p§
   {
       
      
      protected var §<X§:§8!D§;
      
      protected var §'!#§:Number = 0.0;
      
      protected var §9J§:Number;
      
      protected var §[b§:Boolean = false;
      
      protected var §3";§:Number = 0;
      
      protected var §<!"§:Boolean;
      
      protected var §<#C§:Number;
      
      protected var §-"q§:Number;
      
      public function §!p§(param1:§8!D§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§<X§ = param1;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§`"M§();
            if(_loc3_)
            {
               if(!(_loc2_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §3"a§() : Number
      {
         return this.§3";§;
      }
      
      protected function §`"M§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!_loc2_)
         {
            §§push(this.§<X§);
            loop0:
            while(true)
            {
               §§push(§§pop().animateRotation);
               addr157:
               while(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§^"9§(this.§<X§.minRotationFrequency,this.§<X§.maxRotationFrequency));
                     addr176:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr177:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr178:
                           while(true)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() * (Math.PI / 180));
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() / 1000);
                                 }
                              }
                              §§pop().§<#C§ = §§pop();
                           }
                        }
                     }
                  }
               }
               addr22:
               return;
               loop7:
               while(true)
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§push(§§pop().minRotationFrequency);
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           addr64:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    §§push(this);
                                    §§push(this.§^"9§(this.§<X§.minRotationAmplitude,this.§<X§.maxRotationAmplitude));
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() * (Math.PI / 180));
                                    }
                                    §§pop().§-"q§ = §§pop();
                                    do
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    while(!(_loc2_ && _loc1_));
                                    
                                    §§goto(addr178);
                                 }
                                 §§goto(addr158);
                                 addr66:
                              }
                              while(true)
                              {
                                 this.§<!"§ = true;
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       addr34:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr22);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr66);
                                    }
                                    while(true)
                                    {
                                       continue loop7;
                                       §§goto(addr34);
                                    }
                                    addr153:
                                 }
                                 §§goto(addr100);
                              }
                           }
                           addr64:
                        }
                     }
                     addr136:
                     while(true)
                     {
                        §§pop();
                        continue loop7;
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[b§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§9J§ < 0);
                        if(!(_loc1_ || this))
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           while(§§pop())
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr78:
                                 §§push(true);
                                 break loop2;
                              }
                              continue loop2;
                           }
                           §§push(false);
                           if(_loc2_ && _loc1_)
                           {
                              break;
                           }
                           continue loop0;
                           addr67:
                        }
                        continue loop1;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr67);
            }
            while(_loc2_ && _loc2_);
            
            return §§pop();
         }
         §§goto(addr78);
      }
      
      public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this.§<X§.stopAnimationsAfterCollision)
            {
               if(_loc5_ || param2)
               {
                  this.§<!"§ = false;
               }
            }
         }
      }
      
      public function §]T§(param1:§;$§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:* = null;
         if(!(_loc11_ && this))
         {
            if(!param1)
            {
               if(_loc10_ || param1)
               {
                  return;
               }
            }
         }
         §§push(this.§<X§.shape.getWidth() * param5);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.§<X§.shape.getHeight() * param5);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(true)
         {
            if(_loc8_ >= this.§<X§.§-Q§)
            {
               if(_loc10_)
               {
                  if(!(_loc11_ && param1))
                  {
                     break;
                  }
                  param1.§]#^§(_loc9_,param2,param3,param4,§;=§.§""3§,_loc6_,_loc7_,1,true);
                  addr116:
                  loop1:
                  while(true)
                  {
                     addr87:
                     while(true)
                     {
                        _loc8_++;
                        continue loop1;
                     }
                  }
                  addr138:
               }
               while(_loc11_ && this)
               {
                  §§goto(addr138);
               }
               continue;
            }
            §§push(this.§<X§.§="§(_loc8_));
            if(_loc10_)
            {
               §§push(§§pop());
               if(_loc10_ || param3)
               {
                  addr113:
                  §§push(_loc9_ = §§pop());
               }
               if(§§pop())
               {
                  §§goto(addr116);
               }
               §§goto(addr87);
            }
            §§goto(addr113);
            §§goto(addr87);
         }
      }
      
      public function §+"M§(param1:§;$§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = null;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:§&#=§ = null;
         if(_loc18_ || this)
         {
            §§push(this.§<X§);
            if(!(_loc17_ && param2))
            {
               if(§§pop().§4"-§ == 0)
               {
                  if(!_loc17_)
                  {
                     return;
                  }
                  addr53:
                  §§push(this.§<X§);
               }
               §§goto(addr53);
            }
            §§push(§§pop().explosionForce);
            if(_loc18_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.§<X§.spawnDistance);
            if(!(_loc17_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§<X§.angleOffset);
            if(!_loc17_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(this.§<X§.§4"-§);
            if(!_loc17_)
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(Math.PI * 2);
            if(!_loc17_)
            {
               §§push(§§pop() / _loc8_);
               if(!_loc17_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(!(_loc17_ && param3))
            {
               if(!isNaN(_loc7_))
               {
                  if(_loc18_)
                  {
                     addr111:
                     §§push(param4);
                     if(!_loc17_)
                     {
                        §§push(§§pop() + _loc7_);
                        if(_loc18_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param4 = §§pop();
                  }
               }
               var _loc10_:int = 0;
               while(true)
               {
                  if(_loc10_ < _loc8_)
                  {
                     §§push(Number(Math.cos(param4)));
                     loop1:
                     while(true)
                     {
                        _loc11_ = §§pop();
                        if(!_loc17_)
                        {
                           §§push(Number(Math.sin(param4)));
                           loop2:
                           while(true)
                           {
                              _loc12_ = §§pop();
                              while(true)
                              {
                                 §§push(this.§<X§.§8"8§(_loc10_));
                                 if(_loc18_ || param3)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc13_ = §§pop();
                                 if(_loc18_)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(!(_loc17_ && this))
                                       {
                                          §§push(_loc12_);
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr193:
                                             addr158:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr194:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             addr158:
                                             if(_loc17_ && param1)
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc17_)
                                             {
                                                if(_loc17_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             addr171:
                                             if(_loc18_)
                                             {
                                                _loc15_ = §§pop();
                                                if(!_loc17_)
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   addr203:
                                                   while(true)
                                                   {
                                                      §§push(param3);
                                                      if(_loc18_)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§push(_loc11_);
                                                         if(!(_loc17_ && param3))
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc17_)
                                                               {
                                                                  §§goto(addr158);
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr193);
                                                               }
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc14_ = §§pop();
                                                      §§goto(addr204);
                                                   }
                                                   addr204:
                                                   addr203:
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr203);
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                    continue;
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr308:
                  return;
               }
            }
            §§goto(addr111);
         }
         §§goto(addr53);
      }
      
      protected function getImpulseTarget(param1:§&#=§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§3!t§().GetPosition().x,param1.§3!t§().GetPosition().y);
      }
      
      public function §4c§(param1:§;$§, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§<X§.explosionDamageRadius)
            {
               if(!_loc4_)
               {
                  if(param1)
                  {
                     if(_loc5_ || this)
                     {
                     }
                  }
                  §§goto(addr70);
               }
               param1.§6#4§(param2,param3,this.§<X§.explosionRadius,this.§<X§.explosionForce,this.§<X§.explosionDamageRadius,this.§<X§.explosionDamage);
            }
         }
         addr70:
      }
      
      public function playCollisionSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = this.§<X§.collisionSound;
         if(_loc3_ || _loc2_)
         {
            this.§<X§.§-Z§(_loc1_);
         }
      }
      
      public function playDamagedSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = this.§<X§.damageSound;
         if(!_loc2_)
         {
            this.§<X§.§-Z§(_loc1_);
         }
      }
      
      public function playDestroyedSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = this.§<X§.§31§;
         if(_loc3_)
         {
            this.§<X§.§-Z§(_loc1_);
         }
      }
      
      public function update(param1:Number, param2:§;$§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§'!#§);
            if(!_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'!#§ = §§pop();
            while(true)
            {
               §§push(this.§[b§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§9J§);
                        if(_loc5_ || param3)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§9J§ = §§pop();
                        while(true)
                        {
                           addr52:
                           if(_loc5_ || this)
                           {
                              §§goto(addr19);
                           }
                        }
                     }
                     addr170:
                  }
                  while(true)
                  {
                     §§push(this.§<X§);
                     loop5:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 addr165:
                                 while(true)
                                 {
                                    §§push(this.§<!"§);
                                    if(!(_loc5_ || this))
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc5_ || param1))
                                    {
                                       break;
                                    }
                                    if(_loc6_ && param1)
                                    {
                                    }
                                    continue loop8;
                                 }
                                 continue loop1;
                              }
                              addr164:
                           }
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          while(param1 > 0)
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§<X§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().constantRotation);
                                                      continue loop1;
                                                   }
                                                   continue loop5;
                                                }
                                                addr133:
                                                §§push(this);
                                                §§push(this.§3";§);
                                                if(!_loc6_)
                                                {
                                                   §§push(this.§<#C§);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop() * 1000);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() / param1);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§3";§ = §§pop();
                                                addr155:
                                                addr113:
                                             }
                                             else
                                             {
                                                §§goto(addr155);
                                             }
                                             break loop6;
                                          }
                                          break;
                                          addr103:
                                       }
                                       break loop5;
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr113);
                              }
                              break;
                              §§goto(addr78);
                           }
                           addr19:
                           return;
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr170);
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§goto(addr133);
            }
         }
         §§goto(addr103);
      }
      
      protected function §^"9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(isNaN(param1))
            {
               if(!(_loc4_ && param2))
               {
                  addr114:
                  §§push(0);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr116:
                     while(true)
                     {
                        param1 = §§pop();
                     }
                  }
                  addr115:
               }
               while(true)
               {
               }
               addr117:
            }
            while(true)
            {
               if(isNaN(param2))
               {
                  if(!(_loc4_ && param2))
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param2 = §§pop();
                              addr23:
                              if(!(_loc4_ && this))
                              {
                                 continue loop2;
                              }
                           }
                           addr91:
                        }
                        else
                        {
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr116);
                  }
                  while(true)
                  {
                     §§goto(addr91);
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§goto(addr23);
                  }
                  break;
               }
               §§goto(addr65);
            }
         }
         §§goto(addr114);
      }
   }
}
