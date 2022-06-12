package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2Body;
   import §48§.b2World;
   import §6!B§.§>!E§;
   import §9"!§.§9"3§;
   import §<!`§.b2CircleShape;
   import §<!`§.b2MassData;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §<o§ extends §="$§
   {
       
      
      private const §7!P§:int = 2000;
      
      private const §false§:int = 0;
      
      private const §@!s§:int = 3000;
      
      public var §!2§:Point;
      
      public var §["E§:Point;
      
      public var §@!i§:Point;
      
      private var §!"9§:b2Vec2;
      
      private var § ^§:Boolean = false;
      
      private var §>N§:Number;
      
      private var §8!K§:Number = 0;
      
      private var §[!o§:Boolean = false;
      
      private var §`@§:§]a§;
      
      private var §7^§:Boolean = false;
      
      private var §&T§:Point;
      
      public var §^'§:Number;
      
      private var §9!!§:Boolean = false;
      
      public function §<o§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            this.§`@§ = param1;
            do
            {
               super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
               do
               {
                  this.init();
               }
               while(!(_loc14_ || param2));
               
            }
            while(!_loc14_);
            
         }
      }
      
      private function get §6e§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§^'§);
         if(!_loc2_)
         {
            return -§§pop();
         }
      }
      
      private function init() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:b2Body = §=!y§();
         var _loc2_:b2MassData = new b2MassData();
         if(!(_loc6_ && _loc2_))
         {
            _loc1_.SetType(b2Body.b2_kinematicBody);
            while(true)
            {
               this.§>N§ = this.§7!P§;
               while(!(_loc6_ && _loc3_))
               {
                  this.§8!K§ = this.§@!s§;
                  loop2:
                  while(true)
                  {
                     this.§^'§ = (_loc1_.GetFixtureList().GetShape() as b2CircleShape).§ u§();
                     loop3:
                     while(true)
                     {
                        _loc1_.SetActive(false);
                        loop4:
                        while(true)
                        {
                           addr54:
                           while(true)
                           {
                              this.sprite.visible = false;
                              loop6:
                              while(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    §]i§ = true;
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 §§push(_loc1_.GetPosition().x);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() / §9"3§.§'"F§);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop() - sprite.x);
                                       if(_loc5_ || this)
                                       {
                                          addr143:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc3_:* = §§pop();
                                       §§push(_loc1_.GetPosition().y);
                                       if(_loc5_ || _loc1_)
                                       {
                                          §§push(§§pop() / §9"3§.§'"F§);
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             §§goto(addr175);
                                          }
                                          §§goto(addr185);
                                       }
                                       addr175:
                                       §§push(§§pop() - sprite.y);
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          addr185:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc4_:* = §§pop();
                                       if(!_loc6_)
                                       {
                                          this.§&T§ = new Point(_loc3_,_loc4_);
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  if(!(_loc5_ || _loc1_))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §@p§(param1:Point, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§ ^§ = true;
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  this.§@!i§ = param1;
                  addr36:
                  while(_loc4_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§["E§ = param2;
            if(_loc4_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr32);
            }
            §§goto(addr36);
         }
         var _loc3_:b2Body = §=!y§();
         if(_loc4_)
         {
            _loc3_.SetPosition(new b2Vec2(this.§@!i§.x - this.§["E§.x * this.§^'§,this.§@!i§.y - this.§["E§.y * this.§^'§));
         }
         do
         {
            this.§!"9§ = _loc3_.GetPosition().Copy();
         }
         while(!(_loc4_ || param1));
         
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            §§push(this.§8!K§);
            if(!(_loc9_ && param3))
            {
               if(§§pop() > 0)
               {
                  if(_loc8_ || param1)
                  {
                     return §@!h§;
                  }
                  §§goto(addr53);
               }
               §§goto(addr53);
            }
            §§goto(addr73);
         }
         addr53:
         §§push(super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_)
         {
            addr73:
            §§push(Number(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(!(_loc9_ && this))
         {
            if(§§pop() <= 0)
            {
               if(!(_loc9_ && param1))
               {
                  this.reset();
               }
            }
            return _loc7_;
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:b2Vec2 = null;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(_loc8_)
         {
            §§push(this.§8!K§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§ ^§);
                        loop3:
                        while(_loc8_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              for(; _loc8_; if(_loc9_ && _loc3_)
                              {
                                 continue;
                              },if(!(_loc9_ && _loc2_))
                              {
                                 §§goto(addr32);
                              }
                              else
                              {
                                 §§goto(addr351);
                              })
                              {
                                 §§push(this);
                                 §§push(this.§>N§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(§§pop() - param1);
                                 }
                                 §§pop().§>N§ = §§pop();
                                 if(_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       addr376:
                                       §§push(this);
                                       §§push(this.§8!K§);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§8!K§ = §§pop();
                                       break;
                                    }
                                    §§push(this.§>N§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             §§push(1);
                                             if(_loc8_ || this)
                                             {
                                                §§push(this.§>N§);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop() / this.§7!P§);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         addr67:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc8_ || this)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr84);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§§findproperty(b2Vec2));
                                                                     §§push(this.§!"9§.x);
                                                                     if(_loc8_ || _loc2_)
                                                                     {
                                                                        §§push(this.§["E§.x * (-this.§6e§ * 2 * _loc2_));
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc8_ || _loc2_)
                                                                           {
                                                                              §§push(Math.random() * 0.2);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 addr439:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 §§push(this.§!"9§.y);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    addr444:
                                                                                    §§push(this.§["E§.y * (-this.§6e§ * 2 * _loc2_));
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       addr470:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr465:
                                                                                          §§push(Math.random() * 0.2);
                                                                                       }
                                                                                       _loc3_ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §=!y§().SetPosition(_loc3_);
                                                                                          break;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr470);
                                                                              }
                                                                              §§goto(addr444);
                                                                           }
                                                                           §§goto(addr439);
                                                                        }
                                                                        §§goto(addr465);
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                               }
                                                               §§goto(addr479);
                                                               addr82:
                                                            }
                                                            §§goto(addr489);
                                                         }
                                                         else
                                                         {
                                                            addr365:
                                                            §§goto(addr366);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr87);
                                                }
                                                §§goto(addr67);
                                             }
                                             break;
                                          }
                                          if(_loc8_)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(this.§[!o§);
                                                if(_loc8_)
                                                {
                                                   if(_loc9_ && _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         addr167:
                                                         if(!_loc9_)
                                                         {
                                                            this.reset();
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               if(_loc8_ || this)
                                                               {
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     addr84:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>N§);
                                                                        addr87:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§false§);
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(§§pop() > -§§pop())
                                                                                 {
                                                                                    addr479:
                                                                                    §§push(this.§[!o§);
                                                                                    break loop1;
                                                                                    addr32:
                                                                                 }
                                                                                 if(_loc9_ && _loc3_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    this.§ ^§ = false;
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr491);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       if(!(_loc8_ || this))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr324:
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          addr326:
                                                                                          §§pop();
                                                                                          §§push(this.§9!!§);
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§goto(addr324);
                                                                                                }
                                                                                                addr283:
                                                                                                §§push(!§§pop());
                                                                                                break loop3;
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                          break loop1;
                                                                                          addr327:
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(§§pop() > §§pop())
                                                                                       {
                                                                                          §§push(this.§8!K§);
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       addr367:
                                                                                       §>!E§.§@"8§("zombie_pig_transform_var2","ChannelPig");
                                                                                       §=!y§().SetActive(true);
                                                                                       §=!y§().SetActive(true);
                                                                                       §=!y§().SetSleepingAllowed(false);
                                                                                       addr345:
                                                                                       addr371:
                                                                                       addr366:
                                                                                       addr351:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              this.sprite.visible = true;
                                                                              addr221:
                                                                              return;
                                                                              addr333:
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     addr84:
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            §§goto(addr491);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      addr489:
                                                      break;
                                                   }
                                                   §§goto(addr84);
                                                }
                                                break loop1;
                                             }
                                             §§goto(addr327);
                                          }
                                          §§goto(addr167);
                                          §§goto(addr367);
                                       }
                                       _loc4_ = §§pop();
                                       §§goto(addr491);
                                    }
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    addr260:
                                    if(_loc9_)
                                    {
                                       §§goto(addr333);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr489);
                              }
                              §§goto(addr365);
                              §§push(this.§8!K§);
                           }
                           else
                           {
                              this.reset();
                           }
                           §§goto(addr514);
                        }
                        if(§§pop())
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              this.§9!!§ = true;
                              if(_loc8_ || _loc3_)
                              {
                                 §#6§.§6!z§.particles.§4!P§("HALLOWEEN_ZOMBIE_SMOKE",§'G§.§9!>§,§^!f§.§4N§,§'G§.§+";§,this.§!"9§.x,this.§!"9§.y,2000,"",§'G§.§0=§,0,0,0,0,1,20,true);
                                 §§goto(addr260);
                              }
                           }
                           §§goto(addr491);
                        }
                        §§goto(addr221);
                     }
                  }
                  §§goto(addr376);
               }
               if(!§§pop())
               {
                  if(!(_loc9_ && param1))
                  {
                     §§goto(addr489);
                  }
                  §§goto(addr491);
               }
               addr491:
               addr491:
               addr491:
               addr491:
               loop13:
               while(true)
               {
                  if(_loc4_ >= 1)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§#6§.§6!z§.particles);
                              §§push("PARTICLE_HALLOWEEN_STONE_");
                              if(_loc8_)
                              {
                                 §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                              }
                              §§pop().§4!P§(§§pop(),§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,this.§@!i§.x + -this.§["E§.y * (Math.random() * this.§6e§ * 2 - this.§6e§),this.§@!i§.y + this.§["E§.x * (Math.random() * this.§6e§ * 2 - this.§6e§),1500,"",0,_loc6_ * (Math.random() * 6 + 3),_loc7_ * (Math.random() * 6 + 3),8,Math.random() * 180,1);
                           }
                           addr672:
                        }
                        while(true)
                        {
                           if(!(_loc9_ && param1))
                           {
                              _loc4_++;
                              continue loop13;
                           }
                           loop19:
                           while(true)
                           {
                              §§push(this.§["E§.x * Math.sin(_loc5_));
                              if(_loc8_ || _loc2_)
                              {
                                 if(!_loc9_)
                                 {
                                    if(_loc8_)
                                    {
                                       addr639:
                                       §§push(this.§["E§.y * Math.cos(_loc5_));
                                       if(_loc8_ || param1)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc8_)
                                             {
                                                addr663:
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   addr671:
                                                   _loc7_ = §§pop();
                                                   §§goto(addr672);
                                                }
                                                else
                                                {
                                                   loop15:
                                                   for(; _loc8_; §§goto(addr663))
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(this.§["E§.y * Math.sin(_loc5_));
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr708:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr709:
                                                               while(!_loc9_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     continue loop19;
                                                                  }
                                                                  addr723:
                                                                  while(true)
                                                                  {
                                                                     §§push(0.0174532925);
                                                                     break loop19;
                                                                  }
                                                               }
                                                               addr726:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr727:
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr639);
                                                         }
                                                         addr707:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr721:
                                                      }
                                                      §§goto(addr723);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr726);
                                                   }
                                                   addr725:
                                                }
                                             }
                                             §§goto(addr671);
                                          }
                                          break;
                                       }
                                       §§goto(addr707);
                                    }
                                    §§goto(addr708);
                                 }
                                 §§goto(addr709);
                              }
                              §§goto(addr671);
                           }
                           while(true)
                           {
                              §§goto(addr725);
                           }
                        }
                     }
                     else
                     {
                        addr514:
                        if(_loc9_ && param1)
                        {
                           continue;
                        }
                        if(!_loc9_)
                        {
                           §§goto(addr492);
                        }
                     }
                     §§goto(addr727);
                  }
                  else
                  {
                     §§push(Math.random() * 90);
                  }
                  §§goto(addr721);
               }
               addr492:
               return;
            }
         }
         §§goto(addr82);
      }
      
      private function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§7^§)
            {
               loop0:
               while(true)
               {
                  this.§7^§ = true;
                  addr118:
                  addr43:
                  while(true)
                  {
                     this.§[!o§ = true;
                     addr111:
                     while(true)
                     {
                        sprite.removeFromParent();
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr118);
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
   }
}
