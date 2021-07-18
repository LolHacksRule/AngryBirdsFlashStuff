package §9N§
{
   import §4W§.§2f§;
   import §4W§.§>c§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   
   public class §-!P§
   {
       
      
      private var §9!A§:Sprite;
      
      private var §7P§:§2f§;
      
      private var §3L§:Boolean;
      
      public function §-!P§(param1:Sprite, param2:§2f§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
         }
         while(true)
         {
            this.§9!A§ = param1;
            while(!_loc4_)
            {
               this.§7P§ = param2;
               while(!_loc4_)
               {
                  this.§3L§ = param3;
                  if(!_loc4_)
                  {
                     return;
                  }
               }
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
            §§push(this.§9!A§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§9!A§);
               if(_loc2_)
               {
                  continue loop0;
               }
            }
            addr53:
            return;
         }
      }
      
      public function §5!?§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§>c§ = null;
         var _loc7_:§>?§ = null;
         if(_loc10_ || this)
         {
            this.clear();
         }
         var _loc2_:Array = this.§6>§(this.§%'§(param1));
         §§push(this.§7!A§(_loc2_));
         if(_loc10_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§]$§(_loc2_));
         if(!(_loc11_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc11_)
         {
            §§push(-§§pop());
            if(_loc10_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §>?§(_loc6_.texture,this.§3L§)).scaleX = _loc6_.scale;
            if(_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               while(true)
               {
                  this.§9!A§.addChild(_loc7_);
                  loop2:
                  while(_loc10_)
                  {
                     _loc7_.x = _loc5_;
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(_loc10_ || _loc2_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           do
                           {
                              §§push(_loc5_);
                              if(!_loc11_)
                              {
                                 §§push(int(§§pop() + _loc6_.width));
                              }
                              _loc5_ = §§pop();
                           }
                           while(!(_loc10_ || this));
                           
                           if(!_loc10_)
                           {
                              break;
                           }
                           if(_loc10_)
                           {
                              while(false)
                              {
                                 continue loop4;
                              }
                              continue loop0;
                              addr129:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr129);
         }
         if(!_loc11_)
         {
            this.§9!A§.flatten();
         }
      }
      
      private function §%'§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!(_loc4_ && this))
         {
            if(param1 <= 0)
            {
               if(!_loc4_)
               {
                  addr138:
                  _loc2_.push(0);
               }
               loop0:
               while(true)
               {
                  _loc2_.reverse();
                  loop1:
                  while(true)
                  {
                     if(_loc5_ || this)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              _loc2_.push(_loc3_);
                              while(true)
                              {
                                 addr35:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc5_ || this)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             addr118:
                                             §§push(param1);
                                             §§push(10);
                                             while(true)
                                             {
                                                §§push(§§pop() % §§pop());
                                                addr120:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr122:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr89:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(10);
                                                         }
                                                      }
                                                      addr107:
                                                      §§push(int(§§pop()));
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             addr119:
                                          }
                                          while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_ && this)
                                                {
                                                   §§goto(addr120);
                                                }
                                                §§goto(addr107);
                                             }
                                             else
                                             {
                                                §§goto(addr119);
                                             }
                                          }
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr89);
                                 }
                              }
                              addr86:
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr86);
                  }
                  return _loc2_;
               }
            }
            §§goto(addr35);
         }
         §§goto(addr138);
      }
      
      private function §6>§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§>c§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§7P§.getFrame(_loc3_);
            if(!(_loc8_ && _loc3_))
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §7!A§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>c§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc7_ || this)
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
      
      private function §]$§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§>c§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(_loc8_ || param1)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(true)
                  {
                     §§push(-§§pop());
                     addr157:
                     while(true)
                     {
                        §§push(_loc2_);
                        addr158:
                        loop3:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc5_.pivotY);
                                 loop5:
                                 while(_loc8_)
                                 {
                                    §§push(-§§pop());
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr165:
                                       while(_loc8_ || param1)
                                       {
                                          if(_loc8_)
                                          {
                                             _loc2_ = §§pop();
                                             addr200:
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      addr45:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.pivotY);
                                                         if(!_loc9_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr120:
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            continue loop8;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr177:
                                                }
                                                else
                                                {
                                                   addr197:
                                                   §§push(_loc5_.pivotY);
                                                }
                                             }
                                             while(true)
                                             {
                                                addr201:
                                                _loc2_ = int(§§pop());
                                                §§goto(addr212);
                                                break loop3;
                                             }
                                             addr200:
                                          }
                                          §§goto(addr200);
                                          §§push(-§§pop());
                                       }
                                       addr191:
                                       _loc3_ = §§pop();
                                       §§goto(addr192);
                                    }
                                 }
                                 break loop3;
                              }
                           }
                           §§goto(addr45);
                        }
                        addr183:
                        if(!(_loc9_ && this))
                        {
                           §§goto(addr191);
                           §§push(int(§§pop()));
                        }
                        §§goto(addr200);
                     }
                  }
               }
               §§goto(addr197);
            }
            §§goto(addr177);
         }
         return _loc3_ - _loc2_;
      }
   }
}
