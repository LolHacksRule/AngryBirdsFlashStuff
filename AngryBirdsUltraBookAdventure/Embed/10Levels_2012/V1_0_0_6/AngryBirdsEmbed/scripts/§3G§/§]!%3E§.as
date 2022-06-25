package §3G§
{
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§+R§;
   
   public class §]!>§
   {
       
      
      private var §62§:Sprite;
      
      private var §^N§:§+R§;
      
      private var §;6§:Boolean;
      
      public function §]!>§(param1:Sprite, param2:§+R§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this.§62§ = param1;
               if(!_loc4_)
               {
                  this.§^N§ = param2;
                  if(!(_loc4_ && param2))
                  {
                     addr48:
                     this.§;6§ = param3;
                  }
               }
               §§goto(addr48);
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§62§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§62§);
               if(_loc2_)
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
      
      public function §^!>§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§%F§ = null;
         var _loc7_:§4K§ = null;
         if(_loc11_ || _loc3_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§'!9§(this.§4`§(param1));
         §§push(this.§9$§(_loc2_));
         if(_loc11_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§8'§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc11_ || param1)
         {
            §§push(-§§pop());
            if(!(_loc10_ && _loc3_))
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §4K§(_loc6_.texture,this.§;6§)).scaleX = _loc6_.scale;
            if(!_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               if(_loc11_)
               {
                  this.§62§.addChild(_loc7_);
                  if(!_loc10_)
                  {
                     _loc7_.x = _loc5_;
                     if(_loc11_ || _loc2_)
                     {
                     }
                     addr161:
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        §§push(int(§§pop() + _loc6_.width));
                     }
                     _loc5_ = §§pop();
                     continue;
                  }
                  §§push(_loc7_);
                  §§push(-_loc4_);
                  if(_loc11_ || this)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().y = §§pop();
                  if(!_loc11_)
                  {
                     continue;
                  }
               }
            }
            §§goto(addr161);
         }
         if(!_loc10_)
         {
            this.§62§.flatten();
         }
      }
      
      private function §4`§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(_loc5_ || param1)
         {
            if(param1 <= 0)
            {
               if(_loc5_ || _loc2_)
               {
                  _loc2_.push(0);
                  addr42:
               }
               §§goto(addr42);
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr145);
                        }
                        §§push(param1);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(10);
                           if(_loc5_)
                           {
                              §§push(§§pop() % §§pop());
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(int(§§pop()));
                                 if(_loc5_ || _loc2_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(param1);
                                       if(_loc4_ && this)
                                       {
                                          continue loop1;
                                       }
                                       addr98:
                                       §§push(10);
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    break;
                                 }
                                 §§goto(addr98);
                              }
                              §§push(int(§§pop()));
                              if(_loc5_ || _loc2_)
                              {
                                 param1 = §§pop();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    _loc2_.push(_loc3_);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        §§goto(addr98);
                     }
                  }
               }
            }
            _loc2_.reverse();
            addr145:
            return _loc2_;
         }
         §§goto(addr42);
      }
      
      private function §'!9§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§%F§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§^N§.getFrame(_loc3_);
            if(!(_loc7_ && _loc2_))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §9$§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§%F§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && param1))
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
      
      private function §8'§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§%F§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(_loc4_)
            {
               §§push(_loc5_.pivotY);
               if(_loc9_)
               {
                  §§push(-§§pop());
                  if(!_loc8_)
                  {
                     _loc2_ = int(§§pop());
                     if(_loc9_ || _loc2_)
                     {
                        §§push(_loc2_ + _loc5_.height);
                        if(!_loc8_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc8_ && this))
                           {
                              addr70:
                              _loc3_ = §§pop();
                              addr71:
                              continue;
                           }
                           addr107:
                           §§push(-§§pop());
                           if(_loc9_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc8_ && _loc2_))
                              {
                                 addr123:
                                 _loc2_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    continue;
                                 }
                                 addr126:
                                 §§push(_loc5_.pivotY);
                                 if(!_loc8_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc9_ || this)
                                    {
                                       §§push(_loc5_.texture.height);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc8_)
                                          {
                                             addr156:
                                             if(§§pop() <= _loc3_)
                                             {
                                                continue;
                                             }
                                             addr161:
                                             §§push(-_loc5_.pivotY);
                                             §§push(_loc5_.height);
                                          }
                                          §§goto(addr161);
                                       }
                                       addr165:
                                       _loc3_ = int(§§pop() + §§pop());
                                       continue;
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr165);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr71);
                  }
                  else
                  {
                     addr99:
                     §§push(_loc2_);
                     if(!_loc8_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc8_)
                           {
                              §§goto(addr107);
                              §§push(_loc5_.pivotY);
                           }
                        }
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr70);
            }
            else
            {
               §§push(_loc5_.pivotY);
               if(_loc9_ || this)
               {
                  §§push(-§§pop());
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr123);
         }
         return _loc3_ - _loc2_;
      }
   }
}
