package §]!@§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   
   public class §]!1§
   {
       
      
      private var §"!,§:Sprite;
      
      private var §;6§:Animation;
      
      private var §2!0§:Boolean;
      
      public function §]!1§(param1:Sprite, param2:Animation, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            while(true)
            {
               this.§"!,§ = param1;
               while(!(_loc5_ && this))
               {
                  this.§;6§ = param2;
                  loop2:
                  while(!(_loc5_ && param1))
                  {
                     while(true)
                     {
                        this.§2!0§ = param3;
                        if(_loc4_ || param2)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§"!,§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§"!,§);
               if(!(_loc1_ && _loc2_))
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
      
      public function §=>§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§ H§ = null;
         var _loc7_:§0!b§ = null;
         if(!(_loc11_ && _loc3_))
         {
            this.clear();
         }
         var _loc2_:Array = this.§5!U§(this.§'!M§(param1));
         §§push(this.§,?§(_loc2_));
         if(_loc10_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§<!g§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_)
         {
            §§push(-§§pop());
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §0!b§(_loc6_.texture,this.§2!0§);
            if(!_loc11_)
            {
               _loc7_.scaleX = _loc6_.scale;
               loop1:
               while(true)
               {
                  _loc7_.scaleY = _loc6_.scale;
                  while(true)
                  {
                     this.§"!,§.addChild(_loc7_);
                     while(!_loc11_)
                     {
                        _loc7_.x = _loc5_;
                        while(_loc10_)
                        {
                           while(true)
                           {
                              §§push(_loc7_);
                              §§push(-_loc4_);
                              if(!(_loc11_ && this))
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().y = §§pop();
                              continue loop1;
                           }
                           if(!(_loc10_ || this))
                           {
                              continue;
                           }
                           if(true)
                           {
                              continue loop0;
                           }
                           §§goto(addr136);
                        }
                     }
                  }
               }
            }
            §§goto(addr157);
         }
         if(!_loc11_)
         {
            this.§"!,§.flatten();
         }
      }
      
      private function §'!M§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!(_loc5_ && param1))
         {
            if(param1 <= 0)
            {
               if(!_loc5_)
               {
                  addr139:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  loop1:
                  while(_loc5_ && param1)
                  {
                     loop2:
                     while(true)
                     {
                        if(!(_loc5_ && this))
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(0);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(10);
                                          addr130:
                                          while(true)
                                          {
                                             §§push(§§pop() % §§pop());
                                             addr131:
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr133:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      addr100:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(10);
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr121:
                                                   param1 = §§pop();
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                       addr129:
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc4_)
                                          {
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr121);
                                             }
                                             addr119:
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr119);
                           }
                           addr34:
                        }
                        §§goto(addr133);
                     }
                  }
                  return _loc2_;
               }
            }
            §§goto(addr34);
         }
         §§goto(addr139);
      }
      
      private function §5!U§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§ H§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§;6§.getFrame(_loc3_);
            if(!_loc8_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §,?§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§ H§ = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in param1)
         {
            if(_loc6_ || param1)
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
      
      private function §<!g§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§ H§ = null;
         §§push(0);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(true);
         if(!(_loc8_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc9_ || _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(!_loc8_)
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
                              while(!_loc8_)
                              {
                                 §§push(_loc5_.pivotY);
                                 loop5:
                                 while(true)
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
                                             addr65:
                                             while(true)
                                             {
                                                §§push(_loc5_.pivotY);
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(_loc9_ || this)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc5_.texture.height);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     if(_loc8_ && this)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(_loc5_.pivotY);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr137:
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 addr149:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr156:
                                                                                 §§push(§§pop() + _loc5_.height);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr159:
                                                                                    §§push(int(§§pop()));
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr239:
                                                                              §§push(-§§pop());
                                                                           }
                                                                           addr241:
                                                                           _loc2_ = int(§§pop());
                                                                           break loop4;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr176:
                                                                     if(_loc8_ && _loc2_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              addr199:
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr237:
                                                                        §§push(_loc5_.pivotY);
                                                                     }
                                                                     addr234:
                                                                     §§goto(addr199);
                                                                  }
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         addr233:
                                                         _loc3_ = int(§§pop());
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr137);
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§push(_loc2_);
                              break loop1;
                           }
                           §§goto(addr65);
                        }
                     }
                  }
                  §§goto(addr233);
                  §§push(§§pop() + _loc5_.height);
               }
               §§goto(addr237);
            }
            §§goto(addr234);
         }
         return _loc3_ - _loc2_;
      }
   }
}
