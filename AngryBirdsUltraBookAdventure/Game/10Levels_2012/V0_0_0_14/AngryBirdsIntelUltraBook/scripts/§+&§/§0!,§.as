package §+&§
{
   import §,6§.§5z§;
   import §,6§.§^!>§;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   
   public class §0!,§
   {
       
      
      private var §8!9§:Sprite;
      
      private var §!!j§:§^!>§;
      
      private var §^#§:Boolean;
      
      public function §0!,§(param1:Sprite, param2:§^!>§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            while(true)
            {
               this.§8!9§ = param1;
               while(_loc5_)
               {
                  this.§!!j§ = param2;
                  while(_loc5_)
                  {
                     this.§^#§ = param3;
                     if(!_loc4_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§8!9§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§8!9§);
               if(!_loc1_)
               {
                  continue loop0;
               }
            }
            addr48:
            return;
         }
      }
      
      public function §[R§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§5z§ = null;
         var _loc7_:§;!U§ = null;
         if(_loc10_ || _loc2_)
         {
            this.clear();
         }
         var _loc2_:Array = this.§4b§(this.§0y§(param1));
         §§push(this.§9^§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§+!k§(_loc2_));
         if(!(_loc11_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!(_loc11_ && param1))
         {
            §§push(-§§pop());
            if(!_loc11_)
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §;!U§(_loc6_.texture,this.§^#§)).scaleX = _loc6_.scale;
            if(_loc10_ || this)
            {
               _loc7_.scaleY = _loc6_.scale;
               loop1:
               while(true)
               {
                  this.§8!9§.addChild(_loc7_);
                  while(true)
                  {
                     _loc7_.x = _loc5_;
                     loop3:
                     while(true)
                     {
                        addr139:
                        while(true)
                        {
                           §§push(_loc7_);
                           §§push(-_loc4_);
                           if(_loc10_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr139);
            }
         }
         if(!(_loc11_ && _loc3_))
         {
            this.§8!9§.flatten();
         }
      }
      
      private function §0y§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(!_loc4_)
         {
            if(param1 <= 0)
            {
               if(!_loc4_)
               {
                  _loc2_.push(0);
                  addr141:
                  loop11:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop12:
                     while(true)
                     {
                        if(!(_loc4_ && this))
                        {
                           if(!_loc5_)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param1);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(10);
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!(_loc4_ && param1))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(10);
                                                   addr129:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() % §§pop());
                                                   }
                                                }
                                             }
                                             param1 = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                _loc2_.push(_loc3_);
                                                addr74:
                                                addr30:
                                                while(!(_loc5_ || _loc3_))
                                                {
                                                   continue loop10;
                                                }
                                                addr81:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(0);
                                                      if(!_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                      }
                                                      §§push(param1);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr128);
                                                   §§goto(addr81);
                                                }
                                                §§goto(addr69);
                                             }
                                             addr96:
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                              }
                           }
                           addr69:
                           return _loc2_;
                        }
                        §§goto(addr74);
                     }
                  }
                  addr141:
               }
               §§goto(addr141);
            }
            §§goto(addr30);
         }
         §§goto(addr141);
      }
      
      private function §4b§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§5z§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§!!j§.getFrame(_loc3_);
            if(!_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §9^§(param1:Array) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§5z§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc6_ || param1)
            {
               §§push(_loc2_);
               if(!(_loc7_ && this))
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §+!k§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§5z§ = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            if(_loc8_)
            {
               if(_loc4_)
               {
                  if(!_loc9_)
                  {
                     addr204:
                     §§push(int(-_loc5_.pivotY));
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                     addr206:
                  }
                  while(true)
                  {
                     addr190:
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        break;
                     }
                     §§goto(addr206);
                  }
                  addr207:
                  §§push(§§pop() + _loc5_.height);
               }
               else
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
                        loop3:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc5_.pivotY);
                                 if(!_loc9_)
                                 {
                                    §§push(-§§pop());
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    addr168:
                                 }
                                 loop6:
                                 while(_loc8_ || this)
                                 {
                                    _loc2_ = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       addr40:
                                       while(true)
                                       {
                                          §§push(_loc5_.pivotY);
                                          if(_loc9_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc8_ || _loc2_)
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                if(_loc9_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(_loc5_.texture.height);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc9_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc8_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(_loc5_.pivotY);
                                                      if(_loc8_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr125:
                                                      if(!_loc8_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         continue loop7;
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   addr195:
                                                   §§push(int(§§pop()));
                                                   break loop6;
                                                }
                                                addr116:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   §§goto(addr125);
                                                   §§push(int(§§pop()));
                                                }
                                                §§goto(addr195);
                                             }
                                             else
                                             {
                                                addr110:
                                                if(_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc5_.height);
                                                }
                                                else
                                                {
                                                   §§goto(addr168);
                                                }
                                             }
                                             §§goto(addr116);
                                          }
                                          else
                                          {
                                             §§goto(addr204);
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                 }
                                 _loc3_ = §§pop();
                                 addr155:
                                 continue loop0;
                              }
                           }
                           §§goto(addr40);
                        }
                        if(_loc8_ || _loc3_)
                        {
                           if(_loc8_)
                           {
                              addr153:
                              if(true)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr207);
                           }
                        }
                        §§goto(addr155);
                     }
                  }
               }
               §§goto(addr195);
            }
            §§goto(addr153);
         }
         return _loc3_ - _loc2_;
      }
   }
}
