package §<!<§
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §=U§.§;P§;
   import §=U§.§>?§;
   
   public class §-!U§
   {
       
      
      private var §>E§:Sprite;
      
      private var §-3§:§;P§;
      
      private var §%Z§:Boolean;
      
      public function §-!U§(param1:Sprite, param2:§;P§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            if(_loc4_ || this)
            {
               this.§>E§ = param1;
               if(_loc4_)
               {
                  this.§-3§ = param2;
                  if(_loc4_)
                  {
                     addr52:
                     this.§%Z§ = param3;
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§>E§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§>E§);
               if(!(_loc2_ && _loc2_))
               {
                  continue loop0;
               }
            }
            addr52:
            return;
         }
      }
      
      public function §>D§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§>?§ = null;
         var _loc7_:§7!J§ = null;
         if(_loc11_ || _loc2_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§4!X§(this.§`!=§(param1));
         §§push(this.§&<§(_loc2_));
         if(!(_loc10_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§=$§(_loc2_));
         if(!(_loc10_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc11_ || this)
         {
            §§push(-§§pop());
            if(_loc11_ || this)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §7!J§(_loc6_.texture,this.§%Z§)).scaleX = _loc6_.scale;
            if(_loc11_)
            {
               _loc7_.scaleY = _loc6_.scale;
               if(_loc11_ || param1)
               {
                  this.§>E§.addChild(_loc7_);
                  if(!(_loc10_ && this))
                  {
                     _loc7_.x = _loc5_;
                     if(_loc10_ && _loc3_)
                     {
                     }
                     addr176:
                     §§push(_loc5_);
                     if(_loc11_ || param1)
                     {
                        §§push(int(§§pop() + _loc6_.width));
                     }
                     _loc5_ = §§pop();
                  }
                  continue;
               }
               §§push(_loc7_);
               §§push(-_loc4_);
               if(!_loc10_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().y = §§pop();
               if(!(_loc11_ || this))
               {
                  continue;
               }
            }
            §§goto(addr176);
         }
         if(_loc11_)
         {
            this.§>E§.flatten();
         }
      }
      
      private function §`!=§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!(_loc4_ && _loc3_))
         {
            if(param1 <= 0)
            {
               if(!(_loc4_ && this))
               {
                  addr39:
                  _loc2_.push(0);
               }
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
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr135);
                        }
                        §§push(param1);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(10);
                           if(!_loc5_)
                           {
                              continue;
                           }
                           §§push(§§pop() % §§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(int(§§pop()));
                              if(_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(param1);
                                    if(!(_loc5_ || param1))
                                    {
                                       continue loop1;
                                    }
                                    addr93:
                                    §§push(10);
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    addr112:
                                    §§push(int(§§pop() / §§pop()));
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 break;
                              }
                              param1 = §§pop();
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr93);
                     }
                  }
               }
            }
            _loc2_.reverse();
            addr135:
            return _loc2_;
         }
         §§goto(addr39);
      }
      
      private function §4!X§(param1:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:§>?§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-3§.getFrame(_loc3_);
            if(!_loc8_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §&<§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>?§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §=$§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§>?§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(!(_loc9_ && param1))
            {
               if(_loc4_)
               {
                  §§push(_loc5_.pivotY);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(-§§pop());
                     if(_loc8_ || this)
                     {
                        _loc2_ = int(§§pop());
                        if(_loc8_ || this)
                        {
                           addr72:
                           §§push(_loc2_);
                           if(!(_loc9_ && _loc3_))
                           {
                              addr80:
                              §§push(§§pop() + _loc5_.height);
                              if(!(_loc9_ && _loc2_))
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       continue;
                                    }
                                    addr126:
                                    §§push(int(-_loc5_.pivotY));
                                    if(_loc8_ || this)
                                    {
                                       addr137:
                                       _loc2_ = §§pop();
                                       §§push(_loc5_.pivotY);
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr147:
                                          §§push(-§§pop());
                                          if(_loc8_ || param1)
                                          {
                                             §§push(_loc5_.texture.height);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc8_ || _loc3_)
                                                {
                                                   addr168:
                                                   if(§§pop() > _loc3_)
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         addr200:
                                                         §§push(-_loc5_.pivotY);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            addr197:
                                                            §§push(_loc5_.height);
                                                         }
                                                         _loc3_ = int(§§pop());
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr200);
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr137);
                              }
                           }
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr80);
               }
               else
               {
                  §§push(-_loc5_.pivotY);
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc9_ && param1))
                        {
                           §§goto(addr126);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr137);
                  }
               }
               §§goto(addr168);
            }
            §§goto(addr72);
         }
         return _loc3_ - _loc2_;
      }
   }
}
