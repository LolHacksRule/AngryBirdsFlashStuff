package §]">§
{
   import §"!&§.§]!C§;
   import §9t§.b2Vec2;
   
   public class §"!B§
   {
       
      
      protected var §2"!§:§]!C§;
      
      protected var §9S§:Number = 0.0;
      
      protected var §&!B§:Number;
      
      protected var §%"1§:Boolean = false;
      
      protected var §3r§:Number = 0;
      
      protected var §7!X§:Boolean;
      
      protected var §]&§:Number;
      
      protected var §4!&§:Number;
      
      public function §"!B§(param1:§]!C§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§2"!§ = param1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§4f§();
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get §3"7§() : Number
      {
         return this.§3r§;
      }
      
      protected function §4f§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!(_loc2_ && this))
         {
            §§push(this.§2"!§);
            while(true)
            {
               §§push(§§pop().animateRotation);
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§!9§(this.§2"!§.minRotationFrequency,this.§2"!§.maxRotationFrequency));
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(_loc3_ || _loc1_)
                           {
                              §§push(§§pop() * (Math.PI / 180));
                              if(!_loc2_)
                              {
                                 §§push(§§pop() / 1000);
                              }
                           }
                           §§pop().§]&§ = §§pop();
                           addr186:
                           loop5:
                           while(true)
                           {
                              §§push(this.§2"!§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().minRotationFrequency);
                                 addr152:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr153:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(_loc3_)
                                          {
                                             §§pop();
                                          }
                                          continue loop1;
                                          addr155:
                                       }
                                       else
                                       {
                                          addr121:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop5;
                                          }
                                          addr49:
                                          loop14:
                                          while(true)
                                          {
                                             this.§7!X§ = true;
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr42:
                                                if(_loc3_ || this)
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             addr147:
                                             while(true)
                                             {
                                                continue loop14;
                                             }
                                          }
                                          if(_loc3_ || _loc1_)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                break loop1;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       while(!(_loc2_ && this))
                                       {
                                          continue loop6;
                                          §§goto(addr49);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        addr89:
                        if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(Boolean(§§pop()));
                        if(_loc3_ || this)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr121);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr155);
                     }
                  }
               }
               return;
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§push(§§pop().maxRotationFrequency);
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr89);
               }
               §§goto(addr152);
            }
         }
         §§goto(addr186);
      }
      
      public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§%"1§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     while(true)
                     {
                        §§push(this.§&!B§ < 0);
                        addr59:
                        while(!(_loc1_ && _loc1_))
                        {
                           if(!(_loc1_ && this))
                           {
                              return §§pop();
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               loop4:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           §§push(true);
                           break;
                        }
                        §§goto(addr95);
                     }
                     else
                     {
                        while(true)
                        {
                           addr25:
                           while(true)
                           {
                              §§push(false);
                              if(_loc1_ && this)
                              {
                                 break loop4;
                              }
                              §§goto(addr34);
                           }
                        }
                        addr76:
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr25);
               }
               while(true)
               {
                  if(!_loc1_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr76);
      }
      
      public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(this.§2"!§.stopAnimationsAfterCollision)
            {
               if(_loc5_)
               {
                  addr50:
                  this.§7!X§ = false;
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §@<§(param1:§;U§, param2:Number, param3:Number, param4:Number, param5:Number = 1.0) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:* = null;
         §§push(this.§2"!§.shape.getWidth() * param5);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(this.§2"!§.shape.getHeight() * param5);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(true)
         {
            if(_loc8_ >= this.§2"!§.§5$§)
            {
               if(_loc10_ || param2)
               {
                  if(_loc10_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr70:
                     while(true)
                     {
                        _loc8_++;
                     }
                  }
                  addr121:
               }
               loop3:
               while(_loc11_ && param2)
               {
                  while(true)
                  {
                     param1.§]`§(_loc9_,param2,param3,param4,§-%§.§;!J§,_loc6_,_loc7_,1,true);
                     §§goto(addr121);
                     continue loop3;
                  }
               }
               continue;
            }
            §§push(this.§2"!§.§5<§(_loc8_));
            if(!_loc11_)
            {
               §§push(§§pop());
               if(!(_loc11_ && param2))
               {
                  §§push(_loc9_ = §§pop());
               }
            }
            if(§§pop())
            {
               §§goto(addr99);
            }
            §§goto(addr70);
         }
      }
      
      public function §9f§(param1:§;U§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = null;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:§1!0§ = null;
         if(_loc18_)
         {
            §§push(this.§2"!§);
            if(_loc18_ || param1)
            {
               if(§§pop().§4!g§ == 0)
               {
                  if(_loc18_)
                  {
                     return;
                  }
                  addr48:
                  §§push(this.§2"!§);
               }
               §§goto(addr48);
            }
            §§push(§§pop().explosionForce);
            if(_loc18_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.§2"!§.spawnDistance);
            if(!(_loc17_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§2"!§.angleOffset);
            if(_loc18_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(this.§2"!§.§4!g§);
            if(!(_loc17_ && param2))
            {
               §§push(int(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(Math.PI * 2);
            if(_loc18_ || param1)
            {
               §§push(§§pop() / _loc8_);
               if(!(_loc17_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(_loc18_)
            {
               if(!isNaN(_loc7_))
               {
                  if(!_loc17_)
                  {
                     §§push(param4);
                     if(!_loc17_)
                     {
                        §§push(§§pop() + _loc7_);
                        if(_loc18_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param4 = §§pop();
                  }
               }
            }
            var _loc10_:int = 0;
            loop0:
            while(true)
            {
               if(_loc10_ < _loc8_)
               {
                  §§push(Number(Math.cos(param4)));
                  loop1:
                  while(true)
                  {
                     _loc11_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Number(Math.sin(param4)));
                        loop3:
                        while(true)
                        {
                           _loc12_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§2"!§.§"!u§(_loc10_));
                              if(!_loc17_)
                              {
                                 §§push(§§pop());
                              }
                              _loc13_ = §§pop();
                              if(!(_loc17_ && param3))
                              {
                                 if(!(_loc18_ || param3))
                                 {
                                    break;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!_loc17_)
                                    {
                                       §§push(_loc12_);
                                       if(_loc18_ || param2)
                                       {
                                          §§push(_loc6_);
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                          }
                                          addr218:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr220:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       addr219:
                                    }
                                    while(true)
                                    {
                                       _loc14_ = §§pop();
                                       if(!_loc17_)
                                       {
                                          §§push(param3);
                                          if(_loc18_ || param3)
                                          {
                                             if(_loc18_ || this)
                                             {
                                                continue loop1;
                                             }
                                             continue;
                                          }
                                          addr188:
                                          §§push(Number(§§pop()));
                                          if(_loc18_)
                                          {
                                             if(_loc17_)
                                             {
                                                break loop5;
                                             }
                                             _loc15_ = §§pop();
                                             if(!_loc18_)
                                             {
                                                break;
                                             }
                                             if(_loc17_ && param3)
                                             {
                                                continue loop4;
                                             }
                                             if(false)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc16_ = param1.addObject(_loc13_,_loc14_,_loc15_,param4,§-%§.§;!J§) as §1!0§)
                                             {
                                                if(_loc17_ && param1)
                                                {
                                                   continue loop0;
                                                }
                                                _loc16_.§^!z§().ApplyImpulse(new b2Vec2(-_loc12_ * _loc5_,_loc11_ * _loc5_),this.§8l§(_loc16_,param4));
                                                if(_loc18_)
                                                {
                                                   addr303:
                                                   §§push(param4);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop() + _loc9_);
                                                      if(!_loc17_)
                                                      {
                                                         addr320:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      param4 = §§pop();
                                                      if(_loc18_)
                                                      {
                                                         addr324:
                                                         _loc10_++;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr303);
                                          }
                                          else
                                          {
                                             §§goto(addr220);
                                          }
                                       }
                                       break;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function §8l§(param1:§1!0§, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y);
      }
      
      public function makeExplosion(param1:§;U§, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(this.§2"!§.explosionDamageRadius)
            {
               if(_loc5_)
               {
                  if(param1)
                  {
                     if(_loc5_)
                     {
                        param1.§6!N§(param2,param3,this.§2"!§.explosionRadius,this.§2"!§.explosionForce,this.§2"!§.explosionDamageRadius,this.§2"!§.explosionDamage);
                        addr39:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function playCollisionSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = this.§2"!§.collisionSound;
         if(_loc2_)
         {
            if(!_loc1_)
            {
               if(!_loc3_)
               {
                  §§goto(addr65);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr38);
                  }
               }
            }
            addr38:
            while(true)
            {
               this.§2"!§.playSoundLua(_loc1_);
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr65:
      }
      
      public function playDamagedSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = this.§2"!§.damageSound;
         if(!_loc2_)
         {
            this.§2"!§.playSoundLua(_loc1_);
         }
      }
      
      public function playDestroyedSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = this.§2"!§.§'!T§;
         if(_loc2_)
         {
            this.§2"!§.playSoundLua(_loc1_);
         }
      }
      
      public function update(param1:Number, param2:§;U§, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this);
            §§push(this.§9S§);
            if(_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§9S§ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§%"1§);
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§&!B§);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§&!B§ = §§pop();
                     loop3:
                     while(true)
                     {
                        addr92:
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        if(!(_loc6_ || param2))
                        {
                           continue loop2;
                        }
                        if(param1 > 0)
                        {
                           if(_loc5_ && param2)
                           {
                              continue loop0;
                           }
                           addr126:
                           §§push(this.§2"!§);
                           if(!(_loc5_ && param1))
                           {
                              §§push(§§pop().constantRotation);
                              loop10:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue loop0;
                                 }
                                 this.§3r§ = Math.sin(this.§]&§ * this.§9S§) * this.§4!&§;
                                 if(_loc6_ || param2)
                                 {
                                    addr51:
                                    if(_loc5_ && param1)
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc5_)
                                    {
                                       §§goto(addr25);
                                    }
                                    addr181:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§7!X§);
                                       if(_loc5_)
                                       {
                                          continue loop10;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc6_ || param2))
                                       {
                                          continue loop10;
                                       }
                                       if(_loc5_ && param2)
                                       {
                                          continue loop1;
                                       }
                                       if(!(_loc5_ && param3))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   break loop8;
                                                }
                                                §§goto(addr92);
                                             }
                                             §§goto(addr25);
                                          }
                                          continue loop3;
                                          addr88:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr88);
                                       }
                                       §§goto(addr51);
                                    }
                                    continue loop0;
                                    §§goto(addr25);
                                 }
                                 else
                                 {
                                    addr25:
                                    return;
                                    addr166:
                                 }
                                 §§goto(addr25);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr171);
                              §§goto(addr126);
                           }
                        }
                        §§goto(addr25);
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr170);
               }
            }
         }
      }
      
      protected function §!9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(isNaN(param1))
            {
               addr107:
               while(true)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr111:
                  while(true)
                  {
                     param1 = §§pop();
                     addr112:
                     while(true)
                     {
                     }
                  }
               }
               addr107:
            }
            loop0:
            while(true)
            {
               if(isNaN(param2))
               {
                  if(!(_loc4_ && param2))
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(0);
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop2:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 param2 = §§pop();
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(param2);
                                          if(!_loc4_)
                                          {
                                             addr46:
                                             §§push(§§pop() - param1);
                                             if(!_loc4_)
                                             {
                                                addr42:
                                                §§push(§§pop() * Math.random());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc3_ || param2)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr42);
                                       }
                                       §§goto(addr46);
                                    }
                                    return §§pop();
                                 }
                                 break;
                                 addr90:
                              }
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr90);
               }
               §§goto(addr24);
            }
         }
         §§goto(addr107);
      }
      
      public function get §!"=§() : Boolean
      {
         return this.§%"1§;
      }
      
      public function get §4",§() : Number
      {
         return this.§&!B§;
      }
   }
}
