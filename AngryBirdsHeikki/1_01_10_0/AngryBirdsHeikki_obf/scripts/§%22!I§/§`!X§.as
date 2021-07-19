package §"!I§
{
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   
   public class §`!X§
   {
       
      
      private var §;=§:Sprite;
      
      private var §-!2§:§!x§;
      
      private var §]1§:Boolean;
      
      public function §`!X§(param1:Sprite, param2:§!x§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§;=§ = param1;
               addr57:
               if(_loc5_ || param2)
               {
                  this.§]1§ = param3;
                  addr74:
                  if(!(_loc5_ || this))
                  {
                     while(_loc5_)
                     {
                        §§goto(addr57);
                        §§goto(addr74);
                     }
                     while(true)
                     {
                        this.§-!2§ = param2;
                        §§goto(addr55);
                     }
                     addr55:
                     addr79:
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
            §§push(this.§;=§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§;=§);
               if(_loc1_)
               {
                  continue loop0;
               }
            }
            addr52:
            return;
         }
      }
      
      public function §8#§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§8!!§ = null;
         var _loc7_:§7!f§ = null;
         if(_loc11_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§!!^§(this.§ 7§(param1));
         §§push(this.§[3§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§ !7§(_loc2_));
         if(_loc11_ || this)
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
            (_loc7_ = new §7!f§(_loc6_.texture,this.§]1§)).scaleX = _loc6_.scale;
            if(!_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§;=§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     for(; _loc11_ || _loc3_; while(true)
                     {
                        §§push(_loc5_);
                        if(!(_loc10_ && _loc3_))
                        {
                           §§push(int(§§pop() + _loc6_.width));
                        }
                        _loc5_ = §§pop();
                        if(_loc10_)
                        {
                           continue;
                        }
                        if(!(_loc11_ || param1))
                        {
                           continue loop3;
                        }
                        if(!_loc11_)
                        {
                           continue loop1;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr127);
                     },continue loop0)
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(_loc11_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr136);
         }
         if(!_loc10_)
         {
            this.§;=§.flatten();
         }
      }
      
      private function § 7§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(!_loc4_)
         {
            if(param1 <= 0)
            {
               if(_loc5_ || param1)
               {
                  _loc2_.push(0);
                  addr151:
                  loop9:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop10:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           while(_loc4_)
                           {
                              loop2:
                              while(!(_loc5_ || _loc2_))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(10);
                                       while(true)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc4_)
                                             {
                                                addr106:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      param1 = §§pop();
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                                addr106:
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() % §§pop());
                                             }
                                             addr124:
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop3;
                                          }
                                       }
                                       addr95:
                                    }
                                    §§goto(addr106);
                                 }
                              }
                              _loc2_.push(_loc3_);
                           }
                           addr84:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc4_ && param1))
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(0);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             continue loop9;
                                          }
                                          continue loop10;
                                       }
                                       addr123:
                                       §§goto(addr124);
                                       §§push(param1);
                                       §§push(10);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr106);
                              §§goto(addr84);
                           }
                           addr30:
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
      
      private function §!!^§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§8!!§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-!2§.getFrame(_loc3_);
            if(_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §[3§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§8!!§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_ || param1)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function § !7§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§8!!§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc8_ || _loc3_)
            {
               if(_loc4_)
               {
                  addr237:
                  if(_loc8_ || param1)
                  {
                     §§push(_loc5_.pivotY);
                     if(_loc8_)
                     {
                        addr225:
                        §§push(int(-§§pop()));
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                     addr226:
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     addr198:
                     loop5:
                     while(true)
                     {
                        §§push(§§pop() + _loc5_.height);
                        addr201:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr202:
                           while(!(_loc8_ || _loc3_))
                           {
                              §§goto(addr226);
                           }
                           _loc3_ = §§pop();
                           continue loop5;
                        }
                     }
                  }
                  addr237:
               }
               else
               {
                  §§push(_loc5_.pivotY);
                  if(!_loc9_)
                  {
                     if(!_loc9_)
                     {
                        if(_loc8_ || param1)
                        {
                           §§push(-§§pop());
                           loop1:
                           while(!(_loc9_ && _loc3_))
                           {
                              if(_loc8_)
                              {
                                 §§push(_loc2_);
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       addr176:
                                       while(true)
                                       {
                                          §§push(_loc5_.pivotY);
                                          addr178:
                                          while(true)
                                          {
                                             §§push(-§§pop());
                                             addr179:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                addr180:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr181:
                                                   while(true)
                                                   {
                                                      if(_loc8_ || param1)
                                                      {
                                                         if(!(_loc8_ || this))
                                                         {
                                                            §§goto(addr237);
                                                         }
                                                      }
                                                      addr148:
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr176:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc5_.pivotY);
                                       if(_loc8_ || param1)
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             §§push(-§§pop());
                                             if(_loc8_)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(_loc5_.texture.height);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                else
                                                {
                                                   addr134:
                                                   §§push(§§pop() + §§pop());
                                                }
                                                if(!(_loc9_ && this))
                                                {
                                                   addr143:
                                                   §§push(int(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr146:
                                                      if(false)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr180);
                                             }
                                             else
                                             {
                                                addr132:
                                                §§push(_loc5_.height);
                                             }
                                             §§goto(addr134);
                                          }
                                          else
                                          {
                                             §§goto(addr178);
                                          }
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              else
                              {
                                 §§goto(addr225);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr178);
               }
               §§goto(addr148);
            }
            §§goto(addr176);
         }
         return _loc3_ - _loc2_;
      }
   }
}
