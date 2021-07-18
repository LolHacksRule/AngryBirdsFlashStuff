package §[x§
{
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   
   public class §'t§
   {
       
      
      private var §1-§:Sprite;
      
      private var §1q§:§?!C§;
      
      private var §&4§:Boolean;
      
      public function §'t§(param1:Sprite, param2:§?!C§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§1-§ = param1;
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            this.§1q§ = param2;
            do
            {
               this.§&4§ = param3;
            }
            while(!_loc5_);
            
            if(_loc5_)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§1-§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§1-§);
               if(_loc2_)
               {
                  §§pop().removeChildAt(0,true);
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §;7§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§1D§ = null;
         var _loc7_:§1!,§ = null;
         if(_loc10_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§;w§(this.§65§(param1));
         §§push(this.§5!E§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§^C§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc11_ && _loc2_))
         {
            §§push(-§§pop());
            if(!(_loc11_ && _loc3_))
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §1!,§(_loc6_.texture,this.§&4§)).scaleX = _loc6_.scale;
            if(!_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§1-§.addChild(_loc7_);
                  loop2:
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           loop5:
                           while(_loc10_)
                           {
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc10_)
                                 {
                                    §§push(int(§§pop() + _loc6_.width));
                                 }
                                 _loc5_ = §§pop();
                                 if(_loc10_)
                                 {
                                    if(!_loc11_)
                                    {
                                       if(_loc10_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr137);
         }
         if(!(_loc11_ && _loc2_))
         {
            this.§1-§.flatten();
         }
      }
      
      private function §65§(param1:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(_loc4_)
         {
            if(param1 <= 0)
            {
               if(!_loc5_)
               {
                  addr137:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  loop1:
                  while(true)
                  {
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(10);
                              addr89:
                              while(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(int(§§pop()));
                                    while(_loc4_)
                                    {
                                       param1 = §§pop();
                                       while(true)
                                       {
                                          _loc2_.push(_loc3_);
                                       }
                                    }
                                    continue loop2;
                                    addr110:
                                 }
                                 addr129:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    continue loop2;
                                 }
                              }
                              addr128:
                              while(true)
                              {
                                 §§goto(addr129);
                              }
                              if(_loc5_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(0);
                              if(_loc4_ || _loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr113);
                                 }
                                 §§push(param1);
                                 if(_loc5_ && this)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr128);
                                 §§push(10);
                              }
                              §§goto(addr89);
                           }
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  return _loc2_;
               }
            }
            while(true)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§goto(addr128);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr137);
      }
      
      private function §;w§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§1D§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§1q§.getFrame(_loc3_);
            if(!(_loc8_ && _loc3_))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §5!E§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§1D§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §^C§(param1:Array) : int
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§1D§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(!(_loc8_ && param1))
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(!_loc8_)
                  {
                     §§push(-§§pop());
                     loop1:
                     do
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(-_loc5_.pivotY);
                              loop3:
                              while(_loc9_ || param1)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc5_.pivotY);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(-§§pop());
                                    if(!_loc8_)
                                    {
                                       §§push(_loc5_.texture.height);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(_loc3_);
                                          if(!(_loc9_ || _loc2_))
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             continue loop0;
                                          }
                                          if(_loc9_ || this)
                                          {
                                             if(_loc8_ && _loc3_)
                                             {
                                                _loc2_ = -_loc5_.pivotY;
                                                §§push(_loc2_ + _loc5_.height);
                                             }
                                             else
                                             {
                                                addr161:
                                                addr159:
                                             }
                                             §§push(_loc5_.pivotY);
                                             if(!(_loc8_ && this))
                                             {
                                                break;
                                             }
                                             addr113:
                                             _loc3_ = §§pop();
                                             addr114:
                                             if(false)
                                             {
                                                addr116:
                                             }
                                             continue loop0;
                                             break loop3;
                                          }
                                          §§goto(addr114);
                                       }
                                       addr109:
                                       §§push(§§pop() + §§pop());
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 §§push(-§§pop());
                                 if(!_loc9_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr109);
                                 §§push(_loc5_.height);
                              }
                              _loc3_ = int(§§pop());
                              §§goto(addr116);
                           }
                           §§goto(addr46);
                        }
                     }
                     while(!_loc9_);
                     
                     §§goto(addr113);
                     §§push(int(§§pop()));
                  }
                  §§goto(addr161);
               }
               §§goto(addr159);
            }
            §§goto(addr113);
         }
         return _loc3_ - _loc2_;
      }
   }
}
