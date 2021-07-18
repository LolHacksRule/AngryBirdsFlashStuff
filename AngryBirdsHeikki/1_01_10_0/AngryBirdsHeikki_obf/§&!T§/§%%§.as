package §&!T§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§9§;
   import §"!I§.§94§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §5!1§.§&[§;
   import §9!4§.§95§;
   import §9b§.§"!S§;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   
   public class §%%§ extends §9§
   {
      
      public static const §=o§:Number = 1.1;
      
      public static const §;!1§:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=o§ = 1.1;
         }
         do
         {
            §;!1§ = 1;
         }
         while(_loc1_);
         
      }
      
      private var §[!Y§:Boolean = false;
      
      public function §%%§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §94§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§^"§ = new §^"§(this,new Sprite(),param1,param2,param3);
         if(!(_loc6_ && param1))
         {
            if(param4 >= 0)
            {
               §2!A§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §=U§.addChild(_loc5_.sprite);
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                     if(!(_loc6_ && this))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        addr89:
                        while(true)
                        {
                           §2!A§.push(_loc5_);
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr89);
         }
         addr66:
         return _loc5_;
      }
      
      private function §[_§(param1:Number) : §94§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§94§ = null;
         _loc2_ = §2!A§[§3!@§];
         if(!_loc3_)
         {
            if(_loc2_.§+!^§ < 1)
            {
               while(true)
               {
                  _loc2_.§+!^§ = 1;
                  addr106:
                  while(true)
                  {
                  }
               }
               addr103:
            }
            loop2:
            while(true)
            {
               _loc2_.scale = param1;
               loop3:
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(_loc2_.sprite);
                     loop4:
                     while(true)
                     {
                        §§push(_loc2_.scale);
                        addr71:
                        while(true)
                        {
                           §§pop().scaleX = §§pop();
                           addr72:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr103);
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function §"v§(param1:§94§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            param1.§;1§ = §9§.BIRD_LAUNCH_FORCE * param2;
         }
      }
      
      public function §9!]§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc1_:§94§ = §2!A§[§3!@§];
         if(!(_loc10_ && this))
         {
            this.§<K§(_loc1_);
            if(_loc9_ || this)
            {
               addr42:
               §&M§.§6!#§("Bird_Helmet_Appear","ChannelExplosions");
            }
            var _loc2_:Vector.<§94§> = §"!S§.§-!7§.slingshot.§2!A§;
            §§push(5);
            if(!_loc10_)
            {
               §§push(int(§§pop() + Math.random() * 10));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 8;
            var _loc5_:Number = 1;
            var _loc6_:int = 0;
            while(true)
            {
               if(_loc6_ >= _loc3_)
               {
                  if(!_loc10_)
                  {
                     if(_loc10_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        loop4:
                        while(_loc9_)
                        {
                           (_loc1_ as §^"§).§;b§();
                           loop5:
                           while(true)
                           {
                              if(_loc9_)
                              {
                                 while(true)
                                 {
                                    §%&§(§9§.STATE_BIRD_IS_READY);
                                    if(!(_loc10_ && _loc1_))
                                    {
                                       if(_loc9_)
                                       {
                                          return;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                    if(!_loc9_)
                                    {
                                       addr268:
                                       §§pop();
                                       §§push(Boolean(_loc3_));
                                       break loop5;
                                    }
                                    break loop5;
                                    addr264:
                                    _loc8_ = §§pop();
                                 }
                                 §§push(§"!S§.§-!7§.particles);
                                 §§push(§!U§.§&§);
                                 §§push(§?F§.§<G§);
                                 §§push(§!U§.§"R§);
                                 §§push(§"!S§.§-!7§.slingshot.§"!d§);
                                 §§push(§"!S§.§-!7§.slingshot.§,!W§);
                                 §§push(1250);
                                 §§push("");
                                 §§push(§!U§.§9Z§(_loc2_[0].name));
                                 §§push(_loc8_);
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§push(§§pop() * Math.cos(_loc7_));
                                    if(!_loc10_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc9_ || _loc3_)
                                       {
                                          addr175:
                                          §§push(§§pop() * §§pop());
                                          §§push(_loc8_);
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             addr183:
                                             §§push(-§§pop());
                                             if(!(_loc10_ && _loc1_))
                                             {
                                                addr191:
                                                §§push(§§pop() * Math.sin(_loc7_));
                                                if(!(_loc10_ && _loc1_))
                                                {
                                                   addr202:
                                                   §§push(§§pop() * _loc5_);
                                                }
                                                §§push(5);
                                                §§push(_loc8_);
                                                if(_loc9_ || this)
                                                {
                                                   §§push(§§pop() * 20);
                                                }
                                                §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc5_));
                                                break loop4;
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr183);
                                    }
                                 }
                                 §§goto(addr175);
                                 addr265:
                                 addr272:
                                 addr74:
                              }
                              else
                              {
                                 §§goto(addr265);
                              }
                              §§goto(addr268);
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(0.5);
                                    if(!(_loc10_ && this))
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc9_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc10_)
                                             {
                                                if(!(_loc9_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc4_);
                                             }
                                             break;
                                          }
                                          §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                                          if(_loc9_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          break;
                                       }
                                       addr292:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop3;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr272);
                           }
                        }
                        _loc6_++;
                        continue;
                        addr104:
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr104);
               }
               else
               {
                  §§push(Math.random() * (Math.PI * 2));
               }
               §§goto(addr292);
            }
         }
         §§goto(addr42);
      }
      
      public function §+!F§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         if(_loc10_ || this)
         {
            §5b§ = -1.7;
            while(true)
            {
               this.§[!Y§ = true;
               loop1:
               while(true)
               {
                  addr58:
                  while(true)
                  {
                     §§push(§"!S§.§-!7§);
                     addr61:
                     while(true)
                     {
                        §§push(§§pop().camera);
                        addr62:
                        while(true)
                        {
                           §§pop().§#M§(§95§.§+]§);
                           continue loop1;
                        }
                     }
                  }
               }
               addr49:
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr58);
               }
               §§goto(addr82);
            }
         }
         while(true)
         {
            §§push(§"!S§.§-!7§);
            if(_loc10_)
            {
               §§push(§§pop().camera);
               if(!_loc9_)
               {
                  §§pop().manualScale = §"!S§.§-!7§.camera.§'`§;
                  if(!(_loc9_ && _loc2_))
                  {
                     §§goto(addr49);
                  }
                  §§goto(addr65);
               }
               §§goto(addr62);
            }
            §§goto(addr61);
         }
         addr82:
         var _loc1_:§94§ = §+!G§("BIRD_REDBIG_HEIKKI",§"!d§ + 0.3,§,!W§ - 0.7);
         if(_loc10_)
         {
            this.§"v§(_loc1_,§=o§);
            loop7:
            while(true)
            {
               addr112:
               while(true)
               {
                  this.§<K§(_loc1_);
                  continue loop7;
               }
            }
            addr121:
         }
         while(true)
         {
            §&M§.§6!#§("Bird_Black_Special1","ChannelExplosions");
            if(!_loc10_)
            {
               continue;
            }
            if(!(_loc9_ && this))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr121);
            }
            §§goto(addr112);
         }
         var _loc2_:Vector.<§94§> = §"!S§.§-!7§.slingshot.§2!A§;
         §§push(5);
         if(!_loc9_)
         {
            §§push(int(§§pop() + Math.random() * 10));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 8;
         var _loc5_:Number = 1;
         var _loc6_:int = 0;
         loop10:
         while(true)
         {
            if(_loc6_ >= _loc3_)
            {
               if(_loc10_ || _loc2_)
               {
                  if(_loc10_)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        break;
                     }
                     loop11:
                     while(true)
                     {
                        §§push(0.5);
                        if(!_loc9_)
                        {
                           §§push(_loc4_);
                           if(!_loc9_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc10_)
                              {
                                 addr276:
                                 if(_loc10_ || _loc3_)
                                 {
                                    addr284:
                                    §§push(§§pop() + _loc4_ * (Math.random() * 0.5));
                                    if(_loc9_ && _loc1_)
                                    {
                                       break;
                                    }
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    continue;
                                 }
                                 addr326:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    continue loop11;
                                 }
                              }
                              break;
                           }
                           §§goto(addr284);
                        }
                        §§goto(addr276);
                     }
                     _loc8_ = §§pop();
                     loop12:
                     while(true)
                     {
                        §§push(§"!S§.§-!7§.particles);
                        §§push(§!U§.§&§);
                        §§push(§?F§.§<G§);
                        §§push(§!U§.§"R§);
                        §§push(§"!S§.§-!7§.slingshot.§"!d§);
                        §§push(§"!S§.§-!7§.slingshot.§,!W§);
                        §§push(1250);
                        §§push("");
                        §§push(§!U§.§9Z§(_loc1_.name));
                        §§push(_loc8_);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(§§pop() * Math.cos(_loc7_));
                           if(_loc10_)
                           {
                              addr222:
                              §§push(_loc5_);
                              if(!(_loc9_ && this))
                              {
                                 addr231:
                                 §§push(§§pop() * §§pop());
                                 §§push(_loc8_);
                                 if(!_loc9_)
                                 {
                                    addr234:
                                    §§push(-§§pop());
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(§§pop() * Math.sin(_loc7_));
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * _loc5_);
                                       }
                                    }
                                 }
                                 §§push(5);
                                 §§push(_loc8_);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(§§pop() * 20);
                                 }
                                 §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc5_));
                                 while(true)
                                 {
                                    _loc6_++;
                                    addr181:
                                    while(_loc9_)
                                    {
                                       continue loop12;
                                    }
                                    continue loop10;
                                 }
                                 addr265:
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr222);
                     }
                  }
                  §§goto(addr265);
               }
               §§goto(addr181);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
            }
            §§goto(addr326);
         }
      }
      
      public function §,!+§() : §&[§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§&[§ = null;
         if(_loc3_)
         {
            if(this.§[!Y§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return _loc1_;
               }
            }
            else
            {
               this.§+!F§();
            }
         }
         var _loc2_:§94§ = §2!A§[§3!@§];
         if(_loc3_ || _loc1_)
         {
            §§push(§2!A§.length <= 1);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(!(_loc4_ && this))
                     {
                        addr84:
                        if(_loc2_)
                        {
                           if(_loc3_ || this)
                           {
                              addr92:
                              §§push((_loc2_ as §^"§).§;o§(_loc2_.§6%§,_loc2_.§8_§,false));
                              if(!(_loc4_ && this))
                              {
                                 _loc1_ = §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr144:
                                    §%&§(§8!M§);
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              addr122:
                              _loc2_.§<"§();
                              §§push((_loc2_ as §^"§).§;o§(_loc2_.§6%§,_loc2_.§8_§));
                           }
                           _loc1_ = §§pop();
                        }
                        else if(_loc2_)
                        {
                           if(_loc4_)
                           {
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr92);
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr122);
      }
      
      public function §'E§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§94§ = null;
         if(_loc5_ || this)
         {
            if(§2!A§.length > 0)
            {
               addr31:
               var _loc2_:int = 0;
               var _loc3_:* = §2!A§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(_loc1_.name != "BIRD_REDBIG_HEIKKI")
                     {
                        continue;
                     }
                     if(_loc5_ || _loc3_)
                     {
                        this.§<K§(_loc1_);
                     }
                     loop1:
                     while(true)
                     {
                        addr70:
                        while(true)
                        {
                           §%!e§(§2!A§.indexOf(_loc1_),false);
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     §&M§.§6!#§("Bird_Black_Special1","ChannelExplosions");
                     if(_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr77);
                  }
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      private function §<K§(param1:§94§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 20;
         var _loc3_:* = 1;
         var _loc4_:* = Number(90);
         if(!(_loc10_ && this))
         {
            §§push(_loc3_);
            if(!_loc10_)
            {
               §§push(int(§§pop() * 1));
               if(_loc9_ || param1)
               {
                  addr50:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!(_loc10_ && param1))
                     {
                        if(!(_loc10_ && this))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                           _loc5_++;
                        }
                     }
                     while(true)
                     {
                        if(_loc9_ || _loc2_)
                        {
                           if(!_loc10_)
                           {
                              break;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop4:
                              for(; !_loc10_; if(_loc10_ && _loc3_)
                              {
                                 continue;
                              },§§push(§§pop() * Math.random()),if(!(_loc10_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              },§§goto(addr167))
                              {
                                 §§push(§§pop() * Math.cos(_loc6_));
                                 loop5:
                                 for(; _loc9_; if(!(_loc9_ || _loc2_))
                                 {
                                    continue;
                                 },if(_loc10_)
                                 {
                                    continue loop3;
                                 },if(!_loc10_)
                                 {
                                    §§goto(addr180);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§goto(addr243);
                                    }
                                    addr239:
                                 })
                                 {
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§push(§§pop() * Math.random());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          while(true)
                                          {
                                             _loc7_ = §§pop();
                                             addr204:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() * Math.sin(_loc6_));
                                                      if(_loc9_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   addr167:
                                                   if(_loc9_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                             addr180:
                                             _loc8_ = §§pop();
                                             §§goto(addr181);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(Math.random() * (720 / _loc3_));
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             break loop4;
                                          }
                                          addr243:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             break loop5;
                                          }
                                       }
                                       addr208:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    continue loop3;
                                 }
                              }
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc9_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop());
                                 if(_loc9_ || param1)
                                 {
                                    _loc4_ = §§pop();
                                    §§goto(addr239);
                                 }
                                 §§goto(addr243);
                              }
                           }
                        }
                        §§goto(addr204);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  §§goto(addr208);
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function get §[!b§() : Boolean
      {
         return this.§[!Y§;
      }
   }
}
