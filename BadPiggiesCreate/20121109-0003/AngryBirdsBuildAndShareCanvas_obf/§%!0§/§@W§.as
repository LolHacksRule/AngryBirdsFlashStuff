package §%!0§
{
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   
   public class §@W§
   {
       
      
      private var § D§:Sprite;
      
      private var §-?§:§"!B§;
      
      private var §>!l§:Boolean;
      
      public function §@W§(param1:Sprite, param2:§"!B§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
         }
         while(true)
         {
            this.§ D§ = param1;
            while(!(_loc5_ && param1))
            {
               this.§-?§ = param2;
               while(_loc4_)
               {
                  this.§>!l§ = param3;
                  if(_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§ D§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§ D§);
               if(!(_loc2_ && this))
               {
                  continue loop0;
               }
            }
            addr62:
            return;
         }
      }
      
      public function § "@§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§+!I§ = null;
         var _loc7_:§7"#§ = null;
         if(_loc10_ || _loc2_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§+!§(this.§ "0§(param1));
         §§push(this.§;,§(_loc2_));
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§=7§(_loc2_));
         if(_loc10_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_)
         {
            §§push(-§§pop());
            if(!_loc11_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §7"#§(_loc6_.texture,this.§>!l§)).scaleX = _loc6_.scale;
            if(!_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§ D§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     while(!(_loc11_ && this))
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(!_loc11_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           while(!(_loc11_ && this))
                           {
                              §§push(_loc5_);
                              if(!_loc11_)
                              {
                                 §§push(int(§§pop() + _loc6_.width));
                              }
                              _loc5_ = §§pop();
                              if(!_loc11_)
                              {
                                 if(_loc10_)
                                 {
                                    while(false)
                                    {
                                       §§goto(addr119);
                                    }
                                    continue loop0;
                                    addr117:
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr117);
         }
         if(!_loc11_)
         {
            this.§ D§.flatten();
         }
      }
      
      private function § "0§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(_loc5_ || param1)
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
                  while(_loc4_)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(_loc5_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§push(0);
                                       if(!(_loc4_ && this))
                                       {
                                          if(!(_loc4_ && _loc3_))
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
                                          }
                                          §§push(§§pop() % §§pop());
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr121:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr122:
                                                addr108:
                                                addr109:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr101:
                                                   while(true)
                                                   {
                                                      §§push(10);
                                                   }
                                                }
                                                param1 = §§pop();
                                                while(!_loc5_)
                                                {
                                                   §§goto(addr122);
                                                   §§goto(addr108);
                                                }
                                                _loc2_.push(_loc3_);
                                                continue loop2;
                                             }
                                          }
                                          addr120:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr108);
                                                }
                                                else
                                                {
                                                   §§goto(addr121);
                                                }
                                             }
                                             addr106:
                                          }
                                          else
                                          {
                                             §§goto(addr120);
                                          }
                                          §§goto(addr121);
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr106);
                           }
                           addr35:
                        }
                        §§goto(addr109);
                     }
                  }
                  return _loc2_;
               }
            }
            §§goto(addr35);
         }
         §§goto(addr138);
      }
      
      private function §+!§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§+!I§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-?§.getFrame(_loc3_);
            if(_loc8_ || _loc2_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §;,§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§+!I§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §=7§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§+!I§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc8_ || _loc2_)
            {
               if(!_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  loop1:
                  while(!_loc9_)
                  {
                     §§push(-§§pop());
                     if(_loc8_ || _loc3_)
                     {
                        §§push(_loc2_);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc8_ || this)
                              {
                                 if(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc5_.pivotY);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(-§§pop());
                                          addr195:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop6:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr197:
                                                loop3:
                                                while(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_.pivotY);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§push(-§§pop());
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc5_.texture.height);
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     addr80:
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr136:
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               addr138:
                                                               §§push(int(§§pop()));
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr157:
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr166:
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        addr216:
                                                                        addr215:
                                                                        §§push(int(-§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           break loop3;
                                                                        }
                                                                     }
                                                                     addr202:
                                                                     §§push(§§pop() + _loc5_.height);
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr80);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   §§push(int(§§pop()));
                                                   break loop1;
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                       }
                                    }
                                    addr192:
                                 }
                                 addr209:
                                 §§goto(addr166);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr45);
                        }
                     }
                     §§goto(addr195);
                  }
                  while(!_loc8_)
                  {
                     §§goto(addr216);
                     §§goto(addr205);
                  }
                  _loc3_ = §§pop();
                  §§goto(addr209);
               }
               §§goto(addr212);
            }
            §§goto(addr192);
         }
         return _loc3_ - _loc2_;
      }
   }
}
