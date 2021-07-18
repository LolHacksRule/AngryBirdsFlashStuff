package §_-V7§
{
   import flash.utils.Dictionary;
   
   public class §_-md§ extends §_-rJ§
   {
       
      
      protected var §_-3D§:Dictionary;
      
      protected var §_-sq§:Dictionary;
      
      protected var §_-9Z§:Object = null;
      
      protected var §_-6C§:Dictionary;
      
      protected var §_-CQ§:Dictionary;
      
      public function §_-md§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§_-CQ§ = new Dictionary();
            if(_loc2_ || _loc1_)
            {
               addr39:
               this.§_-3D§ = new Dictionary();
               if(!_loc1_)
               {
                  this.§_-sq§ = new Dictionary();
                  if(!_loc1_)
                  {
                     addr51:
                     this.§_-6C§ = new Dictionary();
                     if(!(_loc1_ && this))
                     {
                        addr69:
                        super();
                     }
                  }
                  return;
               }
               §§goto(addr69);
            }
            §§goto(addr51);
         }
         §§goto(addr39);
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§_-9Z§[param1] = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-9Z§ = param1;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-3D§[param1] = param2;
            if(_loc4_)
            {
               addr29:
               this.§_-6C§["dest." + param1] = param3;
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-CQ§[param1] = param2;
            if(_loc4_)
            {
               this.§_-6C§["source." + param1] = param3;
            }
         }
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-md§();
      }
      
      private function §_-Kh§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(!_loc6_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc8_:Vector.<Number> = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = null;
         §§push(1 - param1);
         if(!(_loc19_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§_-9Z§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-CQ§;
         var _loc7_:Dictionary = this.§_-sq§;
         for(_loc14_ in _loc4_)
         {
            if(_loc18_)
            {
               _loc6_ = _loc5_[_loc14_];
               if(_loc18_)
               {
                  §§push(param1);
                  §§push(1);
                  if(_loc18_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc19_ && this))
                     {
                        §§push(!§§pop());
                        if(_loc18_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              addr104:
                              §§pop();
                              §§push((_loc8_ = this.§_-sq§[_loc14_] as Vector.<Number>) == null);
                              if(_loc18_)
                              {
                                 §§push(!§§pop());
                              }
                           }
                           if(!§§pop())
                           {
                              _loc3_[_loc14_] = _loc6_ * _loc2_ + _loc4_[_loc14_] * param1;
                              continue;
                           }
                           if((_loc9_ = _loc8_.length) == 1)
                           {
                              _loc3_[_loc14_] = _loc6_ + param1 * (2 * _loc2_ * (_loc8_[0] - _loc6_) + param1 * (_loc4_[_loc14_] - _loc6_));
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc18_)
                              {
                                 §§push(_loc9_);
                                 if(_loc18_ || _loc3_)
                                 {
                                    addr180:
                                    §§push(uint(§§pop() * §§pop() >> 0));
                                    if(!_loc19_)
                                    {
                                       _loc10_ = §§pop();
                                       §§push(param1);
                                       §§push(_loc10_);
                                       if(_loc18_ || _loc3_)
                                       {
                                          addr194:
                                          §§push(§§pop() - §§pop() * (1 / _loc9_));
                                          §§push(_loc9_);
                                       }
                                       _loc11_ = §§pop() * §§pop();
                                       if(_loc18_ || _loc2_)
                                       {
                                          §§push(_loc10_);
                                          if(_loc18_ || _loc2_)
                                          {
                                             addr218:
                                             if(§§pop() == 0)
                                             {
                                                addr222:
                                                _loc12_ = Number(_loc6_);
                                                if(!(_loc19_ && _loc3_))
                                                {
                                                   addr230:
                                                   _loc13_ = Number((_loc8_[0] + _loc8_[1]) / 2);
                                                }
                                             }
                                             else
                                             {
                                                addr243:
                                                if(_loc10_ == _loc9_ - 1)
                                                {
                                                   if(!(_loc18_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   _loc12_ = Number((_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2);
                                                   if(_loc18_)
                                                   {
                                                      §§push(Number(_loc4_[_loc14_]));
                                                      if(!(_loc19_ && _loc2_))
                                                      {
                                                         _loc13_ = §§pop();
                                                         addr309:
                                                         _loc3_[_loc14_] = _loc12_ + _loc11_ * (2 * (1 - _loc11_) * (_loc8_[_loc10_] - _loc12_) + _loc11_ * (_loc13_ - _loc12_));
                                                         if(!_loc19_)
                                                         {
                                                            addr335:
                                                         }
                                                         continue;
                                                         addr279:
                                                      }
                                                      else
                                                      {
                                                         addr293:
                                                         _loc12_ = §§pop();
                                                         if(_loc19_)
                                                         {
                                                            continue;
                                                         }
                                                         addr296:
                                                         §§push(Number((_loc8_[_loc10_] + _loc8_[_loc10_ + 1]) / 2));
                                                      }
                                                   }
                                                   §§goto(addr309);
                                                }
                                                else
                                                {
                                                   §§push(Number((_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2));
                                                   if(!_loc19_)
                                                   {
                                                      §§goto(addr293);
                                                   }
                                                }
                                                _loc13_ = §§pop();
                                             }
                                             §§goto(addr309);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr335);
                        }
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr180);
               }
               §§goto(addr279);
            }
            §§goto(addr296);
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc1_:String = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:* = uint(0);
         var _loc8_:* = uint(0);
         var _loc2_:Object = this.§_-9Z§;
         var _loc3_:Dictionary = this.§_-CQ§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-sq§;
         var _loc9_:Dictionary = this.§_-6C§;
         var _loc10_:* = 0;
         var _loc11_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(!_loc12_)
            {
               if(!§§pop())
               {
                  if(_loc13_ || _loc3_)
                  {
                     if(!_loc12_)
                     {
                        if(!_loc12_)
                        {
                           §§push(0);
                           if(!(_loc12_ && this))
                           {
                              _loc10_ = §§pop();
                              if(_loc13_)
                              {
                                 _loc11_ = _loc4_;
                                 if(_loc13_ || _loc3_)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc11_,_loc10_));
                                       if(_loc13_ || _loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                addr226:
                                                if(!_loc12_)
                                                {
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      addr238:
                                                      _loc10_ = 0;
                                                      addr237:
                                                      if(!(_loc12_ && this))
                                                      {
                                                         addr246:
                                                         _loc11_ = _loc5_;
                                                         if(!_loc12_)
                                                         {
                                                            addr353:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc11_,_loc10_));
                                                               break loop0;
                                                            }
                                                            addr353:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(uint((_loc6_ = _loc5_[_loc1_] as Vector.<Number>).length));
                                                            if(_loc13_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(uint(0));
                                                                  if(_loc13_ || _loc1_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     if(_loc13_)
                                                                     {
                                                                        addr287:
                                                                        loop5:
                                                                        do
                                                                        {
                                                                           §§push(_loc8_);
                                                                           loop6:
                                                                           for(; §§pop() < _loc7_; continue loop5)
                                                                           {
                                                                              if(_loc9_["cp." + _loc1_ + "." + _loc8_])
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr318:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(uint(§§pop() + 1));
                                                                                       if(!(_loc13_ || _loc2_))
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(_loc12_ && _loc1_)
                                                                                          {
                                                                                             break loop6;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    addr326:
                                                                                 }
                                                                                 §§goto(addr335);
                                                                              }
                                                                           }
                                                                           §§goto(addr353);
                                                                        }
                                                                        while(_loc12_);
                                                                        
                                                                        addr350:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc6_[_loc8_] += _loc2_[_loc1_];
                                                                        if(_loc13_ || _loc1_)
                                                                        {
                                                                           §§goto(addr318);
                                                                        }
                                                                        §§goto(addr350);
                                                                     }
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         addr258:
                                                      }
                                                      addr356:
                                                   }
                                                   return;
                                                }
                                                §§goto(addr246);
                                             }
                                             addr355:
                                             §§goto(addr356);
                                          }
                                          else
                                          {
                                             _loc1_ = §§nextname(_loc10_,_loc11_);
                                             if(!(_loc12_ && _loc1_))
                                             {
                                                if(_loc3_[_loc1_] == undefined)
                                                {
                                                   if(_loc12_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc3_[_loc1_] = _loc2_[_loc1_];
                                                      if(_loc12_ && _loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc9_["dest." + _loc1_])
                                                {
                                                   if(_loc13_)
                                                   {
                                                      _loc4_[_loc1_] += _loc2_[_loc1_];
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr356);
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr226);
               }
               else
               {
                  _loc1_ = §§nextname(_loc10_,_loc11_);
                  if(!(_loc12_ && _loc2_))
                  {
                     if(_loc4_[_loc1_] == undefined)
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           _loc4_[_loc1_] = _loc2_[_loc1_];
                           if(_loc13_ || this)
                           {
                           }
                           addr98:
                           _loc3_[_loc1_] += _loc2_[_loc1_];
                           continue;
                        }
                     }
                     if(!_loc9_["source." + _loc1_])
                     {
                        continue;
                     }
                     if(!_loc13_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr98);
               }
            }
            break;
         }
         while(§§pop())
         {
            _loc1_ = §§nextname(_loc10_,_loc11_);
            §§goto(addr258);
            §§goto(addr353);
         }
         §§goto(addr355);
      }
      
      public function §_-yi§(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Vector.<Number>;
         if((_loc4_ = this.§_-sq§[param1] as Vector.<Number>) == null)
         {
            if(_loc6_)
            {
               this.§_-sq§[param1] = _loc4_ = new Vector.<Number>();
               §§goto(addr49);
            }
            §§goto(addr59);
         }
         addr49:
         _loc4_.push(param2);
         if(!(_loc7_ && param1))
         {
            this.§_-6C§["cp." + param1 + "." + _loc4_.length] = param3;
            addr59:
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§_-9Z§[param1];
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-md§ = param1 as §_-md§;
         if(_loc3_ || _loc3_)
         {
            this.§_-9Z§ = _loc2_.§_-9Z§;
            if(_loc3_)
            {
               this.§_-Kh§(this.§_-CQ§,_loc2_.§_-CQ§);
               if(!(_loc4_ && _loc2_))
               {
                  addr61:
                  this.§_-Kh§(this.§_-3D§,_loc2_.§_-3D§);
                  if(_loc3_)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr89);
               }
            }
            addr69:
            this.§_-Kh§(this.§_-sq§,_loc2_.§_-sq§);
            if(!(_loc4_ && this))
            {
               addr89:
               this.§_-Kh§(this.§_-6C§,_loc2_.§_-6C§);
            }
            return;
         }
         §§goto(addr61);
      }
   }
}
