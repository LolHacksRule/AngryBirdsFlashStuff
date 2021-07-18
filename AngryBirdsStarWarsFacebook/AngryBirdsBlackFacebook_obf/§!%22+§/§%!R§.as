package §!"+§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§8!D§;
   import §2"Y§.§["$§;
   import §7!F§.§>"G§;
   import §7P§.*;
   import §<a§.§4#P§;
   import §<a§.§8#F§;
   import §[R§.b2Vec2;
   import §^#>§.§&'§;
   import §`!r§.§ U§;
   
   public class §%!R§
   {
      
      protected static const §'!1§:Number = 1.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'!1§ = 1.3;
         }
      }
      
      protected var §9!u§:Vector.<§'!L§>;
      
      protected var §!!q§:§4#P§;
      
      public function §%!R§(param1:b2World)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!u§ = new Vector.<§'!L§>();
            while(true)
            {
               super();
               while(_loc2_)
               {
                  this.§!!q§ = new §4#P§(param1);
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr41:
               }
            }
         }
         §§goto(addr41);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§9!u§ = null;
         }
      }
      
      public function get laserCount() : int
      {
         return this.§9!u§.length;
      }
      
      public function getLaser(param1:int) : §'!L§
      {
         return this.§9!u§[param1];
      }
      
      public function §#!#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:§8!D§, param6:Sprite, param7:§>"G§, param8:Number, param9:Boolean) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         §§push(§§findproperty(§'!L§));
         §§push(param1);
         §§push(param2);
         §§push(param3);
         if(!_loc11_)
         {
            §§push(§§pop() / 180);
            if(_loc12_ || param3)
            {
               §§push(§§pop() * Math.PI);
            }
         }
         var _loc10_:§'!L§ = new §§pop().§'!L§(§§pop(),§§pop(),§§pop(),param4,param5,param6,param7,param8,param9);
         if(!_loc11_)
         {
            this.§9!u§.push(_loc10_);
         }
      }
      
      public function §&a§(param1:Number, param2:§,#Z§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§'!L§ = null;
         var _loc3_:* = int(this.§9!u§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§9!u§[_loc3_];
            if(_loc5_ || _loc3_)
            {
               if(!this.§7#1§(_loc4_,param1,param2))
               {
                  loop3:
                  while(true)
                  {
                     this.§'",§(_loc3_,param2);
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           addr41:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr102:
               }
               else
               {
                  _loc4_.render();
               }
               while(true)
               {
                  §§goto(addr41);
               }
            }
            §§goto(addr102);
         }
      }
      
      protected function §'",§(param1:int, param2:§,#Z§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§'!L§ = null;
         var _loc4_:* = null;
         if(_loc6_ || param2)
         {
            if(param1 >= 0)
            {
               addr33:
               _loc3_ = this.§9!u§[param1];
               if(!_loc5_)
               {
                  if(_loc3_)
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc3_.sprite.parent)
                        {
                           while(true)
                           {
                              _loc3_.sprite.parent.removeChild(_loc3_.sprite);
                              addr140:
                              while(true)
                              {
                              }
                           }
                           addr134:
                        }
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_.§!!`§);
                           if(_loc6_ || param2)
                           {
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 §§push(_loc4_ = §§pop());
                              }
                           }
                           if(§§pop())
                           {
                              if(!(_loc5_ && this))
                              {
                                 while(true)
                                 {
                                    param2.addObject(_loc4_,_loc3_.x,_loc3_.y,0,§;=§.§""3§,false,true,false,1,true);
                                 }
                                 addr102:
                              }
                              while(true)
                              {
                              }
                              addr117:
                           }
                           addr52:
                           while(true)
                           {
                              _loc3_.dispose();
                              addr55:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr134);
                                 }
                                 else
                                 {
                                    §§goto(addr117);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§9!u§.splice(param1,1);
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr52);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr141);
               }
               §§goto(addr102);
            }
            addr141:
            return;
         }
         §§goto(addr33);
      }
      
      protected function §7#1§(param1:§'!L§, param2:Number, param3:§,#Z§) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:§8#F§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc4_:* = true;
         loop0:
         while(true)
         {
            §§push(param2);
            loop1:
            while(true)
            {
               if(§§pop() <= 0)
               {
                  break loop0;
               }
               §§push(Number(param1.x + param1.§&"j§ * param2 / 1000));
               loop2:
               while(true)
               {
                  _loc5_ = §§pop();
                  if(_loc12_ || param2)
                  {
                     §§push(Number(param1.y + param1.§4#@§ * param2 / 1000));
                     while(true)
                     {
                        _loc6_ = §§pop();
                        if(_loc11_)
                        {
                           break;
                        }
                        §§push(param2);
                        if(!_loc11_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc11_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr504);
                  }
                  break;
                  if(_loc11_ && param1)
                  {
                     continue;
                  }
                  _loc7_ = §§pop();
                  if(_loc12_ || param3)
                  {
                     §§push(this.§!!q§);
                     if(!(_loc11_ && param3))
                     {
                        §§pop().§@"@§(param1.§@"4§(§'!1§),param1.§"A§(§'!1§),_loc5_,_loc6_);
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(this.§!!q§);
                              if(_loc12_)
                              {
                                 §§push(§§pop().§""h§);
                                 if(_loc12_ || this)
                                 {
                                    §§push(0);
                                    if(!(_loc11_ && param3))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc12_ || param3)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr504);
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc12_)
                                          {
                                             _loc9_ = §§pop();
                                             if(!(_loc11_ && param2))
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                addr396:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc9_);
                                                   addr397:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(this.§!!q§.§""h§);
                                                      addr400:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            break loop8;
                                                         }
                                                         §§push(this.§!!q§);
                                                         break loop7;
                                                      }
                                                      continue loop10;
                                                   }
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      break loop2;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr397);
                                       }
                                    }
                                    §§goto(addr400);
                                 }
                                 §§goto(addr397);
                              }
                              break;
                           }
                        }
                     }
                     while(true)
                     {
                        _loc8_ = §§pop().§'"L§(_loc9_);
                        if(!(_loc11_ && param1))
                        {
                           if(!param1.§'x§(_loc8_))
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(param2);
                                 loop13:
                                 while(true)
                                 {
                                    §§push(_loc8_.rayFraction);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() * param2);
                                    }
                                    §§push(§§pop() - §§pop());
                                    loop14:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop15:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this.§@M§(_loc8_,param1,param2,param3));
                                             loop17:
                                             for(; §§pop(); §§push(false),if(!_loc12_)
                                             {
                                                continue;
                                             },_loc4_ = §§pop(),§§goto(addr289))
                                             {
                                                §§push(param1.health);
                                                if(!(_loc11_ && this))
                                                {
                                                   if(§§pop() != 0)
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(this.§!!q§);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop().§""h§);
                                                               if(_loc12_ || this)
                                                               {
                                                                  if(§§pop() == §§pop() - 1)
                                                                  {
                                                                     loop19:
                                                                     while(!(_loc11_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           param1.update(_loc7_);
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc12_ || param3)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    param2 = §§pop();
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(_loc12_ || param1)
                                                                                       {
                                                                                          addr235:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_++;
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                addr378:
                                                                                             }
                                                                                             §§goto(addr235);
                                                                                          }
                                                                                          addr198:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             break loop17;
                                                                                          }
                                                                                          addr289:
                                                                                       }
                                                                                    }
                                                                                    addr417:
                                                                                    §§push(0);
                                                                                    if(_loc12_ || param3)
                                                                                    {
                                                                                       break loop18;
                                                                                    }
                                                                                    loop4:
                                                                                    while(§§pop() < this.§!!q§.§""h§)
                                                                                    {
                                                                                       _loc8_ = this.§!!q§.§'"L§(_loc10_);
                                                                                       if(_loc12_ || param3)
                                                                                       {
                                                                                          param1.§33§(_loc8_);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             _loc10_++;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr328:
                                                                                 addr328:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       param2 = §§pop();
                                                                                       if(!(_loc11_ && param3))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§goto(addr417);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr377:
                                                                                       while(true)
                                                                                       {
                                                                                          param2 = §§pop();
                                                                                       }
                                                                                       addr377:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr378);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr449);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           if(_loc11_ && this)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr328);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     addr312:
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                         break;
                                                      }
                                                      _loc10_ = §§pop();
                                                      if(_loc11_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr428);
                                                      addr238:
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr328);
                                             }
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   continue loop12;
                                                }
                                                §§push(_loc7_);
                                                if(_loc12_ || this)
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      continue loop14;
                                                   }
                                                   continue loop15;
                                                }
                                                §§goto(addr377);
                                             }
                                          }
                                          break loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr273);
                     }
                  }
                  §§goto(addr459);
               }
               param1.§+"^§();
               if(_loc12_ || param1)
               {
                  §§goto(addr417);
               }
               §§goto(addr428);
            }
         }
         if(_loc12_)
         {
            §§goto(addr459);
         }
         addr504:
         §§push(false);
         if(_loc12_ || this)
         {
            addr522:
            _loc4_ = §§pop();
            addr523:
            return _loc4_;
         }
      }
      
      protected function §@M§(param1:§8#F§, param2:§'!L§, param3:Number, param4:§,#Z§) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(param2);
            §§push(param1.rayFraction);
            if(!_loc6_)
            {
               §§push(§§pop() * param3);
            }
            §§pop().update(§§pop());
         }
         var _loc5_:§7B§;
         §§push((_loc5_ = param1.§[!@§) is §?"N§);
         if(_loc7_)
         {
            if(§§pop())
            {
               if(!(_loc6_ && param2))
               {
                  this.§>#"§(param1,param2,param4);
                  if(!_loc6_)
                  {
                     §§goto(addr291);
                  }
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §§push(param2.§3P§);
                     if(!(_loc6_ && param3))
                     {
                        if(_loc7_ || param3)
                        {
                           if(!_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr213);
                     }
                     addr182:
                     loop15:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop16:
                           while(true)
                           {
                              §§push(this.§4&§(_loc5_));
                              while(!§§pop())
                              {
                                 do
                                 {
                                    this.§-X§(param1,param2,param4);
                                 }
                                 while(!_loc7_);
                                 
                                 if(!(_loc7_ || this))
                                 {
                                    break;
                                 }
                                 if(_loc7_)
                                 {
                                    §§push(true);
                                    if(!(_loc7_ || param2))
                                    {
                                       continue loop15;
                                    }
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc6_ && param2))
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc7_ || param3)
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                return §§pop();
                                             }
                                             addr291:
                                             return true;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr287:
                                             loop20:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr289:
                                                      while(true)
                                                      {
                                                         §§push(§&#=§(_loc5_).defence < 0);
                                                      }
                                                   }
                                                   addr288:
                                                }
                                                loop14:
                                                while(true)
                                                {
                                                   addr266:
                                                   addr267:
                                                   while(!§§pop())
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.§3!t§());
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.§3!t§());
                                                                  addr255:
                                                                  while(true)
                                                                  {
                                                                     §§pop().SetAwake(true);
                                                                     break loop16;
                                                                  }
                                                               }
                                                               addr253:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§&!Q§(_loc5_));
                                                               loop6:
                                                               for(; _loc7_; while(_loc7_ || param2)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  §§pop();
                                                                  continue loop0;
                                                               })
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        this.§@`§(param1,param2,param4);
                                                                        addr244:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              break loop19;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                     }
                                                                     addr221:
                                                                     return false;
                                                                     addr239:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr201:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§4H§(_loc5_));
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                            addr232:
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      continue loop14;
                                                   }
                                                   §§goto(addr268);
                                                }
                                             }
                                          }
                                          addr286:
                                       }
                                       §§goto(addr268);
                                    }
                                    else
                                    {
                                       addr190:
                                       if(_loc7_)
                                       {
                                          break loop15;
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr244);
                              }
                              if(_loc6_ && this)
                              {
                                 if(!(_loc7_ || param1))
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr201);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr286);
                                          }
                                          addr273:
                                       }
                                       §§goto(addr287);
                                    }
                                 }
                                 continue;
                                 break;
                              }
                              if(_loc7_)
                              {
                                 if(_loc6_ && param1)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(true);
                                       continue loop15;
                                    }
                                    §§goto(addr253);
                                 }
                                 §§goto(addr239);
                              }
                              else
                              {
                                 addr183:
                                 if(!_loc6_)
                                 {
                                    §§goto(addr190);
                                    §§push(this.§2!l§(param1,param2,param4));
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr287);
                           }
                           while(true)
                           {
                              §§goto(addr232);
                           }
                        }
                        §§goto(addr183);
                     }
                     return §§pop();
                  }
               }
               §§goto(addr267);
            }
            §§goto(addr273);
         }
         §§goto(addr267);
      }
      
      private function §>#"§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Vec2;
         (_loc4_ = new b2Vec2(Math.cos(param2.angle),Math.sin(param2.angle))).§?1§(param2.§@p§);
         var _loc5_:§&#=§;
         if(_loc5_ = param1.§[!@§ as §&#=§)
         {
            if(!(_loc6_ && param1))
            {
               _loc5_.§3!t§().ApplyImpulse(_loc4_,param1.§6;§);
               if(_loc7_)
               {
                  _loc5_.applyDamage(1,param3,null,false);
               }
            }
         }
      }
      
      private function §@`§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§]D§ = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc9_)
         {
            if(param3)
            {
               if(_loc8_)
               {
                  §§push(param2.§&§);
                  if(_loc8_)
                  {
                     §§push(int(§§pop()));
                     if(_loc8_)
                     {
                        §§push(_loc5_ = §§pop());
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                     }
                  }
                  §§goto(addr61);
               }
               param3.addScore(_loc5_,§&'§.§'#?§,true,param2.x,param2.y - 3,§ U§.§#!p§);
               addr61:
               if(_loc6_ = param3.§+!U§(param2.x,param2.y))
               {
                  if(_loc8_ || param3)
                  {
                     _loc6_.§3!$§ = true;
                  }
                  _loc7_ = _loc6_.§3!t§().GetPosition();
                  if(!(_loc9_ && param2))
                  {
                     param2.reflectToAngle(Math.atan2(_loc7_.y - param2.y,_loc7_.x - param2.x),param2.speed);
                     if(!(_loc8_ || param1))
                     {
                        §§goto(addr127);
                     }
                  }
                  return;
               }
               §§goto(addr127);
            }
            addr127:
            var _loc4_:b2Vec2 = param1.normal;
            if(_loc8_ || param2)
            {
               this.§6"O§(param2,_loc4_.x,_loc4_.y,param3);
            }
            return;
         }
         §§goto(addr61);
      }
      
      private function §2!l§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc4_:§&#=§ = param1.§[!@§ as §&#=§;
         §§push(param2.§1!s§);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc9_ || param1)
         {
            if(_loc4_)
            {
               loop0:
               while(true)
               {
                  §§push(param2.§!!>§(_loc4_));
                  if(!(_loc8_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        addr111:
                        if(§§pop() > 0)
                        {
                           break;
                        }
                        §§goto(addr151);
                     }
                  }
                  _loc6_ = §§pop();
                  if(!_loc9_)
                  {
                     break;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               §§goto(addr113);
            }
            while(true)
            {
               param2.applyDamage(_loc5_);
               if(!(_loc8_ && param1))
               {
                  if(false)
                  {
                     §§goto(addr55);
                  }
                  else
                  {
                     §§push(param2.health);
                  }
                  §§goto(addr111);
               }
               addr113:
               _loc7_ = param1.normal;
               if(!(_loc8_ && param2))
               {
                  this.§6"O§(param2,_loc7_.x,_loc7_.y,param3);
                  if(!(_loc9_ || param1))
                  {
                     addr151:
                     return true;
                  }
               }
               return false;
               §§goto(addr55);
            }
         }
         §§goto(addr108);
      }
      
      private function §-X§(param1:§8#F§, param2:§'!L§, param3:§,#Z§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc4_:§&#=§;
         if(_loc4_ = param1.§[!@§ as §&#=§)
         {
            if(!(_loc7_ && param2))
            {
               §§push(param2.§3P§);
               if(!(_loc7_ && this))
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc7_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc7_ && this))
                        {
                           §§pop();
                           if(_loc8_ || this)
                           {
                              §§push(_loc4_.defence);
                              while(true)
                              {
                                 §§push(§§pop() < 100000);
                                 §§goto(addr157);
                              }
                           }
                           §§goto(addr100);
                        }
                     }
                  }
               }
               addr157:
               §§goto(addr82);
            }
            §§goto(addr165);
         }
         addr82:
         loop1:
         for(; §§pop(); continue loop0)
         {
            loop2:
            while(true)
            {
               §§push(param2.§!!>§(_loc4_));
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               loop3:
               while(true)
               {
                  _loc5_ = §§pop();
                  addr165:
                  loop4:
                  while(true)
                  {
                     §§push(Number(Math.min((_loc4_.health + _loc4_.defence) / _loc5_,param2.health)));
                     if(_loc8_ || param3)
                     {
                        if(!_loc7_)
                        {
                           _loc6_ = §§pop();
                           while(!_loc7_)
                           {
                              §§push(_loc4_);
                              §§push(_loc6_);
                              if(_loc8_ || param1)
                              {
                                 §§push(§§pop() * _loc5_);
                              }
                              §§pop().applyDamage(§§pop(),param3,null);
                              do
                              {
                                 param2.applyDamage(_loc6_);
                              }
                              while(!(_loc8_ || this));
                              
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    break loop4;
                                 }
                                 continue loop2;
                              }
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop3;
                  }
                  addr100:
                  break loop1;
               }
            }
         }
      }
      
      private function §4&§(param1:§7B§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1.§3!t§().GetFixtureList().§!W§());
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        §§goto(addr55);
                     }
                  }
                  else
                  {
                     addr56:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr56);
            }
            addr55:
            return §§pop();
         }
         §§goto(addr56);
      }
      
      private function §&!Q§(param1:§7B§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§["$§ = null;
         if(_loc4_)
         {
            §§push(param1.levelItem is §["$§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  _loc2_ = §["$§(param1.levelItem);
                  addr44:
                  if(_loc4_)
                  {
                     return _loc2_.§^!N§;
                  }
               }
               return false;
            }
         }
         §§goto(addr44);
      }
      
      private function §4H§(param1:§7B§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§["$§ = null;
         if(_loc3_ || _loc3_)
         {
            §§push(param1.levelItem is §["$§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  addr38:
                  _loc2_ = §["$§(param1.levelItem);
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_.§1!<§);
                     if(_loc3_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(_loc3_ || this)
                                 {
                                    addr90:
                                    §§push(_loc2_.§^!N§);
                                    if(_loc3_ || param1)
                                    {
                                       return Boolean(§§pop());
                                    }
                                 }
                                 else
                                 {
                                    addr112:
                                    return false;
                                    addr111:
                                 }
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr90);
               }
               §§goto(addr111);
            }
            §§goto(addr112);
         }
         §§goto(addr38);
      }
      
      protected function §6"O§(param1:§'!L§, param2:Number, param3:Number, param4:§,#Z§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(2);
         §§push(param2);
         if(!_loc10_)
         {
            §§push(§§pop() * Math.cos(param1.angle));
            if(_loc9_)
            {
               addr27:
               §§push(param3);
               if(!_loc10_)
               {
                  §§push(§§pop() * Math.sin(param1.angle));
               }
               §§push(§§pop() + §§pop());
            }
            §§push(§§pop() * §§pop());
            if(!_loc10_)
            {
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(Math.cos(param1.angle) - param2 * _loc5_);
            if(_loc9_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(Math.sin(param1.angle) - param3 * _loc5_);
            if(_loc9_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param1.§,M§);
            if(!(_loc10_ && param2))
            {
               §§push(§§pop());
            }
            var _loc8_:*;
            if(_loc8_ = §§pop())
            {
               if(_loc9_)
               {
                  param4.addObject(_loc8_,param1.x,param1.y,0,§;=§.§""3§,false,true,false,1,true);
                  if(_loc9_)
                  {
                     addr127:
                     param1.reflectToAngle(Math.atan2(_loc7_,_loc6_),param1.speed);
                  }
               }
               return;
            }
            §§goto(addr127);
         }
         §§goto(addr27);
      }
   }
}
