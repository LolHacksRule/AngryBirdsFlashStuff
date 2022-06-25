package §_-TG§
{
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   
   public class §_-8I§
   {
       
      
      private var §_-FQ§:Sprite;
      
      private var §_-NM§:§_-J§;
      
      private var §_-064§:Boolean;
      
      public function §_-8I§(param1:Sprite, param2:§_-J§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§_-FQ§ = param1;
               while(true)
               {
                  this.§_-NM§ = param2;
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        this.§_-064§ = param3;
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§_-FQ§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§_-FQ§);
               if(_loc1_)
               {
                  §§pop().removeChildAt(0,true);
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §_-04T§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§_-vz§ = null;
         var _loc7_:§_-09b§ = null;
         if(_loc11_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§_-NS§(this.§_-OD§(param1));
         §§push(this.§_-FD§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§_-vX§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc10_)
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
            (_loc7_ = new §_-09b§(_loc6_.texture,this.§_-064§)).scaleX = _loc6_.scale;
            if(_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               while(true)
               {
                  this.§_-FQ§.addChild(_loc7_);
                  loop3:
                  while(_loc11_ || _loc2_)
                  {
                     loop4:
                     do
                     {
                        §§push(_loc7_);
                        §§push(-_loc4_);
                        if(_loc11_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        addr134:
                        addr169:
                        while(_loc11_ || this)
                        {
                           §§push(_loc5_);
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }
                           _loc5_ = §§pop();
                           if(_loc11_ || _loc3_)
                           {
                              if(_loc11_)
                              {
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           _loc7_.x = _loc5_;
                           continue loop3;
                           §§goto(addr134);
                        }
                     }
                     while(false);
                     
                     continue loop0;
                  }
               }
            }
            §§goto(addr169);
         }
         if(_loc11_ || this)
         {
            this.§_-FQ§.flatten();
         }
      }
      
      private function §_-OD§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(!_loc5_)
         {
            if(param1 <= 0)
            {
               if(!_loc5_)
               {
                  _loc2_.push(0);
                  addr125:
                  loop7:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop8:
                     while(true)
                     {
                        if(_loc5_ && param1)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 §§push(10);
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(int(§§pop()));
                                       break loop2;
                                    }
                                    addr114:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       continue loop2;
                                    }
                                 }
                              }
                              break;
                           }
                           addr104:
                           param1 = §§pop();
                           loop6:
                           while(true)
                           {
                              _loc2_.push(_loc3_);
                              addr70:
                              addr72:
                              while(_loc5_)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr70);
                                             }
                                             else
                                             {
                                                addr112:
                                                §§push(param1);
                                                §§push(10);
                                             }
                                          }
                                          §§goto(addr114);
                                          §§push(§§pop() % §§pop());
                                       }
                                       §§goto(addr95);
                                    }
                                    §§goto(addr112);
                                 }
                                 §§goto(addr104);
                                 §§goto(addr72);
                              }
                           }
                        }
                        return _loc2_;
                     }
                  }
                  addr125:
               }
               §§goto(addr125);
            }
            §§goto(addr72);
         }
         §§goto(addr125);
      }
      
      private function §_-NS§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§_-vz§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-NM§.getFrame(_loc3_);
            if(_loc8_ || param1)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §_-FD§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-vz§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
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
      
      private function §_-vX§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§_-vz§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(!(_loc8_ && _loc2_))
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(!_loc8_)
                  {
                     §§push(-§§pop());
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(_loc9_)
                              {
                                 §§push(_loc5_.pivotY);
                                 loop4:
                                 for(; !(_loc8_ && this); while(true)
                                 {
                                    if(_loc8_ && _loc3_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop1;
                                    }
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(-§§pop());
                                       if(_loc9_)
                                       {
                                          §§goto(addr117);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr205);
                                 })
                                 {
                                    if(!(_loc8_ && _loc3_))
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
                                                if(!_loc8_)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.pivotY);
                                                      if(!_loc9_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(-§§pop());
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(_loc5_.texture.height);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr207:
                                                                  _loc2_ = int(§§pop());
                                                                  addr206:
                                                                  break loop3;
                                                               }
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
                                                                  if(_loc8_ && _loc3_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.pivotY);
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     addr135:
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr117:
                                                               while(true)
                                                               {
                                                                  if(_loc8_ && param1)
                                                                  {
                                                                     addr196:
                                                                     §§push(int(§§pop()));
                                                                     break loop4;
                                                                  }
                                                                  §§push(_loc5_.height);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr127:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ || param1))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                               addr117:
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                   if(false)
                                                   {
                                                      addr140:
                                                   }
                                                   continue loop0;
                                                   addr46:
                                                }
                                                addr198:
                                                addr200:
                                                if(!_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      addr205:
                                                      §§goto(addr206);
                                                   }
                                                   addr203:
                                                }
                                                §§goto(addr140);
                                             }
                                          }
                                       }
                                       addr176:
                                    }
                                    §§goto(addr207);
                                 }
                                 _loc3_ = §§pop();
                                 §§goto(addr198);
                              }
                              §§push(_loc2_);
                              break loop1;
                              addr208:
                           }
                           §§goto(addr46);
                        }
                     }
                     §§goto(addr176);
                  }
                  while(true)
                  {
                     §§goto(addr196);
                     §§goto(addr208);
                  }
                  §§goto(addr200);
               }
               §§goto(addr203);
            }
            §§goto(addr84);
         }
         return _loc3_ - _loc2_;
      }
   }
}
