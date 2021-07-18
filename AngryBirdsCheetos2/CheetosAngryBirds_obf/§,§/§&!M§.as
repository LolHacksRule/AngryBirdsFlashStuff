package §,§
{
   import §9t§.§"h§;
   import §9t§.§35§;
   import §^a§.§6p§;
   import §^a§.Sprite;
   
   public class §&!M§
   {
       
      
      private var §8!2§:Sprite;
      
      private var §4S§:§"h§;
      
      private var §=!W§:Boolean;
      
      public function §&!M§(param1:Sprite, param2:§"h§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§8!2§ = param1;
               loop1:
               while(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     this.§4S§ = param2;
                     do
                     {
                        this.§=!W§ = param3;
                     }
                     while(!(_loc5_ || param3));
                     
                     if(_loc5_ || param1)
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
            §§push(this.§8!2§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§8!2§);
               if(!_loc2_)
               {
                  continue loop0;
               }
            }
            addr57:
            return;
         }
      }
      
      public function §8V§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§35§ = null;
         var _loc7_:§6p§ = null;
         if(!(_loc11_ && this))
         {
            this.clear();
         }
         var _loc2_:Array = this.§;O§(this.§<b§(param1));
         §§push(this.§[k§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§>;§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc11_ && param1))
         {
            §§push(-§§pop());
            if(_loc10_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §6p§(_loc6_.texture,this.§=!W§)).scaleX = _loc6_.scale;
            if(!_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§8!2§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     while(true)
                     {
                        addr119:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(_loc10_ || _loc3_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr119);
            }
         }
         if(_loc10_)
         {
            this.§8!2§.flatten();
         }
      }
      
      private function §<b§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(_loc5_)
         {
            if(param1 <= 0)
            {
               if(_loc5_ || this)
               {
                  _loc2_.push(0);
                  addr151:
                  loop8:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop9:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           loop10:
                           while(true)
                           {
                              addr30:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                continue loop8;
                                             }
                                             loop3:
                                             while(_loc4_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(10);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(int(§§pop()));
                                                               break loop4;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop() % §§pop());
                                                               continue loop6;
                                                            }
                                                            addr124:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                      }
                                                      addr90:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                   continue loop3;
                                                }
                                             }
                                             _loc2_.push(_loc3_);
                                             continue loop10;
                                          }
                                          continue loop9;
                                       }
                                       §§push(param1);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§goto(addr124);
                                          §§push(10);
                                       }
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          §§goto(addr127);
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr106);
                                 continue loop10;
                              }
                           }
                        }
                        return _loc2_;
                     }
                  }
                  addr151:
               }
               §§goto(addr151);
            }
            §§goto(addr30);
         }
         §§goto(addr151);
      }
      
      private function §;O§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§35§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§4S§.getFrame(_loc3_);
            if(_loc7_ || _loc3_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §[k§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§35§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc7_ || this)
            {
               §§push(_loc2_);
               if(_loc7_ || this)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §>;§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§35§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_ || param1)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(_loc9_)
                  {
                     §§push(-§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        loop3:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop4:
                              while(!(_loc8_ && param1))
                              {
                                 §§push(_loc5_.pivotY);
                                 loop5:
                                 for(; !_loc8_; if(_loc8_ && _loc2_)
                                 {
                                    continue;
                                 },§§push(-§§pop()),if(!(_loc8_ && param1))
                                 {
                                    §§goto(addr136);
                                    §§push(_loc5_.height);
                                 },§§goto(addr137))
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
                                             if(_loc8_)
                                             {
                                                addr154:
                                                §§push(_loc5_.pivotY);
                                                addr202:
                                                addr213:
                                                addr195:
                                                addr46:
                                             }
                                             else
                                             {
                                                addr198:
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc5_.pivotY);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  break loop8;
                                                               }
                                                               §§push(_loc5_.texture.height);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc9_ || _loc3_))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.pivotY);
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr140:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr137:
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr140);
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     addr137:
                                                                  }
                                                                  §§goto(addr140);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr137);
                                                                  }
                                                                  addr136:
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            addr187:
                                                            _loc3_ = int(§§pop());
                                                            break loop4;
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr140);
                                             }
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                break loop5;
                                             }
                                             continue loop0;
                                          }
                                          addr201:
                                          §§goto(addr202);
                                       }
                                    }
                                 }
                                 §§goto(addr187);
                                 §§push(§§pop() + _loc5_.height);
                              }
                              if(_loc8_ && _loc2_)
                              {
                                 §§goto(addr213);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr46);
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr154);
                     }
                  }
                  §§goto(addr201);
                  §§push(-§§pop());
               }
               §§goto(addr198);
            }
            §§goto(addr93);
         }
         return _loc3_ - _loc2_;
      }
   }
}
