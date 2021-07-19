package §_-OJ§
{
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   
   public class §_-14§
   {
       
      
      private var §_-Cv§:Sprite;
      
      private var §_-5r§:§_-RO§;
      
      public function §_-14§(param1:Sprite, param2:§_-RO§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(_loc3_ || param1)
            {
               this.§_-Cv§ = param1;
               if(!(_loc4_ && param2))
               {
                  addr48:
                  this.§_-5r§ = param2;
               }
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
            §§push(this.§_-Cv§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§_-Cv§);
               if(!_loc1_)
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
      
      public function §_-Ot§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§_-Vr§ = null;
         var _loc7_:§_-19§ = null;
         if(_loc11_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§_-Sw§(this.§_-UK§(param1));
         §§push(this.§while§(_loc2_));
         if(!(_loc10_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§_-YY§(_loc2_));
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc11_)
         {
            §§push(-§§pop());
            if(_loc11_ || param1)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-19§(_loc6_.texture);
            if(!(_loc10_ && _loc3_))
            {
               this.§_-Cv§.addChild(_loc7_);
               if(_loc10_ && param1)
               {
                  continue;
               }
            }
            _loc7_.x = _loc5_;
            if(_loc11_ || this)
            {
               §§push(_loc7_);
               §§push(-_loc4_);
               if(_loc11_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().y = §§pop();
               if(!_loc10_)
               {
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     §§push(int(§§pop() + _loc6_.texture.width));
                  }
                  _loc5_ = §§pop();
               }
            }
         }
         if(!_loc10_)
         {
            this.§_-Cv§.flatten();
         }
      }
      
      private function §_-UK§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(_loc4_ || _loc2_)
         {
            if(param1 <= 0)
            {
               if(_loc4_ || _loc2_)
               {
                  _loc2_.push(0);
                  addr38:
               }
               §§goto(addr38);
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
                           if(!(_loc5_ && _loc2_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              §§push(10);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() % §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc4_ || _loc2_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc5_ && _loc2_)
                                       {
                                          §§goto(addr125);
                                       }
                                       §§push(param1);
                                       if(_loc4_)
                                       {
                                          §§push(10);
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          addr89:
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§goto(addr93);
                                    }
                                    continue loop1;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr89);
                           }
                           addr93:
                           param1 = §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                           §§goto(addr125);
                        }
                        addr125:
                        return _loc2_;
                     }
                  }
               }
            }
            _loc2_.reverse();
            addr125:
         }
         §§goto(addr38);
      }
      
      private function §_-Sw§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§_-Vr§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-5r§.getFrame(_loc3_);
            if(_loc7_ || _loc3_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §while§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§_-Vr§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(int(§§pop() + _loc3_.texture.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §_-YY§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§_-Vr§ = null;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(_loc4_)
            {
               _loc2_ = int(-_loc5_.pivotY);
               §§push(_loc2_ + _loc5_.texture.height);
               if(!_loc9_)
               {
                  _loc3_ = §§pop();
                  continue;
               }
            }
            else
            {
               §§push(_loc5_.pivotY);
               if(_loc8_)
               {
                  §§push(-§§pop());
                  if(!_loc9_)
                  {
                     §§push(_loc2_);
                     if(!(_loc9_ && param1))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc9_)
                           {
                              §§push(_loc5_.pivotY);
                              if(!_loc9_)
                              {
                                 §§push(int(-§§pop()));
                                 if(_loc8_ || this)
                                 {
                                    _loc2_ = §§pop();
                                    addr92:
                                    §§push(-_loc5_.pivotY);
                                    §§push(_loc5_.texture);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(§§pop().height);
                                       if(!_loc9_)
                                       {
                                          addr107:
                                          if(§§pop() + §§pop() <= _loc3_)
                                          {
                                             continue;
                                          }
                                          addr113:
                                          §§push(-_loc5_.pivotY);
                                          §§push(_loc5_.texture.height);
                                       }
                                       addr123:
                                       _loc3_ = §§pop() + §§pop();
                                       continue;
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr123);
               }
               §§goto(addr92);
            }
            §§goto(addr123);
         }
         return _loc3_ - _loc2_;
      }
   }
}
