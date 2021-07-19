package § !W§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §@!?§ extends Sprite
   {
      
      public static const §7V§:int = 0;
      
      public static const §>N§:int = 1;
      
      public static const §?A§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7V§ = 0;
            do
            {
               §>N§ = 1;
               do
               {
                  §?A§ = 2;
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private const §29§:uint = 40;
      
      private const §7§:Number = 0.3;
      
      private const §"!K§:Number = 25;
      
      private const §continue§:Number = 10;
      
      private const §2!4§:Number = 9;
      
      private var §+Z§:int;
      
      private var §"O§:int;
      
      private var §6!'§:Array;
      
      private var §[i§:Array;
      
      private var §'!W§:Point;
      
      private var §[!4§:int;
      
      public function §@!?§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§<m§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc10_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§+Z§ = param1 * §[&§.§8n§;
            while(true)
            {
               this.§"O§ = param2 * §[&§.§6!H§;
               while(!(_loc10_ && param1))
               {
                  this.§[!4§ = param5;
                  loop3:
                  for(; _loc11_; while(true)
                  {
                     if(!(_loc10_ && param2))
                     {
                        continue loop0;
                     }
                     continue loop3;
                  },continue loop0)
                  {
                     this.§'!W§ = new Point(param3,param4);
                     while(true)
                     {
                        addr52:
                        addr43:
                        while(true)
                        {
                           this.§6!'§ = [];
                           continue loop3;
                        }
                        if(_loc10_ && param3)
                        {
                           continue;
                        }
                        if(true)
                        {
                           var _loc9_:int = 0;
                           addr195:
                           if(_loc9_ < this.§29§)
                           {
                              §§push(§§findproperty(§<m§));
                              §§push(Math.random() * 40);
                              if(_loc11_)
                              {
                                 §§push(§§pop() + 10);
                              }
                              (_loc6_ = new §§pop().§<m§(§§pop())).x = -2000;
                              if(_loc11_)
                              {
                                 _loc6_.y = -2000;
                              }
                              this.addChild(_loc6_);
                              addr169:
                              this.§6!'§[_loc9_] = _loc6_;
                              _loc9_++;
                              addr194:
                              addr180:
                              if(!(_loc10_ && this))
                              {
                                 if(_loc11_ || param1)
                                 {
                                    if(!(_loc10_ && param2))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr169);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr180);
                              }
                              addr175:
                              §§goto(addr175);
                           }
                           return;
                        }
                        §§goto(addr52);
                     }
                  }
               }
            }
            if(_loc10_ && this)
            {
               continue;
            }
            this.§[i§ = [];
            if(!(_loc10_ && this))
            {
               §§goto(addr43);
            }
            §§goto(addr56);
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<m§ = null;
         loop0:
         while(true)
         {
            §§push(this.§6!'§);
            if(!_loc3_)
            {
               break;
            }
            if(§§pop().length <= 0)
            {
               if(_loc3_ || _loc1_)
               {
                  while(true)
                  {
                     §§push(this.§[i§);
                     break loop0;
                  }
                  addr80:
               }
               §§goto(addr102);
            }
            §§push(this.§6!'§);
            if(_loc2_)
            {
               break;
            }
            _loc1_ = §§pop().shift();
            if(_loc3_ || _loc1_)
            {
               _loc1_.clean();
            }
         }
         while(§§pop().length > 0)
         {
            §§push(this.§[i§);
            if(_loc2_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.clean();
            }
            §§goto(addr80);
         }
         if(_loc3_ || _loc2_)
         {
            addr102:
            this.§6!'§ = [];
            if(_loc3_)
            {
               addr107:
               this.§[i§ = [];
            }
            return;
         }
         §§goto(addr107);
      }
      
      public function update(param1:Number) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§<m§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§3!$§ = null;
         var _loc13_:Object = null;
         if(_loc15_)
         {
            §§push(param1);
            if(_loc15_ || param1)
            {
               §§push(§§pop() / 20);
               if(!(_loc14_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§6!'§);
            if(!_loc14_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§[i§);
                  break;
               }
               §§push(this.§6!'§);
               if(_loc14_ && param1)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(_loc15_)
               {
                  §§push(Math.random() * (this.§"!K§ - this.§continue§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§continue§);
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
                              while(true)
                              {
                                 §§push(this.§[!4§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§7V§);
                                    loop7:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§[!4§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§>N§);
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.§[!4§);
                                             if(!_loc15_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc15_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§?A§);
                                             if(_loc14_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc15_ || this))
                                             {
                                                continue loop7;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                addr347:
                                                §§push(Math.PI / 2);
                                                if(_loc15_ || _loc3_)
                                                {
                                                   §§push(§§pop() * Math.random());
                                                }
                                                if(_loc15_)
                                                {
                                                   addr350:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc15_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   _loc7_ = §§pop();
                                                   loop21:
                                                   while(_loc15_ || _loc3_)
                                                   {
                                                      addr302:
                                                      §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                      if(_loc14_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      _loc8_ = §§pop();
                                                      while(_loc15_)
                                                      {
                                                         addr279:
                                                         _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                         addr280:
                                                         if(!_loc15_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            if(!_loc14_)
                                                            {
                                                               addr248:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  §§push(_loc8_);
                                                                  if(_loc15_ || this)
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().§`!=§ = §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc15_ || _loc2_))
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     §§push(_loc9_);
                                                                     if(_loc15_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().§8D§ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        _loc5_.x = this.§'!W§.x;
                                                                        loop14:
                                                                        while(_loc15_ || _loc3_)
                                                                        {
                                                                           _loc5_.y = this.§'!W§.y;
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              this.§[i§.push(_loc5_);
                                                                              while(true)
                                                                              {
                                                                                 addr156:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       if(_loc15_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(Math.random() * 1.5);
                                                                                                if(!(_loc15_ || _loc2_))
                                                                                                {
                                                                                                   addr419:
                                                                                                   _loc7_ = Number(§§pop() * §§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr418:
                                                                                                }
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(_loc15_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(!(_loc14_ && this))
                                                                                                      {
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            _loc7_ = Number(-§§pop() * Math.random());
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr457:
                                                                                                         }
                                                                                                         _loc10_ = §§pop();
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      _loc9_ = §§pop();
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         break loop11;
                                                                                                      }
                                                                                                      addr432:
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            break loop7;
                                                                                                            addr434:
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                         addr431:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                   }
                                                                                                   addr445:
                                                                                                   _loc8_ = §§pop();
                                                                                                   break loop21;
                                                                                                   addr185:
                                                                                                }
                                                                                                continue loop2;
                                                                                                break loop14;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr457);
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 addr136:
                                                                                 continue loop12;
                                                                                 if(_loc14_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(_loc15_ || _loc3_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr280);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr248);
                                                               }
                                                               addr248:
                                                               addr372:
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr369);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr445);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                §§goto(addr431);
                                             }
                                             §§goto(addr248);
                                          }
                                          §§push(Math.PI * (Math.random() - 0.5));
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             §§goto(addr418);
                                             §§push(0.5);
                                          }
                                          §§goto(addr418);
                                       }
                                    }
                                    §§goto(addr457);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr372);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc15_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(_loc15_ || _loc3_)
         {
            loop28:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!(_loc15_ || _loc2_))
               {
                  break;
               }
               while(true)
               {
                  _loc5_ = this.§[i§[_loc4_];
                  §§push(_loc5_);
                  §§push(_loc5_.§8D§);
                  if(!_loc14_)
                  {
                     §§push(this.§7§);
                     if(!_loc14_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§8D§ = §§pop();
                  if(!(_loc15_ || _loc2_))
                  {
                     continue loop28;
                  }
                  if(_loc5_.§8D§ > this.§2!4§)
                  {
                     while(true)
                     {
                        _loc5_.§8D§ = this.§2!4§;
                        addr736:
                        while(true)
                        {
                        }
                     }
                     addr732:
                  }
                  loop32:
                  while(true)
                  {
                     _loc5_.x += _loc5_.§`!=§ * param1;
                     if(!(_loc14_ && _loc3_))
                     {
                        _loc5_.y += _loc5_.§8D§ * param1;
                        loop33:
                        while(true)
                        {
                           _loc5_.rotation += 5 * param1;
                           while(_loc15_)
                           {
                              if(_loc5_.x < -_loc5_.width / 2)
                              {
                                 if(_loc14_)
                                 {
                                    break loop33;
                                 }
                                 §§push(true);
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr683:
                                    while(_loc15_)
                                    {
                                    }
                                    §§goto(addr732);
                                 }
                                 addr682:
                              }
                              else if(_loc5_.x > this.§+Z§ + _loc5_.width / 2)
                              {
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(true);
                                    if(_loc15_ || this)
                                    {
                                       _loc3_ = §§pop();
                                       loop40:
                                       while(true)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             loop41:
                                             while(true)
                                             {
                                                addr559:
                                                while(true)
                                                {
                                                   §§push(this.§[i§);
                                                   if(_loc15_ || this)
                                                   {
                                                      §§push(§§pop().length > 0);
                                                      if(_loc15_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc15_ || param1)
                                                            {
                                                            }
                                                            addr746:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc14_ && _loc2_))
                                                               {
                                                                  addr754:
                                                                  §§push(this.§[i§);
                                                                  break;
                                                               }
                                                               break loop33;
                                                            }
                                                            §§push(_loc4_);
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            break loop33;
                                                         }
                                                         §§goto(addr746);
                                                      }
                                                      if(_loc15_)
                                                      {
                                                         §§pop();
                                                         if(_loc14_ && _loc2_)
                                                         {
                                                            break loop33;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            continue loop33;
                                                         }
                                                         if(!_loc15_)
                                                         {
                                                            continue loop40;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop41;
                                                         }
                                                         §§push(_loc3_);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            §§goto(addr746);
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         §§goto(addr746);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop33;
                                                            }
                                                            §§goto(addr682);
                                                         }
                                                         addr622:
                                                      }
                                                   }
                                                   break;
                                                }
                                                if((_loc13_ = §§pop().splice(_loc4_,1)) is §<m§)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      _loc13_.clean();
                                                      if(!(_loc14_ && this))
                                                      {
                                                         addr776:
                                                         _loc5_.x = -2000;
                                                         if(_loc15_)
                                                         {
                                                            addr781:
                                                            _loc5_.y = -2000;
                                                         }
                                                         §§goto(addr746);
                                                      }
                                                   }
                                                   §§goto(addr781);
                                                }
                                                §§goto(addr776);
                                             }
                                          }
                                          §§goto(addr683);
                                       }
                                    }
                                    §§goto(addr746);
                                 }
                                 §§goto(addr754);
                              }
                              else if(_loc5_.y > this.§"O§ + _loc5_.height / 2)
                              {
                                 if(!(_loc15_ || _loc2_))
                                 {
                                    break loop33;
                                 }
                                 if(!_loc15_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr622);
                                 §§push(true);
                              }
                              §§goto(addr559);
                           }
                           continue loop32;
                        }
                        continue loop28;
                     }
                     §§goto(addr754);
                  }
               }
            }
            return;
         }
         §§goto(addr532);
      }
   }
}
