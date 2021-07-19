package §9T§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§`!9§;
   
   public class §'!?§
   {
       
      
      private var §8A§:Sprite;
      
      private var §%M§:§4^§;
      
      private var §`?§:Boolean;
      
      public function §'!?§(param1:Sprite, param2:§4^§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§8A§ = param1;
            }
            addr76:
         }
         loop1:
         while(true)
         {
            this.§%M§ = param2;
            while(!(_loc5_ && this))
            {
               this.§`?§ = param3;
               if(_loc5_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break loop1;
               }
               §§goto(addr76);
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§8A§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§8A§);
               if(_loc2_ || _loc2_)
               {
                  continue loop0;
               }
            }
            addr53:
            return;
         }
      }
      
      public function §1M§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§`!9§ = null;
         var _loc7_:§1!A§ = null;
         if(_loc11_ || _loc3_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§],§(this.§4<§(param1));
         §§push(this.§[k§(_loc2_));
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§-I§(_loc2_));
         if(_loc11_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc10_)
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
            (_loc7_ = new §1!A§(_loc6_.texture,this.§`?§)).scaleX = _loc6_.scale;
            if(_loc11_ || this)
            {
               _loc7_.scaleY = _loc6_.scale;
               while(true)
               {
                  this.§8A§.addChild(_loc7_);
                  while(!(_loc10_ && param1))
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     while(_loc11_ || _loc3_)
                     {
                        loop4:
                        while(true)
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
                              if(!_loc10_)
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                           while(§§push(_loc5_), if(_loc11_ || this)
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }, _loc5_ = §§pop(), _loc10_);
                           
                           addr126:
                           while(false)
                           {
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr126);
         }
         if(!(_loc10_ && _loc2_))
         {
            this.§8A§.flatten();
         }
      }
      
      private function §4<§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(_loc5_ || _loc2_)
         {
            if(param1 <= 0)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.push(0);
                  addr151:
                  loop10:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop11:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc5_ || this))
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    §§push(10);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(int(§§pop()));
                                          while(_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(10);
                                                addr134:
                                                while(true)
                                                {
                                                   §§push(§§pop() % §§pop());
                                                }
                                             }
                                          }
                                          param1 = §§pop();
                                          addr123:
                                          loop9:
                                          while(true)
                                          {
                                             _loc2_.push(_loc3_);
                                             addr91:
                                             addr35:
                                             while(!(_loc5_ || param1))
                                             {
                                                continue loop9;
                                             }
                                             addr98:
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc5_)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(0);
                                                   if(!_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr133);
                                                      §§push(param1);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                else
                                                {
                                                   §§goto(addr123);
                                                }
                                                §§goto(addr98);
                                             }
                                             §§goto(addr86);
                                          }
                                          addr123:
                                       }
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr123);
                              }
                           }
                           addr86:
                           return _loc2_;
                        }
                        §§goto(addr91);
                     }
                  }
                  addr151:
               }
               §§goto(addr151);
            }
            §§goto(addr35);
         }
         §§goto(addr151);
      }
      
      private function §],§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§`!9§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%M§.getFrame(_loc3_);
            if(!_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §[k§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§`!9§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
            {
               §§push(_loc2_);
               if(_loc6_ || _loc3_)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §-I§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§`!9§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_ || this)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(true)
                  {
                     §§push(-§§pop());
                     §§push(_loc2_);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(int(-_loc5_.pivotY));
                              loop4:
                              while(_loc9_)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(!(_loc8_ && this))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_.pivotY);
                                       if(!_loc8_)
                                       {
                                          §§push(-§§pop());
                                          if(!(_loc9_ || this))
                                          {
                                             addr130:
                                             break;
                                          }
                                          §§push(_loc5_.texture.height);
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(_loc3_);
                                                if(_loc9_ || param1)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc8_ && this)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         §§push(_loc5_.pivotY);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§goto(addr119);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      else
                                                      {
                                                         addr178:
                                                         §§goto(addr181);
                                                         §§push(-_loc5_.pivotY);
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             addr126:
                                             §§push(_loc5_.height);
                                          }
                                          _loc3_ = int(§§pop() + §§pop());
                                          if(_loc9_)
                                          {
                                             break loop2;
                                          }
                                          continue loop3;
                                       }
                                       addr119:
                                       if(!_loc9_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc9_)
                                       {
                                          addr174:
                                          _loc3_ = §§pop();
                                          break loop5;
                                       }
                                       §§push(-§§pop());
                                       §§goto(addr126);
                                    }
                                    _loc2_ = int(§§pop());
                                    §§push(_loc2_);
                                    break loop4;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr174);
                           }
                        }
                        §§goto(addr46);
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr135);
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr175);
         }
         return _loc3_ - _loc2_;
      }
   }
}
