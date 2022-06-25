package §2!H§
{
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   
   public class §7&§
   {
       
      
      private var §'6§:Sprite;
      
      private var §%!9§:Animation;
      
      private var §<!K§:Boolean;
      
      public function §7&§(param1:Sprite, param2:Animation, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         do
         {
            this.§'6§ = param1;
            while(true)
            {
               this.§%!9§ = param2;
               while(_loc5_ || param1)
               {
                  this.§<!K§ = param3;
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc5_);
         
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§'6§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§'6§);
               if(!_loc1_)
               {
                  continue loop0;
               }
            }
            addr49:
            return;
         }
      }
      
      public function §1!a§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§;K§ = null;
         var _loc7_:§-m§ = null;
         if(_loc11_ || _loc2_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§?F§(this.§33§(param1));
         §§push(this.§%!?§(_loc2_));
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§==§(_loc2_));
         if(!(_loc10_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc11_)
         {
            §§push(-§§pop());
            if(_loc11_ || _loc2_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §-m§(_loc6_.texture,this.§<!K§);
            if(!_loc10_)
            {
               _loc7_.scaleX = _loc6_.scale;
            }
            loop1:
            while(true)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop2:
               while(true)
               {
                  this.§'6§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop4:
                     while(_loc11_)
                     {
                        continue loop2;
                        do
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(!_loc10_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           do
                           {
                              §§push(_loc5_);
                              if(_loc11_)
                              {
                                 §§push(int(§§pop() + _loc6_.width));
                              }
                              _loc5_ = §§pop();
                           }
                           while(!_loc11_);
                           
                           if(_loc11_)
                           {
                              if(!_loc10_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop4;
                        }
                        while(false);
                        
                        continue loop0;
                     }
                  }
               }
            }
         }
         if(!(_loc10_ && _loc3_))
         {
            this.§'6§.flatten();
         }
      }
      
      private function §33§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!_loc5_)
         {
            if(param1 <= 0)
            {
               if(_loc4_ || _loc3_)
               {
                  addr159:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  addr62:
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           _loc2_.push(_loc3_);
                           addr136:
                           param1 = §§pop();
                        }
                     }
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    §§push(0);
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc4_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             continue loop0;
                                          }
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(10);
                                          }
                                          addr144:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() % §§pop());
                                          addr146:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop9:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr148:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr102:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ || param1))
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(10);
                                                   }
                                                   continue loop9;
                                                }
                                                §§goto(addr136);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                §§goto(addr144);
                                             }
                                             §§goto(addr136);
                                          }
                                          addr119:
                                       }
                                       §§goto(addr146);
                                    }
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr119);
                           }
                           addr29:
                        }
                        §§goto(addr148);
                     }
                  }
                  return _loc2_;
               }
            }
            §§goto(addr29);
         }
         §§goto(addr159);
      }
      
      private function §?F§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§;K§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%!9§.getFrame(_loc3_);
            if(!(_loc8_ && _loc3_))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §%!?§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§;K§ = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
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
      
      private function §==§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§;K§ = null;
         §§push(0);
         if(_loc9_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(true);
         if(_loc9_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(_loc9_)
                  {
                     §§push(-§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc5_.pivotY);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr199:
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             _loc2_ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                addr60:
                                                while(true)
                                                {
                                                   §§push(_loc5_.pivotY);
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            §§push(_loc5_.texture.height);
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  addr105:
                                                                  §§push(_loc3_);
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        §§push(_loc5_.pivotY);
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           addr137:
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§push(-§§pop());
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              addr147:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr154:
                                                                                 §§push(§§pop() + _loc5_.height);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr157:
                                                                                    §§push(int(§§pop()));
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr160:
                                                                                       if(_loc8_ && param1)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          if(!(_loc9_ || this))
                                                                                          {
                                                                                             addr183:
                                                                                             §§push(_loc5_.pivotY);
                                                                                             break;
                                                                                          }
                                                                                          addr232:
                                                                                          if(false)
                                                                                          {
                                                                                             addr185:
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr237:
                                                                                       §§push(_loc2_ + _loc5_.height);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr221:
                                                                                          §§push(int(§§pop()));
                                                                                          if(!(_loc9_ || param1))
                                                                                          {
                                                                                             addr235:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                §§goto(addr237);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr236);
                                                                                             }
                                                                                             addr236:
                                                                                             addr235:
                                                                                          }
                                                                                          _loc3_ = §§pop();
                                                                                          addr229:
                                                                                          §§goto(addr185);
                                                                                       }
                                                                                       §§goto(addr235);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr237);
                                                                           }
                                                                           §§goto(addr154);
                                                                        }
                                                                        §§goto(addr157);
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr160);
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr105);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr235);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr60);
                        }
                     }
                  }
                  §§goto(addr199);
               }
               §§goto(addr232);
            }
            §§goto(addr183);
         }
         return _loc3_ - _loc2_;
      }
   }
}
