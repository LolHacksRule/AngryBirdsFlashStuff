package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2Body;
   import §#I§.b2Fixture;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§6!D§;
   import §0S§.§7!Z§;
   import §3b§.b2CircleShape;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §;!y§.§,!s§;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   
   public class § !V§ extends §3!5§
   {
      
      public static const §<a§:int;
      
      private static const §9!g§:int = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§§findproperty(§<a§));
            §§push(241 * §5G§.§6+§);
            if(_loc2_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§<a§ = §§pop();
         }
         do
         {
            §9!g§ = 200;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private const § !u§:Number = -5;
      
      private const §?!"§:int = 1500;
      
      private const §+W§:int = 3500;
      
      private const §!!W§:int = 1500;
      
      private var §2!h§:Boolean = false;
      
      private var §5!!§:Boolean = false;
      
      private var §^U§:Number = -5;
      
      private var §!!t§:Number = -5;
      
      private var §2C§:Number = -5;
      
      private var §+!v§:Number = 0;
      
      private var §@!'§:int = 0;
      
      private var §#!Y§:Number = 0;
      
      private var §#!h§:Number = 0;
      
      private var §4^§:Number = 0;
      
      private var § !^§:Number = 1000;
      
      private var §&!X§:Boolean = false;
      
      private var §3B§:§ 4§;
      
      public function § !V§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               this.§3B§ = param1;
               addr67:
               if(!(_loc12_ && this))
               {
                  this.§4^§ = 0;
                  addr74:
                  if(!(_loc13_ || param1))
                  {
                     while(!_loc12_)
                     {
                        §§goto(addr67);
                        §§goto(addr74);
                     }
                     while(true)
                     {
                        §+!j§.mTryToFly = true;
                        §§goto(addr65);
                     }
                     addr65:
                     addr79:
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      private function get §[!I§() : Number
      {
         return §<a§ * scale;
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(2);
               addr165:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr166:
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr169:
                              while(true)
                              {
                                 §§push(this.§ !^§);
                                 addr157:
                                 while(true)
                                 {
                                    §§push(§§pop() < §9!g§);
                                 }
                              }
                           }
                           addr168:
                        }
                        while(true)
                        {
                           loop8:
                           for(; !§§pop(); while(_loc3_ || param2)
                           {
                              §§pop();
                              continue loop0;
                           })
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§!!t§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() == this.§ !u§);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(!§§pop());
                                 }
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          continue loop8;
                                       }
                                       addr85:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(!(_loc4_ && param2))
                                             {
                                                this.§<!!§(1,param2 > 20);
                                                loop15:
                                                while(!(_loc4_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      continue loop15;
                                                   }
                                                }
                                                continue loop0;
                                                if(_loc3_ || param2)
                                                {
                                                   addr46:
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         return;
                                                      }
                                                      break loop8;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             §§goto(addr169);
                                          }
                                          while(true)
                                          {
                                             this.§ !^§ = 0;
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§goto(addr39);
                                             }
                                             §§goto(addr100);
                                          }
                                          §§goto(addr46);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr168);
                                    }
                                    §§goto(addr169);
                                    addr66:
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr85);
                                 }
                                 continue loop3;
                              }
                              §§goto(addr157);
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§=!b§(param1));
            loop0:
            for(; §§pop(); if(!(_loc2_ && param1))
            {
               return §§pop();
            })
            {
               loop1:
               while(true)
               {
                  §,!s§.§=!I§.particles.§-M§(§>p§.§@=§,§=!%§.§#,§,§>p§.§?-§,§63§().GetPosition().x,§63§().GetPosition().y,-1,"",§>p§.§9§);
                  while(!_loc2_)
                  {
                     this.§@h§(0);
                     if(!_loc2_)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           break loop0;
                        }
                        §§push(true);
                        if(!(_loc3_ || _loc3_))
                        {
                           return §§pop();
                        }
                        addr109:
                        continue loop0;
                     }
                  }
                  addr110:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr109);
            §§push(false);
         }
         §§goto(addr110);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = NaN;
         if(!_loc9_)
         {
            §§push(!§2!K§);
            if(_loc8_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr238:
                     while(true)
                     {
                        §§pop();
                        addr239:
                        while(true)
                        {
                           §§push(this.§^U§);
                           addr224:
                           while(true)
                           {
                              §§push(§§pop() == this.§ !u§);
                           }
                        }
                     }
                     addr238:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§@h§();
                              addr231:
                              while(true)
                              {
                              }
                           }
                           addr229:
                        }
                        while(true)
                        {
                           §§push(param1);
                           loop6:
                           while(true)
                           {
                              §§push(12);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr220:
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr178:
                                                while(true)
                                                {
                                                   §§push(5);
                                                   if(_loc9_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                }
                                                continue loop7;
                                             }
                                          }
                                          addr219:
                                       }
                                       while(true)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc8_ || param3))
                                             {
                                                break;
                                             }
                                             if(_loc9_)
                                             {
                                                continue loop0;
                                             }
                                             if(§§pop())
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this.§2!h§);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop15;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop15;
                                                      }
                                                      §§goto(addr220);
                                                      addr212:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr139);
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    if(_loc8_)
                                    {
                                       _loc7_ = §§pop();
                                       §§goto(addr85);
                                    }
                                    break;
                                 }
                                 continue loop6;
                                 §§goto(addr63);
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr238);
         }
         §§goto(addr50);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!§2!K§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§=!b§(null);
                  addr104:
                  while(true)
                  {
                     §,![§ = true;
                     while(!(_loc1_ && this))
                     {
                        this.§@h§(0);
                        if(_loc1_ && _loc2_)
                        {
                           continue;
                        }
                        §§goto(addr49);
                     }
                  }
                  addr104:
               }
               §§goto(addr104);
            }
            else
            {
               §§push(false);
               if(_loc2_ || _loc2_)
               {
                  return §§pop();
               }
            }
            addr49:
            return true;
         }
         §§goto(addr104);
      }
      
      private function §@h§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr103:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr104);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Vector.<§!u§> = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(_loc8_ || _loc3_)
         {
            §§push(this);
            §§push(this.§ !^§);
            if(!(_loc9_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§ !^§ = §§pop();
            if(_loc8_ || _loc2_)
            {
               §,![§ = true;
               if(_loc8_)
               {
                  §§push(this.§^U§);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(this.§ !u§);
                     if(_loc8_)
                     {
                        if(§§pop() != §§pop())
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§^U§);
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§^U§ = §§pop();
                              while(true)
                              {
                                 §§push(this.§^U§);
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(!(_loc9_ && param1))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(this.§4^§);
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(1);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      addr677:
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         this.§^U§ = this.§ !u§;
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§2C§);
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().§2C§ = §§pop();
                                                         if(_loc8_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§+!v§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() - param1);
                                                                  }
                                                                  §§pop().§+!v§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+!v§);
                                                                     addr619:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    this.§+!v§ = this.§!!W§ / 5;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(Math.random() * 100);
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          §§push(50);
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc8_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(10);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                    addr782:
                                                                                    §+!j§.setScale(_loc3_ * scale);
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       §§goto(addr794);
                                                                                    }
                                                                                    §§goto(addr899);
                                                                                 }
                                                                                 §§goto(addr794);
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                           §§goto(addr730);
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§goto(addr782);
                                                                        }
                                                                        §§goto(addr899);
                                                                     }
                                                                     §§goto(addr884);
                                                                  }
                                                                  addr658:
                                                               }
                                                               §§goto(addr705);
                                                            }
                                                            addr692:
                                                         }
                                                         §§goto(addr774);
                                                      }
                                                      addr677:
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§4^§);
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + 0.2);
                                                      }
                                                      §§pop().§4^§ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§[!I§);
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(§§pop() * this.§4^§);
                                                            }
                                                            §§pop().§]!O§(§§pop(),§,!;§.material.mValues[§ L§.§@q§],§,!;§.material.mValues[§ L§.§82§],§,!;§.material.mValues[§ L§.§'!x§]);
                                                            if(_loc8_)
                                                            {
                                                               §+!j§.setScale(this.§4^§ * scale);
                                                               if(_loc8_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr384:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr677);
                                                               }
                                                               §§goto(addr899);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr726);
                                                         addr46:
                                                      }
                                                   }
                                                   §§goto(addr501);
                                                }
                                                §§goto(addr472);
                                             }
                                             §§goto(addr526);
                                          }
                                          §§goto(addr782);
                                       }
                                       else
                                       {
                                          §§push(this.§^U§);
                                          if(!(_loc9_ && this))
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr619);
                                    }
                                    §§goto(addr522);
                                 }
                                 break;
                              }
                              §§push(param1);
                              if(_loc8_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc8_ || _loc3_)
                                    {
                                       _loc2_ = new Vector.<§!u§>(1,true);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          _loc2_[0] = this;
                                       }
                                       while(true)
                                       {
                                          §^!W§.addExplosions(§3!b§.§]!-§,§63§().GetPosition().x,§63§().GetPosition().y,_loc2_);
                                          loop3:
                                          while(true)
                                          {
                                             this.§=!b§(null);
                                             loop4:
                                             while(true)
                                             {
                                                §-!>§ = "BIRD_ORANGE_BIG";
                                                while(true)
                                                {
                                                   §,!;§ = §7!Z§.§`!H§(§-!>§);
                                                   continue loop3;
                                                   addr332:
                                                   if(!(_loc9_ && this))
                                                   {
                                                      sprite.scaleY = this.§4^§;
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr325:
                                                      while(!(_loc9_ && _loc2_))
                                                      {
                                                         §§goto(addr332);
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                          if(!(_loc8_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr318);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr718);
                                    }
                                    §§goto(addr899);
                                 }
                                 §§goto(addr384);
                              }
                              else
                              {
                                 addr396:
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       §§push(this.§2!h§);
                                       if(_loc8_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(this);
                                                §§push(this.§!!t§);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§!!t§ = §§pop();
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§goto(addr729);
                                                   §§push(this.§!!t§);
                                                }
                                                else
                                                {
                                                   §§goto(addr677);
                                                }
                                                §§goto(addr884);
                                             }
                                             §§goto(addr705);
                                          }
                                          §§goto(addr730);
                                       }
                                       else
                                       {
                                          addr663:
                                          if(§§pop())
                                          {
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§goto(addr673);
                                                §§push(this.§2C§);
                                             }
                                             §§goto(addr692);
                                          }
                                          §§goto(addr899);
                                       }
                                    }
                                    §§goto(addr705);
                                 }
                                 else
                                 {
                                    §§push(this.§5!!§);
                                 }
                                 §§goto(addr663);
                              }
                           }
                        }
                        else
                        {
                           §§push(this.§!!t§);
                           if(_loc8_ || _loc2_)
                           {
                              §§goto(addr396);
                              §§push(this.§ !u§);
                           }
                        }
                        §§goto(addr730);
                     }
                     §§goto(addr396);
                  }
                  §§goto(addr526);
               }
               §§goto(addr615);
            }
            §§goto(addr814);
         }
         §§goto(addr615);
      }
      
      private function §]!O§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §63§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(!(_loc8_ && param1))
         {
            _loc5_.SetAwake(true);
            while(true)
            {
               _loc7_.§8&§(param1);
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr130:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              _loc6_.§!!F§(param2);
                              addr134:
                              while(true)
                              {
                                 _loc5_.§'!d§();
                                 addr124:
                                 while(!_loc8_)
                                 {
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(param3);
                           continue loop2;
                        }
                     }
                  }
                  if(_loc8_ && param1)
                  {
                     continue;
                  }
                  _loc6_.§5!,§(param4);
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr134);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§2!K§)
            {
               if(_loc2_)
               {
                  addr23:
                  super.addTrail();
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      private function §<!!§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:Number = NaN;
         var _loc9_:* = 0;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         §§push((§63§().GetFixtureList().GetShape() as b2CircleShape).§4!Y§());
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§6!E§() / 40);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(_loc13_)
         {
            §§push(_loc4_);
            if(_loc13_)
            {
               addr65:
               §§push(§§pop() * §^!e§(true));
               if(!(_loc12_ && this))
               {
                  addr61:
                  §§push(§§pop() * 0.9);
               }
               var _loc5_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(!(_loc12_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc3_);
               if(!(_loc12_ && param2))
               {
                  §§push(§§pop() / this.§[!I§);
                  if(_loc13_ || param1)
                  {
                     addr97:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc12_ && param2))
                  {
                     §§push(_loc5_);
                     if(_loc13_)
                     {
                        §§push(_loc7_);
                        if(!(_loc12_ && this))
                        {
                           §§push(§§pop() * 3);
                           if(_loc13_)
                           {
                              addr675:
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() * §§pop());
                           loop0:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc13_)
                                 {
                                    _loc5_ = §§pop();
                                    addr683:
                                    while(true)
                                    {
                                       §§push(30);
                                    }
                                    addr683:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       addr685:
                                       while(true)
                                       {
                                          §§push(30);
                                          addr686:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             addr687:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr685:
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(param2)
                                       {
                                          if(!_loc12_)
                                          {
                                             §§push(8);
                                             while(_loc13_ || param2)
                                             {
                                                _loc5_ = §§pop();
                                                addr597:
                                                if(!(_loc13_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc13_)
                                                {
                                                   _loc9_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(8);
                                                            loop7:
                                                            while(!_loc12_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc13_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  while(!(_loc12_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc13_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr597);
                                                                     }
                                                                     §§goto(addr683);
                                                                  }
                                                                  continue loop4;
                                                                  addr627:
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr686);
                                                         }
                                                         addr659:
                                                      }
                                                      if(_loc13_ || param1)
                                                      {
                                                         break loop4;
                                                      }
                                                      §§goto(addr685);
                                                   }
                                                   §§goto(addr627);
                                                }
                                                §§goto(addr683);
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr659);
                                       }
                                       §§goto(addr593);
                                    }
                                    addr472:
                                    §§push(_loc9_);
                                    if(_loc13_)
                                    {
                                       addr477:
                                       if(§§pop() >= _loc5_ / 3)
                                       {
                                          addr481:
                                          _loc9_ = 0;
                                          addr482:
                                          addr480:
                                          if(_loc13_ || param1)
                                          {
                                             addr107:
                                             §§push(_loc9_);
                                             if(!(_loc12_ && param1))
                                             {
                                                §§push(_loc5_);
                                                if(!_loc12_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc13_ || param2)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(!(_loc13_ || param2))
                                                               {
                                                                  addr503:
                                                                  §,!s§.§=!I§.particles.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§63§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
                                                                  addr539:
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     _loc9_++;
                                                                     addr492:
                                                                     §§goto(addr472);
                                                                  }
                                                                  addr578:
                                                                  §§push(Math.random() * this.§[!I§);
                                                                  if(!(_loc12_ && _loc3_))
                                                                  {
                                                                     addr575:
                                                                     §§push(this.§[!I§);
                                                                     if(!(_loc12_ && param2))
                                                                     {
                                                                        addr572:
                                                                        §§push((§§pop() - §§pop() / 2) * 2);
                                                                        §§push(_loc7_);
                                                                     }
                                                                     _loc8_ = §§pop() * §§pop();
                                                                     §§goto(addr578);
                                                                  }
                                                                  §§goto(addr572);
                                                                  addr501:
                                                                  addr499:
                                                                  addr497:
                                                                  addr496:
                                                                  addr592:
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr482);
                                                         }
                                                         addr234:
                                                         if(!(_loc12_ && param2))
                                                         {
                                                            _loc9_++;
                                                            addr143:
                                                            §§goto(addr107);
                                                         }
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            if(_loc13_ || this)
                                                            {
                                                               §§push(§,!s§.§=!I§);
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().particles);
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     §§push(§>p§.§&@§);
                                                                     if(_loc13_ || param2)
                                                                     {
                                                                        §§push(§=!%§.§2k§);
                                                                        if(_loc13_ || param2)
                                                                        {
                                                                           §§push(§>p§.§%§);
                                                                           if(_loc13_ || this)
                                                                           {
                                                                              §§pop().§-M§(§§pop(),§§pop(),§§pop(),§63§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§63§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§>p§.§1>§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
                                                                              §§goto(addr234);
                                                                           }
                                                                           §§goto(addr503);
                                                                        }
                                                                        §§goto(addr501);
                                                                     }
                                                                     §§goto(addr499);
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               §§goto(addr496);
                                                            }
                                                            §§goto(addr492);
                                                         }
                                                         addr419:
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            §§push(0.5);
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc13_ || param2)
                                                               {
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc13_ || _loc3_)
                                                                        {
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc12_ && param1))
                                                                                             {
                                                                                                addr316:
                                                                                                §§push(§§pop() * (Math.random() * 0.5));
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc12_ && _loc3_))
                                                                                             {
                                                                                                addr339:
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(!(_loc12_ && _loc3_))
                                                                                                   {
                                                                                                      addr349:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc12_ && param2))
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                         addr380:
                                                                                                         §§push(this.§[!I§);
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(2);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  if(_loc13_ || param1)
                                                                                                                  {
                                                                                                                     addr398:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              addr411:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 addr414:
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    addr418:
                                                                                                                                    _loc8_ = §§pop() * §§pop();
                                                                                                                                    addr417:
                                                                                                                                    §§goto(addr419);
                                                                                                                                 }
                                                                                                                                 addr451:
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          addr459:
                                                                                                                                          §§push(180 / Math.PI);
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                addr468:
                                                                                                                                                _loc10_ = §§pop() / §§pop();
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr380);
                                                                                                                                                   §§push(Math.random() * this.§[!I§);
                                                                                                                                                }
                                                                                                                                                §§goto(addr480);
                                                                                                                                                addr467:
                                                                                                                                             }
                                                                                                                                             §§goto(addr572);
                                                                                                                                          }
                                                                                                                                          §§goto(addr575);
                                                                                                                                       }
                                                                                                                                       addr591:
                                                                                                                                       _loc6_ = Number(§§pop() + Math.random() * (720 / _loc5_));
                                                                                                                                       addr589:
                                                                                                                                       §§goto(addr592);
                                                                                                                                    }
                                                                                                                                    §§goto(addr572);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr468);
                                                                                                                           }
                                                                                                                           §§goto(addr572);
                                                                                                                        }
                                                                                                                        §§goto(addr459);
                                                                                                                     }
                                                                                                                     if(!(_loc12_ && param1))
                                                                                                                     {
                                                                                                                        addr448:
                                                                                                                        §§push(Number(§§pop() + §[!R§(Math.random() * (720 / _loc5_))));
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§goto(addr451);
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr572);
                                                                                                                     }
                                                                                                                     §§goto(addr575);
                                                                                                                  }
                                                                                                                  §§goto(addr589);
                                                                                                               }
                                                                                                               §§goto(addr414);
                                                                                                            }
                                                                                                            §§goto(addr572);
                                                                                                         }
                                                                                                         §§goto(addr459);
                                                                                                      }
                                                                                                      §§goto(addr398);
                                                                                                   }
                                                                                                   §§goto(addr575);
                                                                                                }
                                                                                                §§goto(addr467);
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          §§goto(addr589);
                                                                                       }
                                                                                       §§goto(addr591);
                                                                                    }
                                                                                    §§goto(addr448);
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              §§goto(addr417);
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                     §§goto(addr380);
                                                                  }
                                                                  §§goto(addr414);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr398);
                                                   §§push(_loc6_);
                                                }
                                                §§goto(addr477);
                                             }
                                             §§goto(addr481);
                                          }
                                          §§goto(addr539);
                                       }
                                       §§goto(addr591);
                                       §§push(_loc6_);
                                    }
                                    §§goto(addr481);
                                 }
                              }
                           }
                        }
                        §§goto(addr675);
                     }
                     §§goto(addr686);
                  }
                  §§goto(addr685);
               }
               §§goto(addr97);
            }
            §§goto(addr61);
         }
         §§goto(addr65);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§2!K§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr38:
                  §§push(1);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  return -1;
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr38);
      }
      
      private function §=!b§(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§[A§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return false;
               }
               else
               {
                  loop2:
                  while(true)
                  {
                     addr60:
                     while(true)
                     {
                        §§push(§-!Q§);
                        §§push("Globe_Bird_Special_Activation_");
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                        }
                        §§pop().§7"$§(§§pop(),"ChannelOrangeBird");
                        do
                        {
                           §[A§ = true;
                        }
                        while(!_loc2_);
                        
                        if(_loc2_ || _loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     §§push(true);
                     if(_loc2_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  addr103:
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr103);
      }
   }
}
