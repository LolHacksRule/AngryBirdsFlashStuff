package §,!5§
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   
   public class §%A§
   {
       
      
      private var §8X§:Sprite;
      
      private var §6!&§:§1!;§;
      
      private var §5_§:Boolean;
      
      public function §%A§(param1:Sprite, param2:§1!;§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§8X§ = param1;
            }
            addr61:
         }
         loop1:
         do
         {
            this.§6!&§ = param2;
            while(_loc4_)
            {
               this.§5_§ = param3;
               if(!_loc5_)
               {
                  continue loop1;
               }
            }
            §§goto(addr61);
         }
         while(_loc5_ && param3);
         
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§8X§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§8X§);
               if(_loc2_)
               {
                  continue loop0;
               }
            }
            addr48:
            return;
         }
      }
      
      public function §7!_§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§+W§ = null;
         var _loc7_:§?!U§ = null;
         if(_loc10_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§+!2§(this.§<!U§(param1));
         §§push(this.§#g§(_loc2_));
         if(_loc10_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§=!q§(_loc2_));
         if(_loc10_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc11_ && this))
         {
            §§push(-§§pop());
            if(!_loc11_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §?!U§(_loc6_.texture,this.§5_§)).scaleX = _loc6_.scale;
            if(_loc10_ || _loc3_)
            {
               _loc7_.scaleY = _loc6_.scale;
               while(true)
               {
                  this.§8X§.addChild(_loc7_);
                  addr178:
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                  }
                  addr132:
                  if(_loc10_ || param1)
                  {
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(!_loc11_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           addr150:
                           addr172:
                           while(!(_loc11_ && this))
                           {
                              §§push(_loc5_);
                              if(_loc10_)
                              {
                                 §§push(int(§§pop() + _loc6_.width));
                              }
                              _loc5_ = §§pop();
                              if(_loc11_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc11_)
                              {
                                 §§goto(addr132);
                              }
                              else
                              {
                                 §§goto(addr178);
                              }
                           }
                           while(true)
                           {
                              continue loop4;
                              §§goto(addr150);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr172);
         }
         if(_loc10_ || _loc2_)
         {
            this.§8X§.flatten();
         }
      }
      
      private function §<!U§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!_loc5_)
         {
            if(param1 <= 0)
            {
               if(!(_loc5_ && param1))
               {
                  addr142:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  addr69:
                  loop1:
                  for(; _loc5_ && _loc3_; continue loop0)
                  {
                     loop2:
                     while(true)
                     {
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(_loc4_ || _loc2_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          continue loop1;
                                       }
                                       addr127:
                                       §§push(param1);
                                       §§push(10);
                                       while(true)
                                       {
                                          §§push(§§pop() % §§pop());
                                          addr129:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop7:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr131:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc4_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(10);
                                                   }
                                                   break;
                                                }
                                                addr119:
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       addr128:
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc4_)
                                          {
                                             §§goto(addr119);
                                             §§push(int(§§pop()));
                                          }
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr119);
                           }
                           addr29:
                        }
                        §§goto(addr131);
                     }
                  }
                  return _loc2_;
                  if(_loc4_ || this)
                  {
                     continue;
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr29);
         }
         §§goto(addr142);
      }
      
      private function §+!2§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§+W§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§6!&§.getFrame(_loc3_);
            if(!(_loc7_ && _loc2_))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §#g§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§+W§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §=!q§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§+W§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(_loc9_)
                  {
                     §§push(-§§pop());
                     if(_loc9_)
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(!_loc8_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc5_.pivotY);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                       addr191:
                                       loop5:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                _loc2_ = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   addr41:
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.pivotY);
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§push(_loc5_.texture.height);
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc9_)
                                                               {
                                                                  addr72:
                                                                  if(_loc8_ && this)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(!(_loc9_ || _loc2_))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(_loc5_.pivotY);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr141:
                                                                                    §§push(-§§pop());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr137:
                                                                                       §§push(§§pop() + _loc5_.height);
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc8_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc8_ && param1)
                                                                                             {
                                                                                                addr208:
                                                                                                §§push(int(§§pop() + _loc5_.height));
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr211:
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                             addr165:
                                                                                             if(!(_loc8_ && _loc2_))
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             continue loop3;
                                                                                             break loop1;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr141);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr223:
                                                                                 §§push(_loc5_.pivotY);
                                                                                 while(true)
                                                                                 {
                                                                                    addr226:
                                                                                    break loop4;
                                                                                 }
                                                                                 addr225:
                                                                              }
                                                                           }
                                                                           §§goto(addr208);
                                                                           §§push(_loc2_);
                                                                        }
                                                                        §§goto(addr165);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr72);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                }
                                             }
                                             _loc2_ = §§pop();
                                             §§goto(addr228);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr174:
                              continue loop0;
                              addr220:
                           }
                           §§goto(addr41);
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr191);
                  }
                  while(_loc8_ && param1)
                  {
                     §§goto(addr225);
                     §§goto(addr211);
                  }
                  _loc3_ = §§pop();
                  §§goto(addr220);
               }
               §§goto(addr223);
            }
            §§goto(addr188);
         }
         return _loc3_ - _loc2_;
      }
   }
}
