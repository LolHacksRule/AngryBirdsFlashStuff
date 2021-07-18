package §5!V§
{
   import §&"5§.§+2§;
   import §&"5§.§6!L§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   
   public class §%!h§
   {
       
      
      private var §!&§:Sprite;
      
      private var §%"9§:§+2§;
      
      private var §@!E§:Boolean;
      
      public function §%!h§(param1:Sprite, param2:§+2§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§!&§ = param1;
               loop1:
               while(!(_loc4_ && this))
               {
                  while(true)
                  {
                     this.§%"9§ = param2;
                     do
                     {
                        this.§@!E§ = param3;
                     }
                     while(!_loc5_);
                     
                     if(!(_loc4_ && param3))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§!&§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§!&§);
               if(_loc1_ || this)
               {
                  continue loop0;
               }
            }
            addr57:
            return;
         }
      }
      
      public function §!!=§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§6!L§ = null;
         var _loc7_:§=!Z§ = null;
         if(!(_loc11_ && param1))
         {
            this.clear();
         }
         var _loc2_:Array = this.§8Q§(this.§0!e§(param1));
         §§push(this.§=y§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§-p§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_)
         {
            §§push(-§§pop());
            if(_loc10_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §=!Z§(_loc6_.texture,this.§@!E§)).scaleX = _loc6_.scale;
            if(!_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
            }
            loop1:
            while(true)
            {
               this.§!&§.addChild(_loc7_);
               while(true)
               {
                  _loc7_.x = _loc5_;
                  addr152:
                  while(true)
                  {
                     addr131:
                     while(true)
                     {
                        §§push(_loc7_);
                        §§push(-_loc4_);
                        if(_loc10_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        continue loop1;
                     }
                     continue loop0;
                  }
                  addr122:
                  if(_loc11_ && this)
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr131);
               }
            }
         }
         if(!(_loc11_ && this))
         {
            this.§!&§.flatten();
         }
      }
      
      private function §0!e§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(_loc4_)
         {
            if(param1 <= 0)
            {
               if(!_loc5_)
               {
                  addr142:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  addr59:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(_loc4_ || param1)
                           {
                              _loc2_.push(_loc3_);
                              while(true)
                              {
                                 addr29:
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
                                             if(§§pop() <= §§pop())
                                             {
                                                continue loop0;
                                             }
                                             §§push(param1);
                                             while(true)
                                             {
                                                §§push(10);
                                                addr123:
                                                while(true)
                                                {
                                                   §§push(§§pop() % §§pop());
                                                   addr124:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr125:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr126:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            addr81:
                                                            while(true)
                                                            {
                                                               §§push(10);
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                             addr122:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_)
                                                {
                                                   §§push(int(§§pop()));
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   addr93:
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr81);
                                    }
                                    §§goto(addr93);
                                 }
                              }
                              addr78:
                           }
                           §§goto(addr126);
                        }
                     }
                     §§goto(addr78);
                  }
                  return _loc2_;
               }
            }
            §§goto(addr29);
         }
         §§goto(addr142);
      }
      
      private function §8Q§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§6!L§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%"9§.getFrame(_loc3_);
            if(!(_loc8_ && param1))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §=y§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§6!L§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc2_);
               if(!(_loc6_ && this))
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §-p§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§6!L§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(!(_loc9_ && param1))
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(-§§pop());
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(_loc2_);
                        loop1:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop2:
                              while(!_loc9_)
                              {
                                 §§push(_loc5_.pivotY);
                                 loop14:
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                    addr189:
                                    while(true)
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          §§push(int(§§pop()));
                                          loop12:
                                          while(_loc8_ || _loc2_)
                                          {
                                             _loc2_ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                addr45:
                                                while(true)
                                                {
                                                   §§push(_loc5_.pivotY);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(_loc5_.texture.height);
                                                      if(_loc8_ || this)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc9_)
                                                         {
                                                            continue loop1;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr127:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         addr131:
                                                         §§push(int(§§pop()));
                                                         if(_loc9_ && this)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(_loc9_ && this)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr153:
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(false)
                                                               {
                                                                  addr162:
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop13;
                                                         }
                                                         addr219:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            break loop2;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         break loop12;
                                                      }
                                                   }
                                                   §§goto(addr131);
                                                }
                                                addr218:
                                                while(true)
                                                {
                                                   §§goto(addr219);
                                                }
                                             }
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr242:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr208:
                                                while(_loc8_ || _loc3_)
                                                {
                                                   §§goto(addr218);
                                                   §§push(§§pop() + _loc5_.height);
                                                }
                                                break;
                                             }
                                             addr229:
                                             while(true)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          addr224:
                                          §§goto(addr162);
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§goto(addr229);
                                       }
                                       addr227:
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr242);
                              }
                              addr184:
                           }
                           §§goto(addr45);
                        }
                     }
                     §§goto(addr189);
                  }
                  §§goto(addr188);
               }
               §§goto(addr227);
            }
            §§goto(addr224);
         }
         return _loc3_ - _loc2_;
      }
   }
}
