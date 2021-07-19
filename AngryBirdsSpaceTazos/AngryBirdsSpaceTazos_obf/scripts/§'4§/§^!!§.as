package §'4§
{
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import flash.geom.Rectangle;
   
   public class §^!!§
   {
       
      
      private var §]!$§:Sprite;
      
      private var §!!X§:§#r§;
      
      private var §4!z§:Boolean;
      
      public function §^!!§(param1:Sprite, param2:§#r§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§]!$§ = param1;
               while(true)
               {
                  this.§!!X§ = param2;
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            this.§4!z§ = param3;
            if(!(_loc5_ && param2))
            {
               if(_loc4_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr53:
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§]!$§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§]!$§);
               if(_loc1_ || this)
               {
                  continue loop0;
               }
            }
            addr62:
            return;
         }
      }
      
      public function §`S§(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§`y§ = null;
         if(_loc10_)
         {
            this.clear();
         }
         var _loc2_:Vector.<DisplayObject> = this.§="2§(this.§&"5§(param1));
         §§push(this.getWidth(_loc2_));
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getHeight(_loc2_));
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc10_)
         {
            §§push(-§§pop());
            if(!(_loc9_ && _loc2_))
            {
               §§push(§§pop() / 2);
            }
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         for each(_loc6_ in _loc2_)
         {
            if(!_loc9_)
            {
               this.§]!$§.addChild(_loc6_);
               while(true)
               {
                  _loc6_.x = _loc5_;
                  addr134:
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  §§push(_loc5_);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(int(§§pop() + _loc6_.width));
                  }
                  _loc5_ = §§pop();
                  if(!(_loc9_ && _loc3_))
                  {
                     if(false)
                     {
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(-_loc4_);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().y = §§pop();
                        }
                        addr113:
                     }
                     continue loop0;
                  }
                  while(!(_loc9_ && _loc3_))
                  {
                     §§goto(addr134);
                     §§goto(addr141);
                  }
                  addr141:
                  while(true)
                  {
                     §§goto(addr113);
                     §§goto(addr127);
                  }
                  addr127:
                  addr146:
               }
            }
            §§goto(addr146);
         }
         if(!_loc9_)
         {
            this.§]!$§.flatten();
         }
      }
      
      private function §&"5§(param1:int) : Vector.<int>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         if(!_loc4_)
         {
            if(param1 <= 0)
            {
               if(_loc5_)
               {
                  _loc2_.push(0);
                  addr134:
                  loop9:
                  while(true)
                  {
                     _loc2_.reverse();
                     loop10:
                     while(true)
                     {
                        if(_loc4_ && _loc3_)
                        {
                           loop5:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 addr86:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(0);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      addr89:
                                                      while(true)
                                                      {
                                                         §§push(10);
                                                      }
                                                   }
                                                   addr115:
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(10);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() % §§pop());
                                                         addr113:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr114:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               §§goto(addr115);
                                                            }
                                                         }
                                                      }
                                                      addr112:
                                                   }
                                                   §§goto(addr114);
                                                }
                                                §§goto(addr114);
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr112);
                                                }
                                                §§goto(addr113);
                                             }
                                             addr96:
                                             param1 = §§pop();
                                             while(true)
                                             {
                                                _loc2_.push(_loc3_);
                                                continue loop5;
                                             }
                                             continue;
                                             addr97:
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr96);
                                 }
                                 return _loc2_;
                                 addr79:
                                 addr33:
                              }
                              §§goto(addr97);
                           }
                        }
                        §§goto(addr79);
                     }
                  }
                  addr134:
               }
               §§goto(addr134);
            }
            §§goto(addr33);
         }
         §§goto(addr134);
      }
      
      private function §="2§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§!!X§.getFrame(_loc3_);
            if(_loc8_ || _loc3_)
            {
               _loc2_.push(_loc4_);
            }
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
            if(_loc6_ || param1)
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
      
      private function getHeight(param1:Vector.<DisplayObject>) : int
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§0!L§;
            if(!(_loc9_ && _loc3_))
            {
               if(!_loc4_)
               {
                  if(_loc6_.top < _loc2_)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        addr112:
                        §§push(int(_loc6_.top));
                        while(true)
                        {
                           _loc2_ = §§pop();
                        }
                        addr115:
                     }
                     while(true)
                     {
                     }
                     addr116:
                  }
                  for(; _loc6_.bottom > _loc3_; §§goto(addr116))
                  {
                     if(_loc10_)
                     {
                        if(_loc10_ || _loc2_)
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(int(_loc6_.bottom));
                              if(_loc10_)
                              {
                                 if(_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    addr92:
                                    if(_loc10_)
                                    {
                                       if(_loc10_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(int(_loc6_.bottom));
                                             addr121:
                                             while(!_loc10_)
                                             {
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop4;
                                                }
                                                continue loop4;
                                             }
                                             addr124:
                                             _loc3_ = §§pop();
                                          }
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr121);
                              }
                              else
                              {
                                 §§goto(addr115);
                              }
                           }
                           else
                           {
                              addr127:
                              §§push(int(_loc6_.top));
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr92);
                  }
                  continue;
               }
               §§goto(addr127);
            }
            §§goto(addr112);
         }
         return _loc3_ - _loc2_;
      }
   }
}
