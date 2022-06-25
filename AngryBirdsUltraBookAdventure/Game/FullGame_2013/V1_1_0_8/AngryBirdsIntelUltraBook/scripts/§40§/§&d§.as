package §40§
{
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   
   public class §&d§
   {
       
      
      private var §]2§:Sprite;
      
      private var § K§:§%!L§;
      
      private var §7!W§:Boolean;
      
      public function §&d§(param1:Sprite, param2:§%!L§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§]2§ = param1;
               loop1:
               for(; !(_loc5_ && this); while(!(_loc5_ && param2))
               {
                  this.§7!W§ = param3;
                  if(!(_loc5_ && param1))
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.§ K§ = param2;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§]2§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§]2§);
               if(_loc1_)
               {
                  §§pop().removeChildAt(0,true);
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §1u§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§#`§ = null;
         var _loc7_:§"<§ = null;
         if(_loc11_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§9!f§(this.§ !b§(param1));
         §§push(this.§]k§(_loc2_));
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§%"#§(_loc2_));
         if(_loc11_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc10_ && this))
         {
            §§push(-§§pop());
            if(_loc11_ || this)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §"<§(_loc6_.texture,this.§7!W§)).scaleX = _loc6_.scale;
            if(_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
            }
            loop1:
            while(true)
            {
               this.§]2§.addChild(_loc7_);
               loop2:
               while(true)
               {
                  _loc7_.x = _loc5_;
                  loop3:
                  while(!_loc10_)
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
                        while(!_loc10_)
                        {
                           §§push(_loc5_);
                           if(!_loc10_)
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }
                           _loc5_ = §§pop();
                           if(_loc11_ || _loc2_)
                           {
                              if(!_loc10_)
                              {
                                 continue loop4;
                              }
                              continue loop2;
                           }
                        }
                        continue loop3;
                     }
                     while(false);
                     
                     continue loop0;
                  }
                  continue loop1;
               }
            }
         }
         if(_loc11_)
         {
            this.§]2§.flatten();
         }
      }
      
      private function § !b§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(!_loc5_)
         {
            if(param1 <= 0)
            {
               if(_loc4_ || _loc2_)
               {
                  addr152:
                  _loc2_.push(0);
               }
               while(true)
               {
                  _loc2_.reverse();
                  addr83:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                     }
                  }
                  return _loc2_;
                  addr73:
                  if(!(_loc5_ && this))
                  {
                     continue;
                  }
                  loop4:
                  while(_loc5_ && param1)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(10);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                              break loop5;
                           }
                           addr139:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              continue loop5;
                           }
                        }
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        continue loop4;
                     }
                  }
                  _loc2_.push(_loc3_);
                  §§goto(addr90);
               }
            }
            while(true)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(0);
                     if(!(_loc5_ && param1))
                     {
                        if(_loc4_ || this)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§goto(addr73);
                              }
                              §§goto(addr83);
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(10);
                              }
                              §§goto(addr140);
                           }
                        }
                        §§goto(addr139);
                        §§push(§§pop() % §§pop());
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr140);
               }
               §§goto(addr105);
               §§goto(addr90);
            }
         }
         §§goto(addr152);
      }
      
      private function §9!f§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§#`§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§ K§.getFrame(_loc3_);
            if(_loc7_ || param1)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §]k§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§#`§ = null;
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
      
      private function §%"#§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§#`§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(!(_loc9_ && param1))
            {
               if(_loc4_)
               {
                  if(!_loc9_)
                  {
                     §§push(_loc5_.pivotY);
                     while(true)
                     {
                        addr221:
                        _loc2_ = int(-§§pop());
                     }
                     addr219:
                  }
               }
               else
               {
                  §§push(_loc5_.pivotY);
                  if(!_loc9_)
                  {
                     if(!(_loc9_ && this))
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
                                 while(!(_loc9_ && _loc2_))
                                 {
                                    §§push(_loc5_.pivotY);
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                       addr178:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr179:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr180:
                                             while(true)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                }
                                                addr222:
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   addr190:
                                                   while(true)
                                                   {
                                                      addr204:
                                                      §§push(int(§§pop() + _loc5_.height));
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr219);
                                                      continue loop11;
                                                   }
                                                   _loc3_ = §§pop();
                                                   break loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr151:
                                 continue loop0;
                                 addr168:
                                 addr212:
                              }
                              while(true)
                              {
                                 §§push(_loc5_.pivotY);
                                 if(_loc8_ || this)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc9_ && this))
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(_loc5_.texture.height);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc8_ || _loc3_))
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(_loc5_.pivotY);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc8_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        addr144:
                                                                        §§push(int(§§pop()));
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              addr149:
                                                                              if(true)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr151);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr221);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr177);
                                                                        }
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr168);
                                                               }
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr144);
                                             }
                                             else
                                             {
                                                addr142:
                                                §§goto(addr144);
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr222);
                           }
                        }
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr177);
               }
               §§goto(addr222);
            }
            §§goto(addr151);
         }
         return _loc3_ - _loc2_;
      }
   }
}
