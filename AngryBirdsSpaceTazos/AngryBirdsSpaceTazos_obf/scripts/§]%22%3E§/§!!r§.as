package §]">§
{
   import §"!&§.§+W§;
   import §"!&§.§+g§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §1"H§.§=!3§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §!!r§ extends §6!y§
   {
      
      public static const §!!p§:String = "TazosBird";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!p§ = "TazosBird";
         }
      }
      
      private var §2"G§:Boolean = false;
      
      private var §[c§:§=!3§;
      
      private var §%"1§:Boolean = false;
      
      private var § !V§:Number;
      
      private var §9W§:§+g§;
      
      public function §!!r§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            this.§9W§ = param4 as §+g§;
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         while(_loc11_ && this);
         
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§%"1§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  if(!super.activateSpecialPower(param1,param2,param3))
                  {
                     if(!(_loc5_ && param2))
                     {
                        if(_loc4_ || param3)
                        {
                           if(!_loc5_)
                           {
                              addr74:
                              §§push(false);
                              if(_loc4_ || this)
                              {
                                 return §§pop();
                              }
                              §§goto(addr92);
                           }
                           break loop0;
                        }
                        this.makeExplosion(param1);
                        addr124:
                     }
                     else
                     {
                        while(true)
                        {
                           if(!(_loc5_ && param1))
                           {
                              continue;
                           }
                           if(_loc4_ || param1)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr92);
                     }
                     addr92:
                     return §§pop();
                     §§push(true);
                  }
                  §§goto(addr28);
               }
            }
            super.activateSpecialPower(param1,param2,param3);
            §§goto(addr124);
         }
         §§goto(addr39);
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return true;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§-?§)
            {
               if(_loc1_ || _loc1_)
               {
                  return true;
               }
            }
         }
         return super.removeOnNextUpdate;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§%"1§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§ !V§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§ !V§ = §§pop();
                        addr222:
                        while(true)
                        {
                           if(this.§ !V§ <= 0)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr204:
                  }
                  loop5:
                  while(true)
                  {
                     §§push(Boolean(§?!d§));
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        addr170:
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§pop();
                                 loop9:
                                 while(_loc3_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(this.§2"G§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop11:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   for(; _loc3_; if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   },§§push(Boolean(param2)),if(!(_loc4_ && param2))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr53:
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§[c§ = §=!3§(param2.addObject(§=!3§.§!!p§,x / §^g§.§5!-§,y / §^g§.§5!-§,0,§-%§.§;!J§));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr120);
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            continue loop0;
                                                            addr37:
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop10;
                                                   },while(true)
                                                   {
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§goto(addr119);
                                                   },addr102:)
                                                   {
                                                      this.§2"G§ = true;
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §<!O§.playSound("tazos_fly_loop","6",100,1);
                                                            while(!_loc4_)
                                                            {
                                                               while(!(_loc4_ && param1))
                                                               {
                                                                  continue loop13;
                                                                  §§pop();
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                while(true)
                                                {
                                                   §§push(!this.§[c§);
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr102);
                                                }
                                                continue loop7;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr204);
                                    }
                                    §§goto(addr222);
                                 }
                                 addr199:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                           §§goto(addr156);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.activateSpecialPower(param2,x,y);
            §§goto(addr199);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§%"1§);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr98);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.render(param1,param2,param3);
         }
         do
         {
            §§push(this.§[c§);
            if(_loc4_ || param2)
            {
               if(!§§pop())
               {
                  §§goto(addr19);
               }
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               §§push(this.§[c§);
            }
            §§pop().§[!T§(x,y,this.§%"1§);
         }
         while(!_loc4_);
         
         addr19:
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§2"G§)
            {
               loop0:
               while(true)
               {
                  this.§2"G§ = false;
                  loop1:
                  while(true)
                  {
                     §<!O§.§,!z§("6");
                     addr91:
                     while(true)
                     {
                        addr69:
                        while(!(_loc3_ && _loc3_))
                        {
                           native(param1);
                           loop5:
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 super.updateBeforeRemoving(param1);
                                 if(_loc2_ || param1)
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          return;
                                          addr38:
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(!§-?§)
               {
                  if(!(_loc3_ && param1))
                  {
                     while(true)
                     {
                        this.makeExplosion(param1);
                     }
                     addr66:
                  }
                  §§goto(addr69);
               }
               §§goto(addr23);
               §§goto(addr91);
            }
            §§goto(addr38);
         }
         §§goto(addr66);
      }
      
      private function makeExplosion(param1:§;U§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:§<!=§ = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = 0;
         var _loc9_:String = null;
         if(_loc11_ || param1)
         {
            if(this.§9W§.§2V§ > 0)
            {
               loop0:
               while(true)
               {
                  §§push(Number(§^!z§().GetPosition().x));
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Number(§^!z§().GetPosition().y));
                        loop3:
                        for(; _loc11_ || _loc2_; while(true)
                        {
                           §§push(Number(§§pop()));
                           if(_loc10_ && this)
                           {
                              break;
                           }
                           _loc5_ = §§pop();
                           §§push(0);
                           addr121:
                           continue loop0;
                           if(!(_loc11_ || _loc3_))
                           {
                              continue;
                           }
                           _loc8_ = §§pop();
                           if(_loc10_)
                           {
                              continue loop0;
                           }
                           if(!_loc10_)
                           {
                              if(!_loc11_)
                              {
                                 continue loop2;
                              }
                           }
                           else
                           {
                              §§goto(addr136);
                           }
                           §§goto(addr102);
                        })
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              if(_loc8_ >= this.§9W§.§2V§)
                              {
                                 if(_loc11_ || _loc3_)
                                 {
                                    §§goto(addr309);
                                 }
                              }
                              else
                              {
                                 _loc9_ = this.§9W§.§"!u§(_loc8_);
                                 if(_loc11_)
                                 {
                                    loop8:
                                    do
                                    {
                                       §§push(Number(Math.cos(_loc5_)));
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          while(true)
                                          {
                                             §§push(Number(Math.sin(_loc5_)));
                                             if(!(_loc11_ || param1))
                                             {
                                                break;
                                             }
                                             _loc7_ = §§pop();
                                             if(!_loc10_)
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                    while(false);
                                    
                                    §§push(param1);
                                    §§push(_loc9_);
                                    §§push(_loc2_);
                                    if(_loc11_ || _loc3_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(§§pop() * this.§9W§.spawnDistance);
                                          if(_loc11_ || _loc2_)
                                          {
                                             addr188:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc3_);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr197:
                                                §§push(_loc7_);
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§push(§§pop() * this.§9W§.spawnDistance);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push((_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,false,true,false)).§^!z§());
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                §§push(this.§9W§.spawnedObjectSpeed);
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc11_)
                                                   {
                                                      addr243:
                                                      §§push(§§pop() * (1 + Math.random()));
                                                      §§push(_loc7_);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         addr251:
                                                         §§push(§§pop() * this.§9W§.spawnedObjectSpeed);
                                                         if(!_loc10_)
                                                         {
                                                            addr257:
                                                            §§push(§§pop() * (1 + Math.random()));
                                                         }
                                                         §§pop().SetLinearVelocity(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                         if(!_loc11_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc5_);
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(Math.PI * 2);
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(§§pop() / this.§9W§.§2V§);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc11_)
                                                            {
                                                               addr292:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(_loc11_)
                                                            {
                                                               _loc8_++;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                              }
                              §§goto(addr318);
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(_loc11_ || param1)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr105);
               }
            }
            addr309:
            if(param1)
            {
               if(_loc11_ || this)
               {
                  param1.§6!N§(_loc2_,_loc3_,§2"!§.explosionRadius,§2"!§.explosionForce,§2"!§.explosionDamageRadius,§2"!§.explosionDamage);
                  addr318:
               }
            }
            return;
         }
         §§goto(addr136);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§[c§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[c§);
                     addr86:
                     while(true)
                     {
                        §§pop().dispose();
                        addr87:
                        loop4:
                        while(true)
                        {
                           this.§[c§ = null;
                           addr49:
                           addr63:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr63:
                        }
                     }
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr49);
                  §§goto(addr63);
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr87);
      }
   }
}
