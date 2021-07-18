package § !B§
{
   import §'K§.§3C§;
   import §8!B§.§#! §;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §=!=§ extends Sprite
   {
      
      public static const §^!$§:int = 0;
      
      public static const §;A§:int = 1;
      
      public static const §,F§:int = 2;
      
      public static const §5!P§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!$§ = 0;
         }
         while(true)
         {
            §;A§ = 1;
            while(_loc2_ || _loc1_)
            {
               §,F§ = 2;
               do
               {
                  §5!P§ = 3;
               }
               while(!(_loc2_ || _loc2_));
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private const §3<§:uint = 40;
      
      private const §"!E§:Number = 0.3;
      
      private const §'w§:Number = 25;
      
      private const §<i§:Number = 10;
      
      private const §2Z§:Number = 9;
      
      private var §3$§:int;
      
      private var §&"§:int;
      
      private var §"!4§:Array;
      
      private var §&!A§:Array;
      
      private var §69§:Point;
      
      private var §3t§:int;
      
      public function §=!=§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:§5!L§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(!_loc14_)
         {
            super();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§3$§ = param1;
               while(_loc13_)
               {
                  this.§&"§ = param2;
                  if(_loc13_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc7_:Number = Math.min(§#! §.§+!E§,§#! §.§3M§);
            var _loc8_:Number = Math.max(§#! §.§+!E§,§#! §.§3M§);
            §§push(param3);
            if(!_loc14_)
            {
               §§push(§#! §.§3M§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
               }
               addr137:
            }
            loop4:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  param3 = §§pop();
                  §§push(param4);
                  if(!(_loc14_ && param1))
                  {
                     §§push(§#! §.§+!E§);
                     if(!_loc13_)
                     {
                        break;
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc13_)
                     {
                        if(!(_loc13_ || this))
                        {
                           continue loop4;
                        }
                        §§push(Number(§§pop()));
                     }
                  }
                  if(_loc14_)
                  {
                     continue;
                  }
                  param4 = §§pop();
                  while(true)
                  {
                     this.§3t§ = param5;
                     while(true)
                     {
                        this.§69§ = new Point(param3,param4);
                        if(!(_loc13_ || param2))
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§"!4§ = [];
                           if(_loc14_)
                           {
                              break;
                           }
                           this.§&!A§ = [];
                           if(false)
                           {
                              continue;
                           }
                           var _loc12_:int = 0;
                           while(_loc12_ < param6)
                           {
                              §§push(§§findproperty(§5!L§));
                              §§push(Math.random() * 40);
                              if(_loc13_)
                              {
                                 §§push(§§pop() + 10);
                              }
                              (_loc9_ = new §§pop().§5!L§(§§pop())).x = -2000;
                              if(!(_loc14_ && param1))
                              {
                                 _loc9_.y = -2000;
                                 loop10:
                                 while(true)
                                 {
                                    this.addChild(_loc9_);
                                    addr209:
                                    while(true)
                                    {
                                       addr181:
                                       while(true)
                                       {
                                          this.§"!4§[_loc12_] = _loc9_;
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr179);
                           }
                           if(_loc13_)
                           {
                              this.scaleX = _loc8_;
                              if(!_loc14_)
                              {
                                 addr224:
                                 this.scaleY = _loc8_;
                              }
                              return;
                           }
                           §§goto(addr224);
                        }
                     }
                  }
               }
               §§goto(addr137);
            }
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5!L§ = null;
         loop0:
         while(true)
         {
            §§push(this.§"!4§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop().length <= 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(this.§&!A§);
                        break loop0;
                     }
                     addr94:
                  }
                  §§goto(addr111);
               }
               §§push(this.§"!4§);
               if(!_loc3_)
               {
                  _loc1_ = §§pop().shift();
                  if(!_loc3_)
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               while(true)
               {
                  _loc1_ = §§pop().shift();
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.clean();
                  }
                  addr62:
                  §§push(this.§&!A§);
                  if(!(_loc2_ || _loc2_))
                  {
                     break loop0;
                  }
               }
               §§goto(addr94);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§goto(addr62);
         }
         if(!(_loc3_ && _loc3_))
         {
            this.§"!4§ = [];
            if(!_loc2_)
            {
            }
            §§goto(addr111);
         }
         addr111:
         this.§&!A§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§5!L§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc16_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc16_ && _loc2_))
            {
               §§push(§§pop() / 20);
               if(!(_loc16_ && param1))
               {
                  addr64:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr66);
            }
            §§goto(addr64);
         }
         addr66:
         loop0:
         while(true)
         {
            §§push(this.§"!4§);
            if(_loc15_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§&!A§);
                  break;
               }
               §§push(this.§"!4§);
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!_loc16_)
               {
                  §§push(Math.random() * (this.§'w§ - this.§<i§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§<i§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              §§push(this.§3t§);
                              while(true)
                              {
                                 §§push(§^!$§);
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr561:
                                       §§push(-(Math.PI / 2));
                                       loop17:
                                       while(true)
                                       {
                                          §§push(§§pop() * Math.random());
                                          addr565:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr566:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                addr567:
                                                while(true)
                                                {
                                                   §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                   addr534:
                                                   while(_loc15_)
                                                   {
                                                      if(_loc16_ && _loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc16_ && this)
                                                      {
                                                         continue loop3;
                                                      }
                                                      _loc8_ = §§pop();
                                                      _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                                   }
                                                   continue loop17;
                                                }
                                             }
                                          }
                                       }
                                       addr562:
                                    }
                                    else
                                    {
                                       §§push(this.§3t§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§;A§);
                                          addr492:
                                          addr493:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.§3t§);
                                             continue loop7;
                                          }
                                          loop28:
                                          while(true)
                                          {
                                             §§push(Math.PI * (Math.random() - 0.5));
                                             while(true)
                                             {
                                                §§push(0.5);
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop21:
                                                   while(true)
                                                   {
                                                      _loc7_ = Number(§§pop());
                                                      loop38:
                                                      while(true)
                                                      {
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                            §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                            loop27:
                                                            while(true)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(!(_loc15_ || param1))
                                                               {
                                                                  continue loop28;
                                                               }
                                                               addr205:
                                                               §§push(_loc5_);
                                                               §§push(_loc8_);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().§-z§ = §§pop();
                                                               §§push(_loc5_);
                                                               §§push(_loc9_);
                                                               if(_loc15_ || param1)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().§5!F§ = §§pop();
                                                               loop42:
                                                               while(true)
                                                               {
                                                                  _loc5_.x = this.§69§.x;
                                                                  _loc5_.y = this.§69§.y;
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           this.§&!A§.push(_loc5_);
                                                                           loop41:
                                                                           while(true)
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 continue loop42;
                                                                              }
                                                                              if(!(_loc16_ && _loc2_))
                                                                              {
                                                                                 §§push(0.5);
                                                                                 if(_loc15_ || _loc3_)
                                                                                 {
                                                                                    §§push(Math.random() * 1.5);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                       loop14:
                                                                                       while(_loc15_ || param1)
                                                                                       {
                                                                                          _loc10_ = §§pop();
                                                                                          loop43:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0.2);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   if(_loc15_ || _loc3_)
                                                                                                   {
                                                                                                      addr128:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      addr130:
                                                                                                      _loc11_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr84:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_.§#!?§ = §3C§.§>o§.§<t§(_loc5_,{
                                                                                                               "scaleX":_loc11_,
                                                                                                               "scaleY":_loc11_
                                                                                                            },{
                                                                                                               "scaleX":_loc10_,
                                                                                                               "scaleY":_loc10_
                                                                                                            },5);
                                                                                                            if(_loc15_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop41;
                                                                                                            }
                                                                                                            continue loop43;
                                                                                                         }
                                                                                                         continue loop43;
                                                                                                         §§goto(addr130);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc15_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc15_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  if(_loc15_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop() / §§pop()));
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     addr291:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ || param1)
                                                                                                                        {
                                                                                                                           _loc12_ = §§pop();
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr290:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc15_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     _loc7_ = Number(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                                                                        addr424:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr449:
                                                                                                               }
                                                                                                               §§goto(addr205);
                                                                                                               addr403:
                                                                                                            }
                                                                                                            §§goto(addr424);
                                                                                                         }
                                                                                                         addr380:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr381:
                                                                                                            while(!_loc16_)
                                                                                                            {
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc9_ = Number(Math.cos(_loc7_ + Math.PI));
                                                                                                                     addr312:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§<i§);
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§goto(addr290);
                                                                                                                              §§push(2);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr534);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr458);
                                                                                                                        }
                                                                                                                        §§goto(addr403);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr329:
                                                                                                               }
                                                                                                               §§goto(addr562);
                                                                                                            }
                                                                                                            §§goto(addr522);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_ || param1)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      §§push(_loc12_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc15_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop() + §§pop()));
                                                                                                            if(_loc15_ || param1)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               §§goto(addr205);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr565);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc16_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§goto(addr380);
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            addr370:
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr291);
                                                                                                }
                                                                                                addr221:
                                                                                             }
                                                                                             §§goto(addr128);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             _loc13_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   continue loop38;
                                                                                                }
                                                                                                §§goto(addr221);
                                                                                                §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                             }
                                                                                             addr281:
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr231);
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr567);
                                                      }
                                                   }
                                                }
                                                continue loop28;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr131);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc15_ || this)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!(_loc16_ && _loc2_))
         {
            loop44:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!(_loc15_ || _loc3_))
               {
                  break;
               }
               _loc5_ = this.§&!A§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§5!F§);
               if(!_loc16_)
               {
                  §§push(this.§"!E§);
                  if(_loc15_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§5!F§ = §§pop();
               if(!_loc15_)
               {
                  continue;
               }
               if(_loc5_.§5!F§ > this.§2Z§)
               {
                  if(!_loc15_)
                  {
                     continue;
                  }
                  _loc5_.§5!F§ = this.§2Z§;
                  while(true)
                  {
                     addr724:
                     if(!(_loc15_ || this))
                     {
                        continue;
                     }
                     addr732:
                     _loc3_ = true;
                     while(true)
                     {
                        §§push(this.§&!A§);
                        if(_loc16_ && _loc2_)
                        {
                           addr835:
                           break;
                        }
                        §§push(§§pop().length > 0);
                        if(!_loc16_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(false)
                              {
                                 continue;
                              }
                              §§push(_loc3_);
                              if(_loc15_ || _loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        if(§§pop())
                        {
                           §§push(this.§&!A§);
                           break;
                        }
                        §§push(_loc4_);
                        if(!(_loc16_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc4_ = §§pop();
                        continue loop44;
                     }
                     if((_loc14_ = §§pop().splice(_loc4_,1)) is §5!L§)
                     {
                        if(_loc15_)
                        {
                           _loc14_.clean();
                           if(_loc15_)
                           {
                              addr822:
                              _loc5_.x = -2000;
                              if(_loc15_ || _loc3_)
                              {
                                 addr832:
                                 _loc5_.y = -2000;
                              }
                              §§goto(addr835);
                           }
                        }
                        §§goto(addr832);
                     }
                     §§goto(addr822);
                     addr733:
                     addr645:
                  }
                  addr784:
               }
               while(true)
               {
                  _loc5_.x += _loc5_.§-z§ * param1;
                  do
                  {
                     _loc5_.y += _loc5_.§5!F§ * param1;
                     _loc5_.rotation += 5 * param1;
                  }
                  while(_loc16_ && _loc3_);
                  
                  if(_loc5_.x < -_loc5_.width / 2)
                  {
                     if(!(_loc16_ && _loc2_))
                     {
                        §§goto(addr724);
                     }
                     §§goto(addr733);
                  }
                  else
                  {
                     if(_loc5_.x <= this.§3$§ + _loc5_.width / 2)
                     {
                        if(_loc5_.y > this.§&"§ + _loc5_.height / 2)
                        {
                           if(!_loc15_)
                           {
                              continue loop44;
                           }
                           §§push(true);
                           if(_loc15_ || this)
                           {
                              _loc3_ = §§pop();
                              if(_loc15_)
                              {
                                 break;
                              }
                              addr707:
                              §§goto(addr665);
                           }
                           else
                           {
                              §§goto(addr732);
                           }
                        }
                        break;
                     }
                     _loc3_ = true;
                     §§goto(addr707);
                  }
                  §§goto(addr784);
               }
               §§goto(addr645);
            }
         }
      }
   }
}
