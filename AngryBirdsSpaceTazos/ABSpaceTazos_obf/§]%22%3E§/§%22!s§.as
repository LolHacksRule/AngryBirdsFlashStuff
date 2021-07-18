package §]">§
{
   import §"!&§.§+W§;
   import §"!&§.§0"?§;
   import §"!&§.§="D§;
   import §'!&§.b2World;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import flash.geom.Point;
   
   public class §"!s§ extends §%!E§
   {
      
      public static const §7"3§:String = "timer";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7"3§ = "timer";
         }
      }
      
      protected var §,U§:Boolean = false;
      
      protected var §2"!§:§0"?§;
      
      protected var §;6§:Number = 0;
      
      protected var §5h§:Boolean = false;
      
      protected var §8L§:Point;
      
      protected var §"6§:int;
      
      private var §+N§:Boolean;
      
      private var §0!5§:Boolean;
      
      public function §"!s§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || this)
         {
            this.§2"!§ = param4 as §0"?§;
         }
         while(true)
         {
            §§push(this);
            if(_loc10_)
            {
               if(Math.random() > 0.5)
               {
                  addr66:
                  §§push(true);
                  if(_loc11_ && param3)
                  {
                  }
               }
               else
               {
                  §§push(false);
               }
               §§pop().§+N§ = §§pop();
               while(_loc10_)
               {
                  super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                  if(!(_loc11_ && param3))
                  {
                     return;
                  }
               }
               continue;
            }
            §§goto(addr66);
         }
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§2"!§.getSound(§="D§.§4-§));
         if(_loc2_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            this.§2"!§.playSoundLua(_loc1_);
         }
      }
      
      override public function scream() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.scream();
         }
         §§push(this.§2"!§.getSound(§="D§.§^!i§));
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.§2"!§.playSoundLua(_loc1_);
         }
      }
      
      override protected function addTrail(param1:§;U§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && _loc2_))
         {
            if(isLeavingTrail)
            {
               while(param1)
               {
                  if(_loc4_ || this)
                  {
                     if(!(_loc4_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(this.§0!5§);
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              if(!(_loc4_ || _loc2_))
                              {
                                 addr157:
                                 §§push(false);
                                 break;
                              }
                              §§push(Number(§^!z§().GetPosition().x));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr154:
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Number(§^!z§().GetPosition().y));
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    _loc3_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       param1.§%!y§(this.§2"!§.normalTrailSprite,§0"@§.§8!%§,§2!V§.§'"$§,_loc2_,_loc3_,-1,"",§2!V§.§3j§);
                                       addr98:
                                       addr42:
                                       while(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§0!5§);
                                          if(_loc4_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          §§pop().§0!5§ = §§pop();
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   continue loop1;
                                                }
                                                continue loop8;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr98);
                                       }
                                    }
                                 }
                              }
                           }
                           addr158:
                           return §§pop();
                           addr131:
                        }
                        §§goto(addr42);
                     }
                  }
                  §§goto(addr131);
               }
               while(true)
               {
                  §§push(true);
                  if(_loc4_ || _loc3_)
                  {
                     if(!_loc5_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr130);
                  }
                  §§goto(addr158);
               }
            }
            §§goto(addr157);
         }
         §§goto(addr154);
      }
      
      override public function enteredSensor(param1:§3=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super.enteredSensor(param1);
            if(!_loc4_)
            {
               if(param1 is §5a§)
               {
                  if(_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§"6§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§"6§ = _loc3_;
                     }
                     if(_loc5_ || _loc2_)
                     {
                        if(this.§"6§ == 1)
                        {
                           addr123:
                           while(true)
                           {
                              this.§5h§ = true;
                              loop4:
                              while(true)
                              {
                                 this.§2"!§.playSoundLua(§="D§.§06§);
                                 addr101:
                                 addr118:
                                 while(_loc4_ && this)
                                 {
                                    continue loop4;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr123:
                        }
                        while(true)
                        {
                           this.§8L§ = new Point(§^!z§().GetPosition().x,§^!z§().GetPosition().y);
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr101);
                           §§goto(addr118);
                        }
                     }
                  }
                  §§goto(addr118);
               }
               return;
            }
            §§goto(addr118);
         }
         §§goto(addr123);
      }
      
      override public function leftSensor(param1:§3=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super.leftSensor(param1);
            if(_loc5_ || this)
            {
               §§push(param1 is §5a§);
               if(_loc5_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr47:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§"6§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc2_.§"6§ = _loc3_;
                        }
                        if(_loc5_ || param1)
                        {
                           §§push(this.§"6§ == 0);
                           loop0:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr143:
                                    while(true)
                                    {
                                       §§push(this.§,U§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       addr120:
                                       this.§2"!§.playSoundLua(§="D§.§?+§);
                                    }
                                    else
                                    {
                                       §§goto(addr143);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr81);
                           }
                           addr140:
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr143);
                  }
                  addr81:
                  return;
               }
               §§goto(addr140);
            }
            §§goto(addr143);
         }
         §§goto(addr47);
      }
      
      protected function get §&u§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = null;
         var _loc4_:Boolean;
         §§push(_loc4_ = super.activateSpecialPower(param1,param2,param3));
         if(_loc8_ || this)
         {
            if(§§pop())
            {
               if(_loc8_ || param2)
               {
                  §§push(0);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && this))
                     {
                        _loc5_ = §§pop();
                        if(!(_loc7_ && param2))
                        {
                           §§push(this.§&u§);
                           loop0:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§+!"§(param2,param3));
                                    if(_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr166:
                                    }
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr168:
                                       while(true)
                                       {
                                       }
                                    }
                                    loop6:
                                    for(; !(_loc7_ && param2); §§pop().playSoundLua(§§pop()),if(!(_loc8_ || this))
                                    {
                                       continue;
                                    },if(_loc8_ || param2)
                                    {
                                       continue loop0;
                                    },while(!(_loc7_ && this))
                                    {
                                       §§goto(addr114);
                                       §§push(this.§2"!§);
                                    },§§goto(addr168),addr139:)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§2"!§);
                                          if(_loc8_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§="D§.§@"-§);
                                                continue loop10;
                                             }
                                             addr114:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop().getSound(§§pop()));
                                             if(_loc8_ || param1)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc6_ = §§pop();
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.native(param1,_loc5_);
                                 §§goto(addr139);
                              }
                              §§goto(addr66);
                           }
                        }
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr166);
               }
               §§goto(addr133);
            }
            addr66:
            §§goto(addr84);
         }
         addr84:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_ || this)
            {
               break;
            }
            continue loop0;
         }
         return §§pop();
      }
      
      protected function native(param1:§;U§, param2:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         if(!(_loc8_ && param1))
         {
            §§push(this.§2"!§.§;!t§);
            loop0:
            while(§§pop() > 0)
            {
               loop1:
               while(true)
               {
                  §§push(Number(§^!z§().GetPosition().x));
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(Number(§^!z§().GetPosition().y));
                        if(_loc8_)
                        {
                           break;
                        }
                        _loc4_ = §§pop();
                        while(!_loc8_)
                        {
                           continue loop0;
                           _loc5_ = §§pop();
                           if(_loc8_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc8_)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              if(_loc5_ >= this.§2"!§.§;!t§)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    break loop0;
                                 }
                                 do
                                 {
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                                 while(!(_loc7_ || param2));
                                 
                                 continue;
                                 addr52:
                              }
                              else
                              {
                                 §§push(this.§2"!§.§;r§(_loc5_));
                                 if(_loc7_ || param2)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc6_ = §§pop();
                              }
                              while(true)
                              {
                                 param1.addObject(_loc6_,_loc3_,_loc4_,param2,§-%§.§;!J§,false,true,false);
                                 while(true)
                                 {
                                    _loc5_++;
                                    §§goto(addr52);
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
            addr147:
         }
         while(true)
         {
            §§push(0);
            if(_loc7_)
            {
               §§goto(addr111);
            }
            else
            {
               §§goto(addr147);
            }
         }
         §§goto(addr121);
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= this.§2"!§.§5$§)
            {
               if(!(_loc7_ && _loc2_))
               {
                  if(!(_loc7_ && this))
                  {
                     break;
                  }
                  param1.addObject(_loc5_,_loc2_,_loc3_,0,§-%§.§;!J§,false,true,false,1,true);
                  addr89:
                  while(true)
                  {
                     addr67:
                     while(true)
                     {
                        _loc4_++;
                     }
                  }
                  addr112:
               }
               while(!_loc6_)
               {
                  §§goto(addr112);
               }
               continue;
            }
            §§push(this.§2"!§.§5<§(_loc4_));
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc5_ = §§pop());
            }
            if(§§pop())
            {
               §§goto(addr89);
            }
            §§goto(addr67);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               if(§§pop() >= 5)
               {
                  if(_loc7_)
                  {
                     this.addDamageParticles(param2,param1);
                     addr58:
                     §§push(_loc5_);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr58);
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         if(_loc9_)
         {
            if(this.§2"!§.§8!y§ > 0)
            {
               if(_loc9_ || param1)
               {
                  _loc5_ = 0;
                  addr166:
                  while(true)
                  {
                     §§push(_loc5_);
                  }
                  addr233:
                  addr166:
               }
               §§goto(addr233);
            }
            else
            {
               §§push(0);
               loop0:
               while(true)
               {
                  _loc5_ = §§pop();
                  loop1:
                  while(_loc9_)
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc9_)
                        {
                           if(!(_loc8_ && this))
                           {
                              §§push(this.§2"!§);
                              if(_loc9_ || _loc3_)
                              {
                                 if(§§pop() >= §§pop().§5$§)
                                 {
                                    if(_loc9_)
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          if(_loc8_ && _loc3_)
                                          {
                                             addr140:
                                             param1.addObject(_loc7_,_loc3_,_loc4_,0,§-%§.§;!J§,false,true,false);
                                             addr151:
                                             if(_loc8_ && param2)
                                             {
                                                continue loop1;
                                             }
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                addr82:
                                                _loc5_++;
                                                addr84:
                                                if(!(_loc8_ && param2))
                                                {
                                                   continue;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      addr183:
                                                      §§goto(addr166);
                                                   }
                                                   addr208:
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             addr172:
                                          }
                                          return;
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr84);
                                 }
                                 else
                                 {
                                    §§push(this.§2"!§);
                                    if(!_loc8_)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(§§pop().§5<§(§§pop()));
                                          if(_loc9_ || param1)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop());
                                                if(!_loc8_)
                                                {
                                                   _loc7_ = §§pop();
                                                   addr137:
                                                   if(!_loc8_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr82);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         break loop1;
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   addr194:
                                                }
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   §§goto(addr194);
                                                }
                                                addr193:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr193);
                                             }
                                             addr192:
                                          }
                                          §§goto(addr137);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr192);
                                       }
                                       addr190:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr190);
                                    }
                                    addr189:
                                 }
                                 §§goto(addr179);
                              }
                              while(true)
                              {
                                 if(§§pop() >= §§pop().§5$§)
                                 {
                                    §§goto(addr172);
                                 }
                                 else
                                 {
                                    §§goto(addr189);
                                    §§push(this.§2"!§);
                                 }
                              }
                              addr170:
                           }
                           break;
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        §§goto(addr170);
                        §§goto(addr166);
                     }
                     §§goto(addr172);
                  }
                  while(true)
                  {
                     param1.addObject(_loc6_,_loc3_,_loc4_,0,§-%§.§;!J§,false,true,false,1,true);
                     §§goto(addr208);
                  }
               }
            }
            §§goto(addr168);
         }
         §§goto(addr166);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§,U§;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§+N§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || this)
               {
                  if(§§pop())
                  {
                     addr254:
                     while(true)
                     {
                        §§pop();
                        addr255:
                        while(true)
                        {
                           §§push(Boolean(param2));
                        }
                     }
                     addr254:
                  }
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              param2.addObject(this.§2"!§.enterGravitationParticles,this.§^!z§().GetPosition().x,this.§^!z§().GetPosition().y,0,§-%§.§;!J§,false,true,false);
                              while(true)
                              {
                                 this.§+N§ = false;
                                 addr192:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           addr212:
                        }
                        while(true)
                        {
                           if(isReadyToBeRemoved(param1))
                           {
                              while(true)
                              {
                                 this.§,U§ = true;
                                 addr187:
                                 while(true)
                                 {
                                 }
                                 addr139:
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || this)
                                 {
                                    this.§1h§(param2);
                                    addr114:
                                    while(true)
                                    {
                                       addr67:
                                       while(true)
                                       {
                                          §§push(this.§5h§);
                                          if(!(_loc4_ || param1))
                                          {
                                             break;
                                          }
                                          if(_loc4_ || param1)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr254);
                                       }
                                       continue loop2;
                                    }
                                    addr114:
                                 }
                                 else
                                 {
                                    §§goto(addr212);
                                 }
                              }
                           }
                           while(true)
                           {
                              super.update(param1,param2);
                              loop10:
                              while(_loc4_ || _loc3_)
                              {
                                 §§push(this);
                                 §§push(this.§;6§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§;6§ = §§pop();
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(§?!d§)
                                       {
                                          while(true)
                                          {
                                             if(this.§;6§ > 1000 / 60)
                                             {
                                                while(true)
                                                {
                                                   this.§;6§ = 0;
                                                   addr137:
                                                   while(!_loc3_)
                                                   {
                                                      §§goto(addr139);
                                                   }
                                                   continue loop10;
                                                }
                                                addr134:
                                             }
                                          }
                                          addr128:
                                       }
                                       §§goto(addr67);
                                    }
                                    break;
                                    loop17:
                                    while(true)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          if(param2)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   param2.addObject(this.§2"!§.enterGravitationParticles,this.§8L§.x,this.§8L§.y,0,§-%§.§;!J§,false,true,false);
                                                   addr48:
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr50:
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                   else
                                                   {
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         this.§5h§ = false;
                                                         continue loop17;
                                                         §§goto(addr50);
                                                      }
                                                      §§goto(addr134);
                                                      addr92:
                                                   }
                                                   §§goto(addr137);
                                                }
                                                else
                                                {
                                                   §§goto(addr128);
                                                }
                                             }
                                             §§goto(addr48);
                                          }
                                          break;
                                       }
                                       continue loop11;
                                    }
                                    addr20:
                                    return;
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr187);
                           }
                        }
                     }
                  }
               }
               §§goto(addr254);
            }
         }
         §§goto(addr114);
      }
      
      private function §1h§(param1:§;U§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr250:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§2"!§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop11:
                              for(; !(_loc7_ && this); if(_loc7_ && this)
                              {
                                 continue;
                              },§§goto(addr152),§§push(§§pop().normalTailParticles))
                              {
                                 §§push(§§pop().atmosphereTailParticles);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc7_ && param1))
                                    {
                                       if(!_loc7_)
                                       {
                                          addr183:
                                          if(_loc6_ || this)
                                          {
                                             if(_loc7_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(_loc6_)
                                                   {
                                                      §§push(this.§2"!§);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                   }
                                                   addr246:
                                                   addr199:
                                                }
                                                else
                                                {
                                                   §§push(this.§2"!§);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop11;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop().atmosphereTailParticles);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   loop24:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr208:
                                                      while(true)
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               addr152:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc7_ && this)
                                                               {
                                                                  continue loop24;
                                                               }
                                                               _loc2_ = §§pop();
                                                               while(true)
                                                               {
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§"6§ > 0);
                                                      continue loop0;
                                                   }
                                                   addr215:
                                                }
                                                §§goto(addr183);
                                             }
                                             addr214:
                                          }
                                          addr33:
                                          return;
                                       }
                                       continue loop0;
                                    }
                                    addr245:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop12;
                                    }
                                    §§goto(addr246);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  addr213:
                  while(true)
                  {
                     §§goto(addr214);
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function §+!"§(param1:Number, param2:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Number = §^!z§().GetPosition().x;
         var _loc4_:Number = §^!z§().GetPosition().y;
         var _loc5_:*;
         §§push(_loc5_ = Number(Math.atan2(param2 - _loc4_,param1 - _loc3_)));
         if(!_loc6_)
         {
            §§push(0);
            if(!(_loc6_ && this))
            {
               if(§§pop() < §§pop())
               {
                  if(_loc7_)
                  {
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        addr70:
                        §§push(§§pop() + Math.PI * 2);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_ && _loc3_)
                           {
                           }
                           §§goto(addr93);
                        }
                     }
                     _loc5_ = §§pop();
                  }
               }
               addr93:
               return §§pop();
               §§push(_loc5_);
            }
            §§goto(addr70);
         }
         §§goto(addr93);
      }
   }
}
