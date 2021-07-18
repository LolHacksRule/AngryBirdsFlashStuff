package §@V§
{
   import §2`§.§;!Q§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import flash.geom.Rectangle;
   
   public class § F§
   {
       
      
      private var §&%§:Sprite;
      
      private var §4!§:§;!Q§;
      
      private var §;J§:Boolean;
      
      public function § F§(param1:Sprite, param2:§;!Q§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§&%§ = param1;
               while(_loc5_ || param1)
               {
                  this.§4!§ = param2;
                  do
                  {
                     this.§;J§ = param3;
                  }
                  while(_loc4_ && this);
                  
                  if(_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr47:
               }
            }
         }
         §§goto(addr47);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§&%§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§&%§);
               if(_loc1_ || _loc2_)
               {
                  continue loop0;
               }
            }
            addr57:
            return;
         }
      }
      
      public function §4A§(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§4!2§ = null;
         if(_loc9_)
         {
            this.clear();
         }
         var _loc2_:Vector.<DisplayObject> = this.§3!C§(this.§8i§(param1));
         §§push(this.§=!q§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§%!r§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc10_)
         {
            §§push(-§§pop());
            if(_loc9_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            if(!(_loc10_ && this))
            {
               this.§&%§.addChild(_loc6_);
            }
            loop1:
            while(true)
            {
               _loc6_.x = _loc5_;
               while(true)
               {
                  addr109:
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(-_loc4_);
                     if(_loc9_ || this)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().y = §§pop();
                     continue loop1;
                  }
                  addr100:
                  continue loop0;
                  if(!(_loc9_ || this))
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr109);
               }
            }
         }
         if(_loc9_ || param1)
         {
            this.§&%§.flatten();
         }
      }
      
      private function §8i§(param1:int) : Vector.<int>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         if(_loc4_ || _loc3_)
         {
            if(param1 <= 0)
            {
               if(!(_loc5_ && this))
               {
                  _loc2_.push(0);
                  addr90:
                  _loc2_.reverse();
                  addr158:
               }
               §§goto(addr158);
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_ || this)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr90);
                                       }
                                       else
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr103:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(10);
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!(_loc5_ && this))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() % §§pop());
                                                         }
                                                         addr131:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                         continue loop1;
                                                      }
                                                   }
                                                   addr122:
                                                   param1 = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc2_.push(_loc3_);
                                                      addr98:
                                                      while(_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr106:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr130:
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                                 break;
                              }
                              §§push(param1);
                              §§goto(addr130);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr122);
               }
            }
            return _loc2_;
         }
         §§goto(addr90);
      }
      
      private function §3!C§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§4!§.getFrame(_loc3_)).pivotX = 0;
            if(!_loc7_)
            {
               _loc4_.pivotY = 0;
               if(!(_loc8_ || _loc2_))
               {
                  continue;
               }
            }
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §=!q§(param1:Vector.<DisplayObject>) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:DisplayObject = null;
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
      
      private function §%!r§(param1:Vector.<DisplayObject>) : int
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§4j§;
            if(!(_loc9_ && this))
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc6_.top < _loc2_)
                     {
                        if(_loc10_ || _loc3_)
                        {
                           §§push(int(_loc6_.top));
                           loop2:
                           for(; _loc10_; while(true)
                           {
                              §§push(int(_loc6_.bottom));
                              if(_loc9_ && _loc2_)
                              {
                                 continue loop2;
                              }
                              _loc3_ = §§pop();
                              §§goto(addr88);
                           })
                           {
                              if(_loc10_ || this)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(_loc10_)
                                 {
                                    if(_loc10_ || _loc3_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc6_.bottom <= _loc3_)
                                          {
                                             continue loop0;
                                          }
                                          if(_loc10_)
                                          {
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                continue loop2;
                                             }
                                             addr134:
                                             addr134:
                                             while(true)
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   break loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(false)
                                                   {
                                                      break loop7;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop5;
                                             }
                                             addr88:
                                          }
                                       }
                                       continue loop0;
                                       addr53:
                                    }
                                    else
                                    {
                                       addr150:
                                    }
                                    addr153:
                                    _loc2_ = int(_loc6_.top);
                                    while(true)
                                    {
                                       §§push(int(_loc6_.bottom));
                                       break loop2;
                                       §§goto(addr134);
                                    }
                                    continue loop1;
                                 }
                                 continue loop1;
                                 addr119:
                              }
                              §§goto(addr153);
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr150);
               }
            }
            §§goto(addr67);
         }
         return _loc3_ - _loc2_;
      }
   }
}
