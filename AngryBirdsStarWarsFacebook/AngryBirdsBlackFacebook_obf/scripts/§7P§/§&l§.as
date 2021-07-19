package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§%"3§;
   import §2"Y§.§,",§;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import flash.geom.Point;
   
   public class §&l§ extends §3!y§
   {
      
      public static const §;#0§:String = "timer";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §;#0§ = "timer";
         }
      }
      
      protected var §=#'§:Boolean = false;
      
      protected var §<X§:§,",§;
      
      protected var §#!U§:Number = 0;
      
      protected var §?^§:Boolean = false;
      
      protected var §<^§:Point;
      
      protected var §7!'§:int;
      
      private var §+#&§:Boolean;
      
      private var §@=§:Boolean;
      
      public function §&l§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            this.§<X§ = param4 as §,",§;
         }
         while(true)
         {
            §§push(this);
            if(_loc9_ || param3)
            {
               if(Math.random() > 0.5)
               {
                  addr70:
                  §§push(true);
                  if(_loc9_ || this)
                  {
                  }
               }
               else
               {
                  §§push(false);
               }
               §§pop().§+#&§ = §§pop();
               continue;
            }
            §§goto(addr70);
         }
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<X§.§1"Z§(§%"3§.§^f§));
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            this.§<X§.§-Z§(_loc1_);
         }
      }
      
      override public function scream() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.scream();
         }
         §§push(this.§<X§.§1"Z§(§%"3§.§5"P§));
         if(!(_loc2_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.§<X§.§-Z§(_loc1_);
         }
      }
      
      override protected function addTrail(param1:§;$§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            if(!isLeavingTrail)
            {
               if(!_loc5_)
               {
                  §§push(false);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr97:
                     while(true)
                     {
                        if(param1)
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§push(this.§@=§);
                              while(_loc4_ || _loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       continue loop0;
                                    }
                                    addr147:
                                    addr147:
                                    while(true)
                                    {
                                       §§push(Number(§3!t§().GetPosition().y));
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          param1.§;!0§(this.§<X§.normalTrailSprite,§,!w§.§9F§,§ U§.§+!Q§,_loc2_,_loc3_,-1,"",§ U§.§9"W§);
                                          addr81:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr147:
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§@=§);
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().§@=§ = §§pop();
                                    if(!(_loc4_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr96);
                                 }
                              }
                              addr153:
                              return §§pop();
                              addr109:
                           }
                           §§goto(addr147);
                        }
                        while(true)
                        {
                           §§push(true);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr109);
                        }
                        return §§pop();
                        continue loop0;
                     }
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr97);
         }
         §§goto(addr147);
      }
      
      override public function enteredSensor(param1:§1#E§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            super.enteredSensor(param1);
            if(_loc5_)
            {
               §§goto(addr29);
            }
            §§goto(addr131);
         }
         addr29:
         if(param1 is §"M§)
         {
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§7!'§);
               if(_loc5_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  _loc2_.§7!'§ = _loc3_;
               }
               if(_loc5_)
               {
                  if(this.§7!'§ == 1)
                  {
                     while(true)
                     {
                        this.§?^§ = true;
                        §§goto(addr131);
                     }
                  }
                  while(true)
                  {
                     this.§<^§ = new Point(§3!t§().GetPosition().x,§3!t§().GetPosition().y);
                     if(_loc5_ || _loc3_)
                     {
                        if(!(_loc5_ || param1))
                        {
                           addr131:
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr123);
            }
            §§goto(addr131);
         }
         addr104:
         while(true)
         {
            this.§<X§.§-Z§(§%"3§.§`$§);
            addr111:
            loop1:
            while(true)
            {
               if(_loc4_)
               {
                  continue loop2;
               }
               while(true)
               {
                  continue loop1;
               }
            }
            continue loop2;
         }
      }
      
      override public function leftSensor(param1:§1#E§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.leftSensor(param1);
            if(_loc4_)
            {
               §§push(param1 is §"M§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§7!'§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_ || param1)
                        {
                           _loc2_.§7!'§ = _loc3_;
                        }
                        if(_loc4_)
                        {
                           §§push(this.§7!'§ == 0);
                           if(_loc4_)
                           {
                              addr117:
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr120:
                                    loop2:
                                    while(true)
                                    {
                                       §§push(!param1.§9#;§);
                                       if(_loc4_ || _loc2_)
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                this.§<X§.§-Z§(§%"3§.§<!H§);
                                             }
                                             break;
                                          }
                                          addr70:
                                          return;
                                          addr84:
                                       }
                                    }
                                 }
                                 addr119:
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr70);
               }
               §§goto(addr117);
            }
            §§goto(addr100);
         }
         §§goto(addr120);
      }
      
      protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc4_:Boolean;
         §§push(_loc4_ = super.activateSpecialPower(param1,param2,param3));
         if(_loc7_)
         {
            if(§§pop())
            {
               if(!_loc8_)
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param2)
                     {
                        addr45:
                        _loc5_ = §§pop();
                        if(!_loc8_)
                        {
                           §§push(this.hasTargetedSpecialPowerParticles);
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§>#8§(param2,param3));
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr145:
                                    }
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr147:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr139:
                              }
                              while(true)
                              {
                                 this.spawnParticlesOnSpecial(param1,_loc5_);
                                 loop4:
                                 while(!(_loc8_ && this))
                                 {
                                    §§push(this.§<X§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§%"3§.§!!B§);
                                       addr100:
                                       while(true)
                                       {
                                          §§push(§§pop().§1"Z§(§§pop()));
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc6_ = §§pop();
                                          while(!(_loc8_ && this))
                                          {
                                             continue loop5;
                                             §§pop().§-Z§(§§pop());
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc8_ && this)
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr50);
                                             }
                                          }
                                          §§goto(addr139);
                                       }
                                    }
                                 }
                                 §§goto(addr147);
                              }
                           }
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr45);
               }
               §§goto(addr94);
            }
            addr50:
            §§goto(addr58);
         }
         addr58:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && this))
            {
               break;
            }
            continue loop8;
         }
         return §§pop();
      }
      
      protected function spawnParticlesOnSpecial(param1:§;$§, param2:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         if(_loc8_)
         {
            §§push(this.§<X§.§6k§);
            loop0:
            for(; §§pop() > 0; §§push(0),if(_loc7_)
            {
               continue;
            },_loc5_ = §§pop(),if(!_loc8_)
            {
               §§goto(addr115);
            },addr29:,if(_loc5_ >= this.§<X§.§6k§)
            {
               if(_loc8_ || param1)
               {
                  if(_loc7_ && _loc3_)
                  {
                     addr78:
                     if(_loc8_)
                     {
                        _loc5_++;
                        addr55:
                        §§goto(addr29);
                     }
                     param1.addObject(_loc6_,_loc3_,_loc4_,param2,§;=§.§""3§,false,true,false);
                     §§goto(addr78);
                     addr92:
                  }
                  break;
               }
               §§goto(addr55);
            },§§push(this.§<X§.§<4§(_loc5_)),if(!_loc7_)
            {
               §§push(§§pop());
            },_loc6_ = §§pop(),§§goto(addr92))
            {
               if(_loc8_ || param1)
               {
                  while(true)
                  {
                     §§push(Number(§3!t§().GetPosition().x));
                     addr150:
                     while(true)
                     {
                        _loc3_ = §§pop();
                     }
                  }
                  addr145:
               }
               while(true)
               {
                  §§push(Number(§3!t§().GetPosition().y));
                  if(_loc8_ || param1)
                  {
                     _loc4_ = §§pop();
                     while(!(_loc7_ && this))
                     {
                        continue loop0;
                     }
                     continue;
                     addr115:
                  }
                  §§goto(addr150);
               }
            }
            return;
         }
         §§goto(addr145);
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = null;
         if(!_loc6_)
         {
            if(!param1)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:Number = §3!t§().GetPosition().x;
            var _loc3_:Number = §3!t§().GetPosition().y;
            var _loc4_:int = 0;
            while(true)
            {
               if(_loc4_ >= this.§<X§.§-Q§)
               {
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  while(true)
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        addr97:
                        while(true)
                        {
                           param1.addObject(_loc5_,_loc2_,_loc3_,0,§;=§.§""3§,false,true,false,1,true);
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr75:
               }
               else
               {
                  §§push(this.§<X§.§="§(_loc4_));
                  if(_loc7_ || param1)
                  {
                     §§push(_loc5_ = §§pop());
                  }
                  if(§§pop())
                  {
                     §§goto(addr97);
                  }
               }
               while(true)
               {
                  _loc4_++;
                  §§goto(addr75);
               }
            }
            return;
         }
         addr31:
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(_loc7_ || param3)
         {
            §§push(param1);
            if(_loc7_ || this)
            {
               if(§§pop() >= 5)
               {
                  if(_loc7_ || param1)
                  {
                     addr69:
                     this.addDamageParticles(param2,param1);
                  }
               }
               return _loc5_;
            }
         }
         §§goto(addr69);
      }
      
      override public function addDamageParticles(param1:§;$§, param2:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         if(!_loc9_)
         {
            if(this.§<X§.§!a§ > 0)
            {
               if(_loc8_ || param2)
               {
                  addr225:
                  _loc5_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc8_ || param2)
                  {
                     §§push(this.§<X§);
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc9_)
                              {
                                 continue loop1;
                              }
                              §§push(this.§<X§);
                              if(!(_loc8_ || _loc3_))
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop().§-Q§)
                              {
                                 if(_loc9_ && param2)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          continue loop3;
                                       }
                                       addr138:
                                       while(true)
                                       {
                                          if(_loc9_ && _loc3_)
                                          {
                                             break loop0;
                                          }
                                          if(!_loc9_)
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                while(true)
                                                {
                                                   _loc5_++;
                                                   continue loop6;
                                                }
                                                continue loop3;
                                                addr65:
                                             }
                                             else
                                             {
                                                addr173:
                                                addr202:
                                             }
                                             _loc5_++;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr61);
                              }
                              §§push(this.§<X§);
                              if(!_loc9_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(§§pop().§="§(§§pop()));
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             _loc7_ = §§pop();
                                             addr115:
                                             if(_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(_loc9_ && _loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      param1.addObject(_loc7_,_loc3_,_loc4_,0,§;=§.§""3§,false,true,false);
                                                   }
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr65);
                                             }
                                             §§goto(addr173);
                                          }
                                          else
                                          {
                                             addr185:
                                             _loc6_ = §§pop();
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                param1.addObject(_loc6_,_loc3_,_loc4_,0,§;=§.§""3§,false,true,false,1,true);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr173);
                                       }
                                       else
                                       {
                                          addr184:
                                          §§push(§§pop());
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr115);
                                 }
                                 else
                                 {
                                    addr182:
                                    §§push(§§pop().§&V§(§§pop()));
                                 }
                                 §§goto(addr184);
                              }
                              else
                              {
                                 addr181:
                                 §§push(_loc5_);
                              }
                              §§goto(addr182);
                              §§goto(addr173);
                           }
                        }
                     }
                     addr171:
                  }
                  if(§§pop() >= §§pop().§-Q§)
                  {
                     break;
                  }
                  §§goto(addr181);
                  §§push(this.§<X§);
               }
               addr61:
               return;
            }
            §§push(0);
            §§goto(addr171);
         }
         §§goto(addr225);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§=#'§;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§+#&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     loop16:
                     while(true)
                     {
                        §§pop();
                        addr224:
                        while(true)
                        {
                           §§push(Boolean(param2));
                           continue loop16;
                        }
                     }
                     addr223:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           param2.addObject(this.§<X§.enterGravitationParticles,this.§3!t§().GetPosition().x,this.§3!t§().GetPosition().y,0,§;=§.§""3§,false,true,false);
                           addr205:
                           while(true)
                           {
                              this.§+#&§ = false;
                              addr173:
                              while(true)
                              {
                              }
                           }
                        }
                        addr186:
                     }
                     while(true)
                     {
                        if(isReadyToBeRemoved(param1))
                        {
                           if(!_loc4_)
                           {
                              this.§=#'§ = true;
                           }
                           while(true)
                           {
                           }
                           addr168:
                        }
                        loop7:
                        while(true)
                        {
                           super.update(param1,param2);
                           loop8:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§#!U§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§#!U§ = §§pop();
                              while(true)
                              {
                                 if(§8!_§)
                                 {
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(this.§#!U§ > 1000 / 60)
                                          {
                                             while(true)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   this.§#!U§ = 0;
                                                   loop15:
                                                   while(true)
                                                   {
                                                      this.§;"<§(param2);
                                                      addr117:
                                                      while(!_loc3_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      addr119:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr186);
                                                }
                                             }
                                             addr131:
                                          }
                                       }
                                    }
                                    continue loop8;
                                    addr123:
                                 }
                                 addr73:
                                 while(true)
                                 {
                                    §§push(this.§?^§);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                    §§goto(addr119);
                                 }
                                 continue loop1;
                                 addr95:
                                 if(_loc3_ || param2)
                                 {
                                    if(param2)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                param2.addObject(this.§<X§.enterGravitationParticles,this.§<^§.x,this.§<^§.y,0,§;=§.§""3§,false,true,false);
                                                addr59:
                                                if(!_loc4_)
                                                {
                                                   addr61:
                                                   if(_loc4_ && param2)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               this.§?^§ = false;
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  §§goto(addr95);
                                                               }
                                                               §§goto(addr205);
                                                               addr93:
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr123);
                                                         }
                                                         §§goto(addr61);
                                                      }
                                                      §§goto(addr131);
                                                      addr86:
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr19);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr93);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr59);
                                    }
                                    addr19:
                                 }
                                 continue;
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr223);
            }
         }
         §§goto(addr125);
      }
      
      private function §;"<§(param1:§;$§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            §§push(Boolean(param1));
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop23:
                     while(true)
                     {
                        §§pop();
                        loop21:
                        while(true)
                        {
                           §§push(this.§<X§);
                           loop22:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc6_)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§7!'§ > 0);
                                          loop3:
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr225:
                                                      while(true)
                                                      {
                                                         §§push(this.§<X§);
                                                         addr166:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().atmosphereTailParticles);
                                                            addr167:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc7_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   addr224:
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(this.§<X§);
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop().normalTailParticles);
                                                            if(_loc7_ || this)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(§§pop());
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr162:
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       §§push(Number(§3!t§().GetPosition().x));
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§3!t§().GetPosition().y));
                                                                                             loop15:
                                                                                             while(_loc7_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         §§push(Number(§3!t§().GetAngle()));
                                                                                                         if(!(_loc7_ || param1))
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         _loc5_ = §§pop();
                                                                                                         §§goto(addr71);
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   addr193:
                                                                                                   while(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   addr71:
                                                                                                   §§goto(addr225);
                                                                                                   while(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         param1.§]#^§(_loc2_,_loc3_,_loc4_,_loc5_,§;=§.§""3§,1,3);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            §§goto(addr29);
                                                                                                         }
                                                                                                         addr179:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§<X§);
                                                                                                            addr181:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               §§push(§§pop().atmosphereTailParticles);
                                                                                                               if(_loc7_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  §§goto(addr193);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                                 §§goto(addr29);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        §§goto(addr167);
                                                                     }
                                                                  }
                                                                  addr161:
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr161);
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr179);
                                                }
                                                continue loop1;
                                             }
                                             continue loop23;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr29:
                                    return;
                                 }
                                 addr207:
                              }
                              §§goto(addr224);
                           }
                        }
                     }
                     addr247:
                  }
                  §§goto(addr207);
               }
            }
            §§goto(addr247);
         }
         §§goto(addr162);
      }
      
      protected function §>#8§(param1:Number, param2:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         var _loc5_:*;
         §§push(_loc5_ = Number(Math.atan2(param2 - _loc4_,param1 - _loc3_)));
         if(!(_loc6_ && param1))
         {
            §§push(0);
            if(_loc7_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(_loc5_);
                     if(_loc7_ || this)
                     {
                        addr75:
                        §§push(§§pop() + Math.PI * 2);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc7_ || param2)
                           {
                           }
                           §§goto(addr98);
                        }
                        _loc5_ = §§pop();
                     }
                     §§goto(addr98);
                  }
               }
               addr98:
               return §§pop();
               §§push(_loc5_);
            }
            §§goto(addr75);
         }
         §§goto(addr98);
      }
   }
}
