package §3§
{
   import flash.utils.Dictionary;
   
   public class §0V§ extends §8Y§
   {
       
      
      protected var §;u§:Dictionary;
      
      protected var §`!N§:Dictionary;
      
      protected var §?!p§:Object = null;
      
      protected var §'!?§:Dictionary;
      
      protected var §%f§:Dictionary;
      
      public function §0V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§%f§ = new Dictionary();
            if(_loc1_)
            {
               this.§;u§ = new Dictionary();
               if(!_loc2_)
               {
                  addr55:
                  this.§`!N§ = new Dictionary();
                  if(!_loc2_)
                  {
                     this.§'!?§ = new Dictionary();
                     if(_loc1_ || _loc2_)
                     {
                        addr72:
                        super();
                     }
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr72);
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§?!p§[param1] = param2;
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!p§ = param1;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§;u§[param1] = param2;
            if(_loc5_)
            {
               this.§'!?§["dest." + param1] = param3;
            }
         }
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§%f§[param1] = param2;
            if(_loc4_)
            {
               this.§'!?§["source." + param1] = param3;
            }
         }
      }
      
      override protected function newInstance() : §8Y§
      {
         return new §0V§();
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(!(_loc6_ && param2))
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc8_:Vector.<Number> = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = null;
         §§push(1 - param1);
         if(!(_loc19_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§?!p§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§%f§;
         var _loc7_:Dictionary = this.§`!N§;
         for(_loc14_ in _loc4_)
         {
            if(_loc18_ || param1)
            {
               §§push(Number(_loc5_[_loc14_]));
               if(_loc18_)
               {
                  _loc6_ = §§pop();
                  if(!_loc19_)
                  {
                     §§push(param1);
                     if(_loc18_)
                     {
                        §§push(1);
                        if(!_loc19_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc19_ && param1))
                           {
                              §§push(!§§pop());
                              if(_loc18_ || _loc2_)
                              {
                                 addr114:
                                 if(§§pop())
                                 {
                                    addr116:
                                    §§pop();
                                    if(!_loc19_)
                                    {
                                       §§push((_loc8_ = this.§`!N§[_loc14_] as Vector.<Number>) == null);
                                       if(_loc18_ || param1)
                                       {
                                          addr143:
                                          if(§§pop())
                                          {
                                             _loc3_[_loc14_] = _loc6_ * _loc2_ + _loc4_[_loc14_] * param1;
                                             continue;
                                          }
                                          if(!(_loc19_ && param1))
                                          {
                                             if((_loc9_ = _loc8_.length) == 1)
                                             {
                                                if(!(_loc19_ && _loc3_))
                                                {
                                                   _loc3_[_loc14_] = _loc6_ + param1 * (2 * _loc2_ * (_loc8_[0] - _loc6_) + param1 * (_loc4_[_loc14_] - _loc6_));
                                                }
                                                else
                                                {
                                                   addr231:
                                                   §§push(param1);
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!(_loc19_ && _loc2_))
                                                      {
                                                         addr242:
                                                         §§push(§§pop() - §§pop() * (1 / _loc9_));
                                                         §§push(_loc9_);
                                                      }
                                                      _loc11_ = §§pop() * §§pop();
                                                      if(_loc19_)
                                                      {
                                                         continue;
                                                      }
                                                      addr253:
                                                      §§push(_loc10_);
                                                      if(_loc18_)
                                                      {
                                                         addr256:
                                                         if(§§pop() == 0)
                                                         {
                                                            addr259:
                                                            _loc12_ = _loc6_;
                                                            addr261:
                                                            §§push(Number((_loc8_[0] + _loc8_[1]) / 2));
                                                            if(_loc18_)
                                                            {
                                                               _loc13_ = §§pop();
                                                            }
                                                            else
                                                            {
                                                               addr326:
                                                               _loc12_ = §§pop();
                                                               addr339:
                                                               _loc13_ = Number((_loc8_[_loc10_] + _loc8_[_loc10_ + 1]) / 2);
                                                               if(!_loc18_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc3_[_loc14_] = _loc12_ + _loc11_ * (2 * (1 - _loc11_) * (_loc8_[_loc10_] - _loc12_) + _loc11_ * (_loc13_ - _loc12_));
                                                            addr376:
                                                            continue;
                                                            addr342:
                                                         }
                                                         else
                                                         {
                                                            addr276:
                                                            if(_loc10_ == _loc9_ - 1)
                                                            {
                                                               addr279:
                                                               §§push((_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2);
                                                               if(_loc18_)
                                                               {
                                                                  addr291:
                                                                  _loc12_ = §§pop();
                                                                  §§push(Number(_loc4_[_loc14_]));
                                                                  if(_loc18_ || _loc3_)
                                                                  {
                                                                     _loc13_ = §§pop();
                                                                     if(_loc18_ || this)
                                                                     {
                                                                     }
                                                                     §§goto(addr376);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr339);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            else
                                                            {
                                                               §§push((_loc8_[_loc10_ - 1] + _loc8_[_loc10_]) / 2);
                                                               if(_loc18_)
                                                               {
                                                                  §§goto(addr326);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr376);
                                             }
                                             else
                                             {
                                                §§push(param1);
                                                §§push(_loc9_);
                                                if(!(_loc19_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      addr221:
                                                      §§push(uint(§§pop() >> 0));
                                                      if(!(_loc19_ && this))
                                                      {
                                                         _loc10_ = §§pop();
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr259);
                                                }
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr279);
               }
               §§goto(addr221);
            }
            §§goto(addr253);
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
         var _loc2_:Object = this.§?!p§;
         var _loc3_:Dictionary = this.§%f§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§`!N§;
         var _loc9_:Dictionary = this.§'!?§;
         var _loc10_:* = 0;
         var _loc11_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(_loc13_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextname(_loc10_,_loc11_);
                  if(_loc13_)
                  {
                     if(_loc4_[_loc1_] == undefined)
                     {
                        if(!_loc12_)
                        {
                           _loc4_[_loc1_] = _loc2_[_loc1_];
                           if(_loc12_ && _loc2_)
                           {
                              continue;
                           }
                        }
                     }
                     if(_loc9_["source." + _loc1_])
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           _loc3_[_loc1_] += _loc2_[_loc1_];
                        }
                     }
                  }
                  continue;
               }
               if(_loc13_ || this)
               {
                  if(!(_loc12_ && _loc1_))
                  {
                     if(_loc13_ || this)
                     {
                        §§push(0);
                        if(_loc13_)
                        {
                           _loc10_ = §§pop();
                           if(_loc13_)
                           {
                              _loc11_ = _loc4_;
                              addr193:
                              if(!(_loc12_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    if(_loc13_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop2:
                                 for(; §§pop(); while(true)
                                 {
                                    continue loop2;
                                 })
                                 {
                                    _loc1_ = §§nextname(_loc10_,_loc11_);
                                    while(true)
                                    {
                                       §§push(uint((_loc6_ = _loc5_[_loc1_] as Vector.<Number>).length));
                                       if(!(_loc12_ && _loc1_))
                                       {
                                          _loc7_ = §§pop();
                                          if(!_loc13_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(uint(0));
                                          if(_loc13_ || _loc3_)
                                          {
                                             addr290:
                                             _loc8_ = §§pop();
                                             if(_loc13_ || _loc3_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   addr360:
                                                   while(§§pop() < _loc7_)
                                                   {
                                                      if(_loc9_["cp." + _loc1_ + "." + _loc8_])
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         _loc6_[_loc8_] += _loc2_[_loc1_];
                                                         if(!(_loc13_ || this))
                                                         {
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                addr359:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                if(_loc13_)
                                                {
                                                   addr342:
                                                   §§push(uint(§§pop() + 1));
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!(_loc13_ || this))
                                                         {
                                                            continue loop2;
                                                         }
                                                         §§goto(addr359);
                                                         §§goto(addr342);
                                                      }
                                                      addr351:
                                                   }
                                                }
                                                §§goto(addr360);
                                             }
                                          }
                                          §§goto(addr351);
                                       }
                                       §§goto(addr290);
                                    }
                                 }
                                 addr366:
                                 return;
                                 addr216:
                                 addr365:
                                 addr364:
                                 addr363:
                              }
                              while(true)
                              {
                                 if(_loc9_["dest." + _loc1_])
                                 {
                                    if(_loc13_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          _loc4_[_loc1_] += _loc2_[_loc1_];
                                       }
                                       addr206:
                                    }
                                 }
                                 §§goto(addr216);
                              }
                              addr193:
                           }
                           addr235:
                           if(_loc13_)
                           {
                              §§push(0);
                           }
                           §§goto(addr366);
                        }
                        _loc10_ = §§pop();
                        if(_loc13_ || _loc2_)
                        {
                           _loc11_ = _loc5_;
                           if(!_loc12_)
                           {
                              §§goto(addr362);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr365);
                     }
                     §§goto(addr366);
                  }
                  §§goto(addr235);
               }
               §§goto(addr364);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc13_ || _loc3_)
               {
                  if(!(_loc12_ && _loc3_))
                  {
                     §§goto(addr235);
                  }
               }
               §§goto(addr366);
            }
            else
            {
               _loc1_ = §§nextname(_loc10_,_loc11_);
               if(!_loc12_)
               {
                  if(_loc3_[_loc1_] == undefined)
                  {
                     if(_loc13_ || this)
                     {
                        _loc3_[_loc1_] = _loc2_[_loc1_];
                        if(_loc13_ || _loc1_)
                        {
                           §§goto(addr193);
                        }
                        §§goto(addr366);
                     }
                  }
                  §§goto(addr193);
               }
               §§goto(addr206);
            }
         }
      }
      
      public function §2!]§(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Vector.<Number>;
         if((_loc4_ = this.§`!N§[param1] as Vector.<Number>) == null)
         {
            if(_loc7_)
            {
               this.§`!N§[param1] = _loc4_ = new Vector.<Number>();
               §§goto(addr66);
            }
            §§goto(addr76);
         }
         addr66:
         _loc4_.push(param2);
         if(!(_loc6_ && param1))
         {
            addr76:
            this.§'!?§["cp." + param1 + "." + _loc4_.length] = param3;
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§?!p§[param1];
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§0V§ = param1 as §0V§;
         if(!_loc4_)
         {
            this.§?!p§ = _loc2_.§?!p§;
            if(!_loc4_)
            {
               this.§ !+§(this.§%f§,_loc2_.§%f§);
               if(!_loc4_)
               {
                  this.§ !+§(this.§;u§,_loc2_.§;u§);
                  if(!(_loc4_ && param1))
                  {
                     this.§ !+§(this.§`!N§,_loc2_.§`!N§);
                     if(_loc3_ || _loc3_)
                     {
                        addr88:
                        this.§ !+§(this.§'!?§,_loc2_.§'!?§);
                     }
                  }
               }
               §§goto(addr88);
            }
            return;
         }
         §§goto(addr88);
      }
   }
}
