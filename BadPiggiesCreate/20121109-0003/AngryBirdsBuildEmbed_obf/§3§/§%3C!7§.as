package §3§
{
   import §4!r§.§[!m§;
   import flash.utils.Dictionary;
   
   public class §<!7§ implements §`A§
   {
       
      
      protected var §[!8§:§[!m§ = null;
      
      protected var §;u§:Dictionary;
      
      protected var §[8§:Number = 0.0;
      
      protected var §8!G§:Boolean = false;
      
      protected var §?!p§:Object = null;
      
      protected var §1J§:Dictionary;
      
      protected var §'!?§:Dictionary;
      
      protected var §%f§:Dictionary;
      
      public function §<!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§%f§ = new Dictionary();
            if(!(_loc2_ && this))
            {
               this.§;u§ = new Dictionary();
               if(!_loc2_)
               {
                  §§goto(addr60);
               }
            }
            §§goto(addr71);
         }
         addr60:
         this.§'!?§ = new Dictionary();
         if(_loc1_ || _loc2_)
         {
            addr71:
            this.§1J§ = new Dictionary();
            if(_loc1_)
            {
               super();
            }
         }
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?!p§[param1] = param2;
         }
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§;u§[param1] = param2;
            if(_loc5_)
            {
               addr26:
               this.§'!?§["dest." + param1] = param3;
            }
            return;
         }
         §§goto(addr26);
      }
      
      protected function copyFrom(param1:§<!7§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!7§ = param1 as §<!7§;
         if(_loc4_)
         {
            this.§?!p§ = _loc2_.§?!p§;
            if(_loc4_ || param1)
            {
               this.§[!8§ = _loc2_.§[!8§;
               if(_loc4_)
               {
                  addr61:
                  this.§ !+§(this.§%f§,_loc2_.§%f§);
                  if(_loc4_)
                  {
                     this.§ !+§(this.§;u§,_loc2_.§;u§);
                     if(_loc4_ || this)
                     {
                     }
                  }
                  §§goto(addr88);
               }
               this.§ !+§(this.§'!?§,_loc2_.§'!?§);
               §§goto(addr88);
            }
            §§goto(addr61);
         }
         addr88:
      }
      
      public function update(param1:Number) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:* = null;
         if(_loc12_ || this)
         {
            if(!this.§8!G§)
            {
               if(!_loc13_)
               {
                  addr35:
                  this.resolveValues();
               }
            }
            var _loc3_:Object = this.§?!p§;
            var _loc4_:§[!m§ = this.§[!8§;
            var _loc5_:Dictionary = this.§;u§;
            var _loc6_:Dictionary = this.§%f§;
            var _loc8_:Dictionary = this.§1J§;
            for(_loc9_ in _loc5_)
            {
               if(_loc12_ || param1)
               {
                  §§push(param1);
                  if(_loc12_ || _loc3_)
                  {
                     if(§§pop() >= _loc8_[_loc9_])
                     {
                        if(_loc13_)
                        {
                           continue;
                        }
                        _loc3_[_loc9_] = _loc5_[_loc9_];
                        if(!_loc13_)
                        {
                           addr118:
                           continue;
                        }
                     }
                     else
                     {
                        addr123:
                        _loc7_ = _loc6_[_loc9_];
                        if(_loc13_ && param1)
                        {
                           continue;
                        }
                     }
                     _loc3_[_loc9_] = _loc4_.§-1§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
                     continue;
                  }
                  §§goto(addr123);
               }
               §§goto(addr118);
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function § !+§(param1:Object, param2:Object) : void
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
      
      public function get duration() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§8!G§)
            {
               if(!_loc2_)
               {
                  addr23:
                  this.resolveValues();
               }
            }
            return this.§[8§;
         }
         §§goto(addr23);
      }
      
      protected function newInstance() : §<!7§
      {
         return new §<!7§();
      }
      
      public function set §-;§(param1:§[!m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!8§ = param1;
         }
      }
      
      public function get target() : Object
      {
         return this.§?!p§;
      }
      
      public function clone() : § null§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§<!7§ = this.newInstance();
         if(_loc2_ || _loc2_)
         {
            if(_loc1_ != null)
            {
               if(_loc2_ || _loc2_)
               {
                  addr47:
                  _loc1_.copyFrom(this);
               }
            }
            return _loc1_;
         }
         §§goto(addr47);
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!p§ = param1;
         }
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§%f§[param1] = param2;
            if(!(_loc4_ && this))
            {
               addr46:
               this.§'!?§["source." + param1] = param3;
            }
            return;
         }
         §§goto(addr46);
      }
      
      protected function resolveValues() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc1_:String = null;
         var _loc7_:* = NaN;
         var _loc2_:Object = this.§?!p§;
         var _loc3_:Dictionary = this.§%f§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§'!?§;
         var _loc6_:Dictionary = this.§1J§;
         §§push(0);
         if(_loc11_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = 0;
         var _loc10_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc10_,_loc9_));
            if(!(_loc12_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc11_)
                  {
                     if(!(_loc12_ && _loc1_))
                     {
                        if(_loc11_ || _loc3_)
                        {
                           _loc9_ = 0;
                           if(!_loc12_)
                           {
                              _loc10_ = _loc4_;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 break loop0;
                              }
                              addr246:
                              if(!_loc12_)
                              {
                                 addr249:
                                 this.§[8§ = _loc8_;
                                 if(!(_loc12_ && _loc2_))
                                 {
                                    this.§8!G§ = true;
                                 }
                              }
                              return;
                              addr245:
                              addr243:
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr245);
               }
               else
               {
                  _loc1_ = §§nextname(_loc9_,_loc10_);
                  if(_loc11_)
                  {
                     if(_loc4_[_loc1_] == undefined)
                     {
                        if(_loc11_ || _loc2_)
                        {
                           _loc4_[_loc1_] = _loc2_[_loc1_];
                           if(!_loc12_)
                           {
                              addr85:
                              if(!_loc5_["source." + _loc1_])
                              {
                                 continue;
                              }
                              if(_loc12_)
                              {
                                 continue;
                              }
                           }
                           _loc3_[_loc1_] += _loc2_[_loc1_];
                        }
                        continue;
                     }
                  }
                  §§goto(addr85);
               }
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr246);
            }
            else
            {
               _loc1_ = §§nextname(_loc9_,_loc10_);
               if(_loc3_[_loc1_] == undefined)
               {
                  _loc3_[_loc1_] = _loc2_[_loc1_];
                  if(_loc11_)
                  {
                     addr167:
                     if(_loc5_["dest." + _loc1_])
                     {
                        if(!(_loc12_ && _loc1_))
                        {
                           _loc4_[_loc1_] += _loc2_[_loc1_];
                           addr190:
                           §§push(this.§[!8§.§2!R§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]));
                           if(_loc11_ || this)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc12_)
                              {
                                 _loc7_ = §§pop();
                                 _loc6_[_loc1_] = _loc7_;
                                 addr218:
                                 §§push(_loc8_);
                                 if(_loc11_)
                                 {
                                    addr221:
                                    if(§§pop() < _loc7_)
                                    {
                                       addr233:
                                       §§push(_loc7_);
                                       if(!(_loc12_ && _loc1_))
                                       {
                                          addr241:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc8_ = §§pop();
                                    }
                                    continue;
                                 }
                                 §§goto(addr241);
                              }
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr233);
               }
               §§goto(addr167);
            }
         }
      }
      
      public function get §-;§() : §[!m§
      {
         return this.§[!8§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§?!p§[param1];
      }
   }
}
