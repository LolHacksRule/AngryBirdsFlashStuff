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
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§]2§ = param1;
               loop1:
               for(; _loc4_ || param2; while(!(_loc5_ && param3))
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
         §§goto(addr78);
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
               if(!(_loc2_ && _loc2_))
               {
                  continue loop0;
               }
            }
            addr52:
            return;
         }
      }
      
      public function §1u§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§#`§ = null;
         var _loc7_:§"<§ = null;
         if(!(_loc11_ && param1))
         {
            this.clear();
         }
         var _loc2_:Array = this.§9!f§(this.§ !b§(param1));
         §§push(this.§]k§(_loc2_));
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§%"#§(_loc2_));
         if(!(_loc11_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc11_ && this))
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
            (_loc7_ = new §"<§(_loc6_.texture,this.§7!W§)).scaleX = _loc6_.scale;
            if(_loc10_ || _loc3_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§]2§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     while(!_loc11_)
                     {
                        loop6:
                        while(!(_loc11_ && _loc3_))
                        {
                           §§push(_loc5_);
                           continue loop1;
                           if(!(_loc11_ && this))
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }
                           _loc5_ = §§pop();
                           if(!_loc11_)
                           {
                              addr135:
                              if(false)
                              {
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    §§push(-_loc4_);
                                    if(!(_loc11_ && param1))
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§pop().y = §§pop();
                                    continue loop6;
                                    §§goto(addr135);
                                 }
                                 addr137:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr137);
            }
         }
         if(!(_loc11_ && _loc3_))
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
                  addr122:
                  _loc2_.push(0);
               }
               while(true)
               {
                  _loc2_.reverse();
                  §§goto(addr63);
               }
               addr60:
            }
            while(true)
            {
               §§push(param1);
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc4_ || this)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    loop4:
                                    for(; _loc5_ && this; while(true)
                                    {
                                       param1 = §§pop();
                                       continue loop4;
                                    })
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(param1);
                                          addr73:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(10);
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      continue loop4;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() % §§pop());
                                                   }
                                                   addr108:
                                                }
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   continue loop5;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    _loc2_.push(_loc3_);
                                    continue;
                                 }
                                 §§goto(addr60);
                              }
                              addr63:
                              while(_loc5_)
                              {
                                 while(true)
                                 {
                                 }
                              }
                              return _loc2_;
                           }
                           addr107:
                           §§push(param1);
                           §§push(10);
                           §§goto(addr108);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr73);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr122);
      }
      
      private function §9!f§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§#`§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§ K§.getFrame(_loc3_);
            if(!_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §]k§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#`§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(_loc6_ || _loc2_)
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
         var _loc3_:int = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(_loc8_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(true)
                  {
                     §§push(-§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop4:
                              while(!(_loc9_ && this))
                              {
                                 §§push(_loc5_.pivotY);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                    addr187:
                                    addr206:
                                    addr194:
                                    while(_loc8_)
                                    {
                                       §§push(int(§§pop()));
                                       loop7:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr191:
                                          while(true)
                                          {
                                             addr40:
                                             while(true)
                                             {
                                                §§push(_loc5_.pivotY);
                                                if(_loc8_)
                                                {
                                                   continue loop5;
                                                }
                                                addr127:
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             §§push(-§§pop());
                                             if(_loc8_)
                                             {
                                                addr132:
                                                if(_loc9_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop() + _loc5_.height);
                                             }
                                             addr137:
                                             continue loop1;
                                          }
                                       }
                                    }
                                    addr205:
                                    addr207:
                                    _loc2_ = int(§§pop());
                                    _loc3_ = _loc2_ + _loc5_.height;
                                    break loop4;
                                 }
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr40);
                        }
                     }
                  }
               }
               §§goto(addr204);
            }
            §§goto(addr157);
         }
         return _loc3_ - _loc2_;
      }
   }
}
