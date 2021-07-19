package §@L§
{
   import § ! §.§5!v§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import flash.geom.Rectangle;
   
   public class §6^§
   {
       
      
      private var §#e§:Sprite;
      
      private var §?3§:§5!v§;
      
      private var §`s§:Boolean;
      
      public function §6^§(param1:Sprite, param2:§5!v§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§#e§ = param1;
               while(true)
               {
                  this.§?3§ = param2;
                  loop2:
                  while(_loc4_ || param2)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§`s§ = param3;
                        if(!(_loc5_ && param3))
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
         §§goto(addr78);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§#e§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§#e§);
               if(!_loc1_)
               {
                  continue loop0;
               }
            }
            addr58:
            return;
         }
      }
      
      public function §;!4§(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§1!J§ = null;
         if(_loc10_)
         {
            this.clear();
         }
         var _loc2_:Vector.<DisplayObject> = this.§0,§(this.§[f§(param1));
         §§push(this.§"!j§(_loc2_));
         if(_loc10_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§?!L§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_ || param1)
         {
            §§push(-§§pop());
            if(!_loc9_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            if(!(_loc9_ && _loc2_))
            {
               this.§#e§.addChild(_loc6_);
               while(true)
               {
                  _loc6_.x = _loc5_;
                  loop2:
                  while(true)
                  {
                     addr113:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(-_loc4_);
                        if(_loc10_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        continue loop2;
                     }
                  }
                  if(!(_loc10_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr136);
               }
            }
            while(false)
            {
               §§goto(addr113);
            }
         }
         if(_loc10_ || this)
         {
            this.§#e§.flatten();
         }
      }
      
      private function §[f§(param1:int) : Vector.<int>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         if(_loc5_)
         {
            if(param1 <= 0)
            {
               if(_loc5_ || _loc2_)
               {
                  _loc2_.push(0);
                  addr149:
                  loop9:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop10:
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              loop11:
                              while(true)
                              {
                                 _loc2_.push(_loc3_);
                                 addr96:
                                 loop12:
                                 while(true)
                                 {
                                    addr33:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(0);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr99:
                                                         while(true)
                                                         {
                                                            §§push(10);
                                                            addr100:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     while(_loc4_ && this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(10);
                                                                           addr122:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() % §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     param1 = §§pop();
                                                                     continue loop11;
                                                                     addr106:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               §§goto(addr122);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr100);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr99);
                                       }
                                       §§goto(addr106);
                                       continue loop12;
                                    }
                                 }
                              }
                           }
                           return _loc2_;
                        }
                        §§goto(addr96);
                     }
                  }
                  addr149:
               }
               §§goto(addr149);
            }
            §§goto(addr33);
         }
         §§goto(addr149);
      }
      
      private function §0,§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§?3§.getFrame(_loc3_)).pivotX = 0;
            if(_loc7_ || _loc2_)
            {
               _loc4_.pivotY = 0;
               if(_loc8_ && _loc3_)
               {
                  continue;
               }
            }
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §"!j§(param1:Vector.<DisplayObject>) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:DisplayObject = null;
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
      
      private function §?!L§(param1:Vector.<DisplayObject>) : int
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
            _loc6_ = _loc5_.§5!&§;
            if(!(_loc9_ && _loc2_))
            {
               if(!_loc4_)
               {
                  if(_loc6_.top < _loc2_)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(int(_loc6_.top));
                        loop3:
                        while(!(_loc9_ && param1))
                        {
                           _loc2_ = §§pop();
                           loop4:
                           while(true)
                           {
                              if(!(_loc10_ || _loc2_))
                              {
                                 §§push(int(_loc6_.top));
                                 addr53:
                              }
                              else
                              {
                                 addr142:
                              }
                              addr133:
                              while(_loc6_.bottom > _loc3_)
                              {
                                 if(!_loc9_)
                                 {
                                    if(!_loc10_)
                                    {
                                       §§push(int(_loc6_.bottom));
                                    }
                                    §§push(int(_loc6_.bottom));
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       if(!_loc10_)
                                       {
                                          break loop4;
                                       }
                                       _loc3_ = §§pop();
                                       addr85:
                                       if(!(_loc10_ || _loc2_))
                                       {
                                          continue loop4;
                                       }
                                    }
                                    continue loop3;
                                    if(_loc10_ || param1)
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr139:
                                       }
                                       break;
                                    }
                                    continue loop2;
                                    break loop3;
                                    addr156:
                                 }
                                 §§goto(addr85);
                                 §§goto(addr133);
                              }
                              continue loop0;
                           }
                           _loc2_ = §§pop();
                           §§goto(addr156);
                        }
                        _loc3_ = §§pop();
                        §§goto(addr139);
                     }
                     addr115:
                  }
                  §§goto(addr53);
               }
               §§goto(addr142);
            }
            §§goto(addr115);
         }
         return _loc3_ - _loc2_;
      }
   }
}
