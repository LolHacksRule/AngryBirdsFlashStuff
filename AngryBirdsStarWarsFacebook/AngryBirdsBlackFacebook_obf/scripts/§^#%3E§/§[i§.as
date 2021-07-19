package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§>"G§;
   import flash.geom.Rectangle;
   
   public class §[i§
   {
       
      
      private var §%G§:Sprite;
      
      private var §'q§:§>"G§;
      
      private var §8!F§:Boolean;
      
      public function §[i§(param1:Sprite, param2:§>"G§, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§%G§ = param1;
            do
            {
               this.§'q§ = param2;
               continue loop0;
            }
            while(_loc4_ && this);
            
            return;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§%G§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§%G§);
               if(_loc2_ || _loc1_)
               {
                  continue loop0;
               }
            }
            addr58:
            return;
         }
      }
      
      public function §"!T§(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§#"t§ = null;
         if(!_loc9_)
         {
            this.clear();
         }
         var _loc2_:Vector.<DisplayObject> = this.§>#%§(this.§&""§(param1));
         §§push(this.getWidth(_loc2_));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getHeight(_loc2_));
         if(!(_loc9_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_)
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
            if(!(_loc9_ && _loc2_))
            {
               this.§%G§.addChild(_loc6_);
               while(true)
               {
                  _loc6_.x = _loc5_;
                  while(_loc10_ || this)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(-_loc4_);
                        if(_loc10_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().y = §§pop();
                        do
                        {
                           §§push(_loc5_);
                           if(!(_loc9_ && this))
                           {
                              §§push(int(§§pop() + _loc6_.width));
                           }
                           _loc5_ = §§pop();
                        }
                        while(_loc9_);
                        
                        if(_loc9_ && _loc2_)
                        {
                           break;
                           addr113:
                        }
                        while(false)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr113);
         }
         if(_loc10_ || param1)
         {
            this.§%G§.flatten();
         }
      }
      
      private function §&""§(param1:int) : Vector.<int>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         if(!(_loc4_ && _loc3_))
         {
            if(param1 <= 0)
            {
               if(_loc5_)
               {
                  _loc2_.push(0);
                  addr134:
                  loop10:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop11:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           loop5:
                           while(true)
                           {
                              _loc2_.push(_loc3_);
                              addr82:
                              addr89:
                              while(!(_loc5_ || param1))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr92:
                                    while(true)
                                    {
                                       §§push(10);
                                       addr93:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc5_)
                                             {
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      param1 = §§pop();
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                addr99:
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() % §§pop());
                                             }
                                             addr112:
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(0);
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue loop11;
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop10;
                                             }
                                             §§goto(addr82);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr112);
                                                §§push(10);
                                             }
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr99);
                                 §§goto(addr89);
                              }
                           }
                        }
                        return _loc2_;
                     }
                  }
                  addr134:
               }
               §§goto(addr134);
            }
            §§goto(addr89);
         }
         §§goto(addr134);
      }
      
      private function §>#%§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§'q§.getFrame(_loc3_)).pivotX = 0;
            if(_loc8_)
            {
               _loc4_.pivotY = 0;
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function getWidth(param1:Vector.<DisplayObject>) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:DisplayObject = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(!(_loc7_ && param1))
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
      
      private function getHeight(param1:Vector.<DisplayObject>) : int
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         loop0:
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§@"&§;
            if(!(_loc9_ && this))
            {
               if(!_loc4_)
               {
                  if(_loc6_.top < _loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(int(_loc6_.top));
                           while(!_loc9_)
                           {
                              _loc2_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    while(true)
                                    {
                                       if(_loc6_.bottom > _loc3_)
                                       {
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                    addr90:
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    if(false)
                                    {
                                       addr94:
                                    }
                                    continue loop0;
                                    addr53:
                                 }
                                 else
                                 {
                                    addr127:
                                 }
                                 addr130:
                                 §§push(int(_loc6_.top));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    break loop1;
                                 }
                              }
                              §§goto(addr94);
                           }
                           while(!_loc10_)
                           {
                              §§goto(addr130);
                              break loop1;
                           }
                           _loc3_ = §§pop();
                           §§goto(addr124);
                           addr111:
                           addr121:
                        }
                        break;
                        if(_loc9_ && _loc3_)
                        {
                           continue;
                        }
                        §§push(int(_loc6_.bottom));
                        if(_loc9_)
                        {
                           §§goto(addr111);
                        }
                        _loc3_ = §§pop();
                        §§goto(addr90);
                     }
                     while(true)
                     {
                        §§goto(addr121);
                     }
                     addr141:
                  }
                  §§goto(addr53);
               }
               §§goto(addr127);
            }
            §§goto(addr141);
         }
         return _loc3_ - _loc2_;
      }
   }
}
