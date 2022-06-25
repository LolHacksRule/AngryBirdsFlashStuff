package §,!5§
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   
   public class §%A§
   {
       
      
      private var §8X§:Sprite;
      
      private var §6!&§:§1!;§;
      
      private var §5_§:Boolean;
      
      public function §%A§(param1:Sprite, param2:§1!;§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§8X§ = param1;
               while(_loc5_ || param1)
               {
                  this.§6!&§ = param2;
                  while(_loc5_ || param3)
                  {
                     this.§5_§ = param3;
                     if(!_loc5_)
                     {
                        continue;
                     }
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§8X§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§8X§);
               if(_loc1_ || this)
               {
                  continue loop0;
               }
            }
            addr52:
            return;
         }
      }
      
      public function §7!_§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§+W§ = null;
         var _loc7_:§?!U§ = null;
         if(!(_loc10_ && this))
         {
            this.clear();
         }
         var _loc2_:Array = this.§+!2§(this.§<!U§(param1));
         §§push(this.§#g§(_loc2_));
         if(!(_loc10_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§=!q§(_loc2_));
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc10_)
         {
            §§push(-§§pop());
            if(_loc11_ || _loc3_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §?!U§(_loc6_.texture,this.§5_§)).scaleX = _loc6_.scale;
            if(_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§8X§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     while(_loc11_)
                     {
                        if(!_loc10_)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc7_);
                              §§push(-_loc4_);
                              if(!(_loc10_ && _loc2_))
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().y = §§pop();
                              do
                              {
                                 §§push(_loc5_);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(int(§§pop() + _loc6_.width));
                                 }
                                 _loc5_ = §§pop();
                              }
                              while(_loc10_);
                              
                              if(_loc10_)
                              {
                                 break;
                                 addr128:
                              }
                              while(false)
                              {
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr128);
         }
         if(_loc11_ || this)
         {
            this.§8X§.flatten();
         }
      }
      
      private function §<!U§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!(_loc5_ && this))
         {
            if(param1 <= 0)
            {
               if(_loc4_ || _loc3_)
               {
                  addr137:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  loop1:
                  while(_loc5_ && _loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.push(_loc3_);
                        addr85:
                        loop3:
                        for(; !_loc5_; continue loop0)
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc5_ && param1))
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop1;
                                          }
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(10);
                                          }
                                          addr122:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() % §§pop());
                                          addr124:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr125:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                break loop3;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr125);
                                          }
                                          addr112:
                                       }
                                       §§goto(addr124);
                                    }
                                    addr93:
                                 }
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr93);
                                       §§push(10);
                                    }
                                    else
                                    {
                                       §§goto(addr122);
                                    }
                                    §§goto(addr124);
                                 }
                                 addr90:
                              }
                              §§goto(addr112);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr90);
                           §§goto(addr125);
                        }
                     }
                  }
                  return _loc2_;
                  if(!(_loc5_ && param1))
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
            }
            §§goto(addr34);
         }
         §§goto(addr137);
      }
      
      private function §+!2§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§+W§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§6!&§.getFrame(_loc3_);
            if(_loc8_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §#g§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§+W§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && _loc3_))
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
      
      private function §=!q§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§+W§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(!_loc8_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(-§§pop());
                     loop1:
                     while(_loc9_)
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop3:
                              while(!(_loc8_ && _loc3_))
                              {
                                 §§push(_loc5_.pivotY);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(-§§pop());
                                    loop4:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr217:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                _loc2_ = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   addr41:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.pivotY);
                                                      if(_loc8_ && param1)
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr154:
                                                            if(!_loc9_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc8_ && this))
                                                            {
                                                               if(!(_loc9_ || _loc2_))
                                                               {
                                                                  _loc2_ = int(-_loc5_.pivotY);
                                                                  break loop3;
                                                               }
                                                               addr233:
                                                               addr237:
                                                               addr236:
                                                               addr235:
                                                               if(false)
                                                               {
                                                                  addr172:
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         break;
                                                      }
                                                      addr146:
                                                      addr146:
                                                      §§push(-§§pop());
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(_loc5_.texture.height);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc9_ || param1)
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr128:
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr225:
                                                   break loop1;
                                                }
                                             }
                                             §§goto(addr235);
                                          }
                                          addr229:
                                          _loc3_ = §§pop();
                                          §§goto(addr230);
                                       }
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr225);
                              §§push(_loc2_);
                              addr189:
                              addr238:
                           }
                           §§goto(addr41);
                        }
                     }
                     §§goto(addr229);
                     §§push(int(§§pop()));
                  }
                  §§goto(addr217);
               }
               §§goto(addr233);
            }
            §§goto(addr238);
         }
         return _loc3_ - _loc2_;
      }
   }
}
