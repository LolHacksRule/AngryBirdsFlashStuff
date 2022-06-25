package §6A§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §9K§.§!?§;
   import §9K§.§,z§;
   
   public class §-@§
   {
       
      
      private var §,!7§:Sprite;
      
      private var §>f§:§!?§;
      
      private var §4!B§:Boolean;
      
      public function §-@§(param1:Sprite, param2:§!?§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(_loc4_)
            {
               addr32:
               this.§,!7§ = param1;
               if(!_loc5_)
               {
                  this.§>f§ = param2;
                  if(_loc5_ && param3)
                  {
                  }
                  §§goto(addr50);
               }
               this.§4!B§ = param3;
            }
            addr50:
            return;
         }
         §§goto(addr32);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§,!7§);
            while(§§pop().numChildren > 0)
            {
               §§push(this.§,!7§);
               if(_loc1_ || this)
               {
                  §§pop().removeChildAt(0,true);
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §>!,§(param1:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:§,z§ = null;
         var _loc7_:§?T§ = null;
         if(!(_loc11_ && _loc2_))
         {
            this.clear();
         }
         var _loc2_:Array = this.§9!%§(this.§'!N§(param1));
         §§push(this.§&1§(_loc2_));
         if(_loc10_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.§'6§(_loc2_));
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(!_loc11_)
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
            (_loc7_ = new §?T§(_loc6_.texture,this.§4!B§)).scaleX = _loc6_.scale;
            if(_loc10_)
            {
               _loc7_.scaleY = _loc6_.scale;
               if(!(_loc11_ && this))
               {
                  this.§,!7§.addChild(_loc7_);
                  if(!(_loc10_ || param1))
                  {
                     continue;
                  }
               }
               _loc7_.x = _loc5_;
               if(_loc10_)
               {
                  §§push(_loc7_);
                  §§push(-_loc4_);
                  if(!_loc11_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().y = §§pop();
                  if(_loc10_)
                  {
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        §§push(int(§§pop() + _loc6_.width));
                     }
                     _loc5_ = §§pop();
                  }
               }
            }
         }
         if(!_loc11_)
         {
            this.§,!7§.flatten();
         }
      }
      
      private function §'!N§(param1:int) : Array
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:Array = [];
         if(!_loc4_)
         {
            if(param1 <= 0)
            {
               if(!_loc4_)
               {
                  _loc2_.push(0);
                  addr32:
               }
               §§goto(addr32);
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!_loc4_)
                           {
                              addr118:
                              _loc2_.reverse();
                           }
                           addr120:
                           return _loc2_;
                        }
                        §§push(param1);
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(10);
                        if(!_loc5_)
                        {
                           continue;
                        }
                        §§push(§§pop() % §§pop());
                        if(_loc5_ || _loc3_)
                        {
                           §§push(int(§§pop()));
                           if(_loc4_)
                           {
                              break;
                           }
                           _loc3_ = §§pop();
                           if(_loc4_ && this)
                           {
                              continue loop0;
                           }
                           §§push(param1);
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§push(10);
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           §§push(§§pop() / §§pop());
                        }
                        §§push(int(§§pop()));
                        if(_loc4_ && _loc3_)
                        {
                           break;
                        }
                        param1 = §§pop();
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr32);
      }
      
      private function §9!%§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:§,z§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§>f§.getFrame(_loc3_);
            if(!_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      private function §&1§(param1:Array) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§,z§ = null;
         var _loc2_:* = 0;
         for each(_loc3_ in param1)
         {
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(int(§§pop() + _loc3_.width));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §'6§(param1:Array) : int
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§,z§ = null;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            if(_loc4_)
            {
               if(_loc8_ || _loc3_)
               {
                  §§push(_loc5_.pivotY);
                  if(_loc8_)
                  {
                     _loc2_ = int(-§§pop());
                     if(!(_loc9_ && _loc2_))
                     {
                        addr60:
                        _loc3_ = _loc2_ + _loc5_.height;
                        if(_loc9_ && this)
                        {
                        }
                        continue;
                     }
                  }
                  else
                  {
                     addr121:
                     _loc2_ = §§pop();
                  }
                  addr134:
                  §§push(-_loc5_.pivotY);
                  if(_loc8_)
                  {
                     §§push(_loc5_.texture.height);
                     if(_loc8_)
                     {
                        addr144:
                        if(§§pop() + §§pop() <= _loc3_)
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           continue;
                        }
                        §§push(-_loc5_.pivotY);
                        §§push(_loc5_.height);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr60);
            }
            else
            {
               §§push(_loc5_.pivotY);
               if(!(_loc9_ && this))
               {
                  §§push(-§§pop());
                  §§push(_loc2_);
                  if(_loc8_ || param1)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc9_ && this)
                        {
                           continue;
                        }
                        §§push(_loc5_.pivotY);
                        if(!(_loc9_ && _loc3_))
                        {
                           §§goto(addr121);
                           §§push(int(-§§pop()));
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr144);
               }
            }
            §§goto(addr134);
         }
         return _loc3_ - _loc2_;
      }
   }
}
