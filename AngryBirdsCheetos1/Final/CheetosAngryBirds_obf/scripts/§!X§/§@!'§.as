package §!X§
{
   import § `§.§6!=§;
   import § `§.§^1§;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   
   public class §@!'§
   {
       
      
      private var §?!N§:Sprite;
      
      private var §68§:§^1§;
      
      private var §2!2§:Boolean;
      
      public function §@!'§(param1:Sprite, param2:§^1§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
         }
         loop0:
         do
         {
            this.§?!N§ = param1;
            while(true)
            {
               this.§68§ = param2;
               while(_loc4_ || param3)
               {
                  this.§2!2§ = param3;
                  if(!(_loc5_ && param1))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc5_ && this);
         
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§?!N§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§?!N§);
               if(_loc2_ || this)
               {
                  continue loop0;
               }
            }
            addr63:
            return;
         }
      }
      
      public function § x§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§6!=§ = null;
         var _loc7_:§`!C§ = null;
         if(!_loc11_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§9!F§(this.§4t§(param1));
         §§push(this.§"@§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§,7§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_ || _loc2_)
         {
            §§push(-§§pop());
            if(!(_loc11_ && _loc3_))
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §`!C§(_loc6_.texture,this.§2!2§)).scaleX = _loc6_.scale;
            if(_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§?!N§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     while(true)
                     {
                        addr122:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           continue loop3;
                        }
                     }
                     if(!(_loc11_ && _loc3_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr157);
         }
         if(_loc10_ || this)
         {
            this.§?!N§.flatten();
         }
      }
      
      private function §4t§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(_loc4_)
         {
            if(param1 <= 0)
            {
               if(_loc4_ || _loc2_)
               {
                  addr142:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  addr61:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              _loc2_.push(_loc3_);
                              while(true)
                              {
                                 addr29:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                continue loop0;
                                             }
                                             §§push(param1);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(10);
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr121:
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc5_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(10);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         break loop3;
                                                      }
                                                      addr119:
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             addr120:
                                          }
                                          §§goto(addr119);
                                          §§push(§§pop() % §§pop());
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr120);
                                 }
                              }
                              addr80:
                           }
                           §§goto(addr121);
                        }
                     }
                     §§goto(addr80);
                  }
                  return _loc2_;
               }
            }
            §§goto(addr29);
         }
         §§goto(addr142);
      }
      
      private function §9!F§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§6!=§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§68§.getFrame(_loc3_);
            if(!_loc8_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §"@§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§6!=§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && this))
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §,7§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§6!=§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc8_ || param1)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(_loc8_)
                  {
                     if(!_loc9_)
                     {
                        §§push(-§§pop());
                        loop1:
                        for(; !_loc9_; if(!(_loc8_ || _loc3_))
                        {
                           continue;
                        },if(_loc8_)
                        {
                           §§goto(addr127);
                           §§push(int(§§pop()));
                        },§§goto(addr172))
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
                                    if(_loc9_)
                                    {
                                       addr184:
                                       §§push(-_loc5_.pivotY);
                                       break loop1;
                                    }
                                    §§push(_loc5_.pivotY);
                                    loop4:
                                    while(_loc8_ || this)
                                    {
                                       §§push(-§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr166:
                                          loop8:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.pivotY);
                                                      if(_loc8_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(-§§pop());
                                                         if(!(_loc8_ || this))
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(_loc9_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(_loc5_.texture.height);
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                  }
                                                                  §§push(_loc5_.pivotY);
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     addr128:
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr127:
                                                                  }
                                                                  addr102:
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!(_loc8_ || _loc2_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(-§§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr114:
                                                                        §§push(§§pop() + _loc5_.height);
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                                  continue loop9;
                                                                  continue loop1;
                                                                  break;
                                                                  addr197:
                                                               }
                                                               §§goto(addr128);
                                                            }
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                   addr172:
                                                   if(_loc9_)
                                                   {
                                                      break loop3;
                                                   }
                                                   §§push(int(§§pop() + _loc5_.height));
                                                   break loop4;
                                                   addr45:
                                                }
                                                addr179:
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    _loc3_ = §§pop();
                                    §§goto(addr179);
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr197);
                                    §§goto(addr172);
                                 }
                                 §§goto(addr172);
                                 addr186:
                              }
                              §§goto(addr45);
                           }
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr186);
                        §§push(int(§§pop()));
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr166);
               }
               §§goto(addr184);
            }
            §§goto(addr179);
         }
         return _loc3_ - _loc2_;
      }
   }
}
