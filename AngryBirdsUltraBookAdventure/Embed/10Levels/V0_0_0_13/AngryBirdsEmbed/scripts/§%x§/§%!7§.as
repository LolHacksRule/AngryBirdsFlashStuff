package §%x§
{
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   
   public class §%!7§
   {
       
      
      private var §0W§:Sprite;
      
      private var §2M§:§4b§;
      
      private var §4W§:Boolean;
      
      public function §%!7§(param1:Sprite, param2:§4b§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super();
            if(!(_loc5_ && this))
            {
               this.§0W§ = param1;
               if(!_loc5_)
               {
                  addr57:
                  this.§2M§ = param2;
                  if(!(_loc5_ && this))
                  {
                     addr67:
                     this.§4W§ = param3;
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr67);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§0W§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§0W§);
               if(!_loc2_)
               {
                  §§pop().removeChildAt(0,true);
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §+C§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§9X§ = null;
         var _loc7_:§8!?§ = null;
         if(_loc10_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§@!%§(this.§@#§(param1));
         §§push(this.§`2§(_loc2_));
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§[h§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_ || this)
         {
            §§push(-§§pop());
            if(_loc10_ || _loc2_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §8!?§(_loc6_.texture,this.§4W§)).scaleX = _loc6_.scale;
            if(!_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               if(_loc10_)
               {
                  addr114:
                  this.§0W§.addChild(_loc7_);
                  if(_loc10_ || _loc2_)
                  {
                     _loc7_.x = _loc5_;
                     if(!_loc11_)
                     {
                        addr140:
                        §§push(_loc7_);
                        §§push(-_loc4_);
                        if(_loc10_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        if(_loc11_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        §§push(int(§§pop() + _loc6_.width));
                     }
                     _loc5_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr140);
            }
            §§goto(addr114);
         }
         if(_loc10_)
         {
            this.§0W§.flatten();
         }
      }
      
      private function §@#§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!_loc5_)
         {
            if(param1 <= 0)
            {
               if(!(_loc5_ && param1))
               {
                  _loc2_.push(0);
                  addr36:
               }
               §§goto(addr36);
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
                           if(_loc4_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc5_ && this))
                           {
                              §§push(10);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() % §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc4_ || this))
                                    {
                                       continue loop0;
                                    }
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    addr87:
                                    §§push(10);
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§push(int(§§pop()));
                                 if(_loc4_ || param1)
                                 {
                                    param1 = §§pop();
                                    if(!_loc5_)
                                    {
                                       _loc2_.push(_loc3_);
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          §§goto(addr129);
                                       }
                                       else
                                       {
                                          addr129:
                                       }
                                       continue loop0;
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           §§goto(addr87);
                        }
                        addr129:
                        return _loc2_;
                     }
                  }
               }
            }
            _loc2_.reverse();
            §§goto(addr129);
         }
         §§goto(addr36);
      }
      
      private function §@!%§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§9X§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§2M§.getFrame(_loc3_);
            if(!(_loc8_ && this))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §`2§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9X§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc6_ || this)
            {
               §§push(_loc2_);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §[h§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§9X§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(_loc8_ || this)
            {
               if(_loc4_)
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(_loc5_.pivotY);
                     if(!_loc9_)
                     {
                        §§push(-§§pop());
                        if(!_loc9_)
                        {
                           §§push(int(§§pop()));
                           if(_loc8_ || _loc2_)
                           {
                              _loc2_ = §§pop();
                              if(!(_loc9_ && this))
                              {
                                 addr86:
                                 §§push(_loc2_ + _loc5_.height);
                                 if(!_loc9_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc8_)
                                    {
                                       _loc3_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          addr162:
                                          §§push(_loc5_.pivotY);
                                          if(_loc8_)
                                          {
                                             addr166:
                                             §§push(-§§pop());
                                             if(!_loc9_)
                                             {
                                                addr171:
                                                §§push(§§pop() + _loc5_.height);
                                             }
                                             §§push(int(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                       }
                                       else
                                       {
                                          addr98:
                                       }
                                       continue;
                                    }
                                    addr108:
                                    §§push(-§§pop());
                                    if(_loc8_ || _loc3_)
                                    {
                                       addr116:
                                       §§push(_loc2_);
                                       if(!_loc9_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             §§push(-_loc5_.pivotY);
                                             if(_loc8_)
                                             {
                                                addr126:
                                                _loc2_ = int(§§pop());
                                                addr127:
                                                §§push(-_loc5_.pivotY);
                                                if(_loc8_)
                                                {
                                                   §§push(_loc5_.texture.height);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr153:
                                                      if(§§pop() + §§pop() <= _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc8_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr153);
                                                addr125:
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr162);
               }
               else
               {
                  §§push(_loc5_.pivotY);
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr108);
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr86);
         }
         return _loc3_ - _loc2_;
      }
   }
}
