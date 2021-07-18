package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §<T§.§4!N§;
   import §<T§.§^"5§;
   
   public class §,!%§
   {
       
      
      private var §?!T§:Sprite;
      
      private var §'>§:§4!N§;
      
      private var §6#§:Boolean;
      
      public function §,!%§(param1:Sprite, param2:§4!N§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§?!T§ = param1;
               addr74:
               while(true)
               {
                  this.§'>§ = param2;
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§?!T§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§?!T§);
               if(!_loc1_)
               {
                  §§pop().removeChildAt(0,true);
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function § P§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§^"5§ = null;
         var _loc7_:§ "E§ = null;
         if(!(_loc10_ && param1))
         {
            this.clear();
         }
         var _loc2_:Array = this.§<%§(this.§`O§(param1));
         §§push(this.§`"V§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§0a§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc11_ || param1)
         {
            §§push(-§§pop());
            if(!_loc10_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new § "E§(_loc6_.texture,this.§6#§)).scaleX = _loc6_.scale;
            if(!_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               while(true)
               {
                  this.§?!T§.addChild(_loc7_);
                  loop2:
                  for(; _loc11_ || param1; loop5:
                  while(!(_loc10_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc11_ || _loc3_)
                        {
                           §§push(int(§§pop() + _loc6_.width));
                        }
                        _loc5_ = §§pop();
                        if(_loc10_)
                        {
                           continue loop5;
                        }
                        §§goto(addr121);
                     }
                     continue loop0;
                  })
                  {
                     _loc7_.x = _loc5_;
                     while(true)
                     {
                        addr130:
                        addr121:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(_loc11_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           continue loop2;
                        }
                        if(_loc10_ && _loc3_)
                        {
                           continue;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr130);
                     }
                  }
               }
            }
            §§goto(addr146);
         }
         if(_loc11_)
         {
            this.§?!T§.flatten();
         }
      }
      
      private function §`O§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(_loc4_ || _loc2_)
         {
            if(param1 <= 0)
            {
               if(_loc4_)
               {
                  _loc2_.push(0);
                  addr135:
                  loop6:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop7:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc5_)
                           {
                              loop8:
                              while(true)
                              {
                                 _loc2_.push(_loc3_);
                                 addr87:
                                 loop9:
                                 while(true)
                                 {
                                    addr34:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             §§push(0);
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc4_)
                                                         {
                                                            §§push(10);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  while(!_loc4_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  param1 = §§pop();
                                                                  addr112:
                                                                  continue loop8;
                                                                  addr112:
                                                               }
                                                            }
                                                            addr93:
                                                         }
                                                         §§goto(addr112);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr123:
                                                      §§push(param1 % 10);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr125);
                                                   }
                                                }
                                                §§goto(addr123);
                                             }
                                             §§goto(addr93);
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr112);
                                       continue loop9;
                                    }
                                 }
                              }
                           }
                           return _loc2_;
                        }
                        §§goto(addr87);
                     }
                  }
                  addr135:
               }
               §§goto(addr135);
            }
            §§goto(addr34);
         }
         §§goto(addr135);
      }
      
      private function §<%§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§^"5§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§'>§.getFrame(_loc3_);
            if(!_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §`"V§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§^"5§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && this))
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
      
      private function §0a§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§^"5§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc8_ || _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(_loc8_ || this)
                  {
                     if(_loc8_ || param1)
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
                                    while(_loc8_)
                                    {
                                       §§push(-§§pop());
                                       loop5:
                                       while(!_loc9_)
                                       {
                                          §§push(int(§§pop()));
                                          loop7:
                                          while(_loc8_)
                                          {
                                             _loc2_ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   addr202:
                                                   §§push(_loc5_.pivotY);
                                                   break loop7;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc5_.pivotY);
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(-§§pop());
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(_loc5_.texture.height);
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc8_ || this))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           addr146:
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.pivotY);
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(!(_loc8_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(-§§pop());
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          addr142:
                                                                                          §§push(int(§§pop() + _loc5_.height));
                                                                                          break loop6;
                                                                                       }
                                                                                       §§goto(addr142);
                                                                                    }
                                                                                    break loop6;
                                                                                 }
                                                                                 addr206:
                                                                                 _loc2_ = §§pop();
                                                                                 addr113:
                                                                              }
                                                                              addr197:
                                                                              §§push(int(_loc2_ + _loc5_.height));
                                                                              break loop4;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  if(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr146);
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   break;
                                                }
                                                _loc3_ = §§pop();
                                                §§goto(addr144);
                                             }
                                          }
                                          §§push(-§§pop());
                                          break;
                                       }
                                       §§goto(addr206);
                                       §§push(int(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                    §§goto(addr146);
                                 }
                              }
                              §§goto(addr45);
                           }
                        }
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr186);
               }
               §§goto(addr202);
            }
            §§goto(addr113);
         }
         return _loc3_ - _loc2_;
      }
   }
}
