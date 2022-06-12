package §9"!§
{
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   
   public class §%"6§
   {
       
      
      private var §3^§:Sprite;
      
      private var §&";§:§"A§;
      
      private var §[!$§:Boolean;
      
      public function §%"6§(param1:Sprite, param2:§"A§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§3^§ = param1;
               while(true)
               {
                  this.§&";§ = param2;
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            this.§[!$§ = param3;
            if(_loc4_ || param1)
            {
               if(!_loc5_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§3^§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§3^§);
               if(_loc2_)
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
      
      public function §3"<§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§3!K§ = null;
         var _loc7_:§0!N§ = null;
         if(_loc10_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§0a§(this.§06§(param1));
         §§push(this.§<j§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§`G§(_loc2_));
         if(!(_loc11_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc11_ && param1))
         {
            §§push(-§§pop());
            if(!(_loc11_ && param1))
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §0!N§(_loc6_.texture,this.§[!$§)).scaleX = _loc6_.scale;
            if(_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               while(true)
               {
                  this.§3^§.addChild(_loc7_);
                  loop2:
                  for(; _loc10_ || _loc2_; loop4:
                  while(_loc10_ || this)
                  {
                     loop5:
                     do
                     {
                        §§push(_loc7_);
                        §§push(-_loc4_);
                        if(!_loc11_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        while(!_loc11_)
                        {
                           §§push(_loc5_);
                           if(!_loc11_)
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }
                           _loc5_ = §§pop();
                           if(!_loc11_)
                           {
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                     while(false);
                     
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        _loc7_.x = _loc5_;
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr168);
         }
         if(_loc10_ || param1)
         {
            this.§3^§.flatten();
         }
      }
      
      private function §06§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(_loc4_ || _loc2_)
         {
            if(param1 <= 0)
            {
               if(!_loc5_)
               {
                  _loc2_.push(0);
                  addr145:
                  loop8:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop9:
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(_loc5_ && _loc2_)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(10);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(int(§§pop()));
                                                while(_loc5_ && param1)
                                                {
                                                   continue loop1;
                                                }
                                                param1 = §§pop();
                                                _loc2_.push(_loc3_);
                                                addr117:
                                                loop10:
                                                while(true)
                                                {
                                                   addr34:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(0);
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            while(true)
                                                            {
                                                               §§push(10);
                                                               addr133:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() % §§pop());
                                                                  addr134:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                            addr132:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr117);
                                                      }
                                                      §§goto(addr125);
                                                      continue loop10;
                                                   }
                                                   §§goto(addr88);
                                                }
                                                addr117:
                                                addr125:
                                                addr93:
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr133);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr117);
                              }
                           }
                           addr88:
                           return _loc2_;
                        }
                        §§goto(addr93);
                     }
                  }
                  addr145:
               }
               §§goto(addr145);
            }
            §§goto(addr34);
         }
         §§goto(addr145);
      }
      
      private function §0a§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§3!K§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§&";§.getFrame(_loc3_);
            if(!_loc8_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §<j§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3!K§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc6_ || this)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §`G§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§3!K§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_ || _loc2_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(_loc9_ || this)
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
                                 addr178:
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(-§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop7:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.pivotY);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(_loc5_.texture.height);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc8_ && this)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        if(!(_loc9_ || _loc3_))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(_loc5_.pivotY);
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr136:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr140:
                                                                                       §§push(§§pop() + _loc5_.height);
                                                                                       continue loop1;
                                                                                    }
                                                                                    addr161:
                                                                                    addr213:
                                                                                    addr212:
                                                                                    _loc3_ = int(§§pop());
                                                                                    addr211:
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          addr208:
                                                                                          §§goto(addr211);
                                                                                          §§goto(addr211);
                                                                                       }
                                                                                       addr223:
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr149:
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr157:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    break loop2;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              addr222:
                                                                              _loc2_ = §§pop();
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr221:
                                                                           §§push(int(-_loc5_.pivotY));
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   continue loop1;
                                                   addr46:
                                                }
                                                §§goto(addr213);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr221);
                                 }
                              }
                           }
                           §§goto(addr46);
                        }
                        addr159:
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr161);
                     }
                  }
                  §§goto(addr178);
               }
               §§goto(addr221);
            }
            §§goto(addr159);
         }
         return _loc3_ - _loc2_;
      }
   }
}
