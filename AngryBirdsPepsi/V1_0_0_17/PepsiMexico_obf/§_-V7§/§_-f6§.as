package §_-V7§
{
   import §_-5y§.§_-Bf§;
   import flash.utils.Dictionary;
   
   public class §_-f6§ implements §_-gL§
   {
       
      
      protected var §_-yQ§:§_-Bf§ = null;
      
      protected var §_-3D§:Dictionary;
      
      protected var §_-2Q§:Number = 0.0;
      
      protected var §_-C8§:Boolean = false;
      
      protected var §_-9Z§:Object = null;
      
      protected var §_-7A§:Dictionary;
      
      protected var §_-6C§:Dictionary;
      
      protected var §_-CQ§:Dictionary;
      
      public function §_-f6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-CQ§ = new Dictionary();
            if(!_loc2_)
            {
               this.§_-3D§ = new Dictionary();
               if(_loc1_)
               {
                  addr34:
                  this.§_-6C§ = new Dictionary();
                  if(!_loc2_)
                  {
                     this.§_-7A§ = new Dictionary();
                     if(_loc1_)
                     {
                        addr53:
                        super();
                     }
                     return;
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr34);
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§_-9Z§[param1] = param2;
         }
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§_-3D§[param1] = param2;
            if(!(_loc4_ && param3))
            {
               addr47:
               this.§_-6C§["dest." + param1] = param3;
            }
            return;
         }
         §§goto(addr47);
      }
      
      protected function copyFrom(param1:§_-f6§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-f6§ = param1 as §_-f6§;
         if(_loc4_)
         {
            this.§_-9Z§ = _loc2_.§_-9Z§;
            if(!_loc3_)
            {
               this.§_-yQ§ = _loc2_.§_-yQ§;
               if(_loc4_)
               {
                  this.§_-Kh§(this.§_-CQ§,_loc2_.§_-CQ§);
                  if(_loc4_ || this)
                  {
                     this.§_-Kh§(this.§_-3D§,_loc2_.§_-3D§);
                     addr53:
                     if(_loc3_)
                     {
                     }
                     §§goto(addr74);
                  }
               }
               this.§_-Kh§(this.§_-6C§,_loc2_.§_-6C§);
            }
            addr74:
            return;
         }
         §§goto(addr53);
      }
      
      public function update(param1:Number) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc9_:* = null;
         if(!(_loc12_ && param1))
         {
            if(!this.§_-C8§)
            {
               if(!_loc12_)
               {
                  this.resolveValues();
               }
            }
         }
         var _loc3_:Object = this.§_-9Z§;
         var _loc4_:§_-Bf§ = this.§_-yQ§;
         var _loc5_:Dictionary = this.§_-3D§;
         var _loc6_:Dictionary = this.§_-CQ§;
         var _loc8_:Dictionary = this.§_-7A§;
         for(_loc9_ in _loc5_)
         {
            if(!(_loc12_ && _loc3_))
            {
               §§push(param1);
               if(_loc13_ || _loc3_)
               {
                  if(§§pop() >= _loc8_[_loc9_])
                  {
                     if(_loc13_)
                     {
                        _loc3_[_loc9_] = _loc5_[_loc9_];
                        if(_loc12_)
                        {
                        }
                     }
                     continue;
                  }
                  §§push(Number(_loc6_[_loc9_]));
               }
               _loc7_ = §§pop();
               if(_loc12_)
               {
                  continue;
               }
            }
            _loc3_[_loc9_] = _loc4_.§_-3u§(param1,_loc7_,_loc5_[_loc9_] - _loc7_);
         }
      }
      
      private function §_-Kh§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(_loc7_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      public function get duration() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§_-C8§)
            {
               if(_loc2_)
               {
                  this.resolveValues();
               }
            }
         }
         return this.§_-2Q§;
      }
      
      protected function newInstance() : §_-f6§
      {
         return new §_-f6§();
      }
      
      public function set §_-5E§(param1:§_-Bf§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-yQ§ = param1;
         }
      }
      
      public function get target() : Object
      {
         return this.§_-9Z§;
      }
      
      public function clone() : §_-S1§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-f6§ = this.newInstance();
         if(_loc3_)
         {
            if(_loc1_ != null)
            {
               if(_loc3_)
               {
                  _loc1_.copyFrom(this);
               }
            }
         }
         return _loc1_;
      }
      
      public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-9Z§ = param1;
         }
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§_-CQ§[param1] = param2;
            if(_loc5_ || param1)
            {
               addr47:
               this.§_-6C§["source." + param1] = param3;
            }
            return;
         }
         §§goto(addr47);
      }
      
      protected function resolveValues() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc1_:String = null;
         var _loc7_:* = NaN;
         var _loc2_:Object = this.§_-9Z§;
         var _loc3_:Dictionary = this.§_-CQ§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-6C§;
         var _loc6_:Dictionary = this.§_-7A§;
         §§push(0);
         if(!_loc11_)
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
            if(!_loc11_)
            {
               if(!§§pop())
               {
                  if(_loc12_ || _loc2_)
                  {
                     if(!(_loc11_ && _loc3_))
                     {
                        if(!_loc11_)
                        {
                           _loc9_ = 0;
                           if(!_loc11_)
                           {
                              addr124:
                              _loc10_ = _loc4_;
                              if(_loc12_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    break loop0;
                                 }
                                 addr221:
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    addr236:
                                    this.§_-2Q§ = _loc8_;
                                    if(!_loc11_)
                                    {
                                       this.§_-C8§ = true;
                                    }
                                 }
                                 return;
                                 addr218:
                                 addr220:
                              }
                              while(true)
                              {
                                 if(_loc3_[_loc1_] == undefined)
                                 {
                                    _loc3_[_loc1_] = _loc2_[_loc1_];
                                 }
                                 if(_loc5_["dest." + _loc1_])
                                 {
                                    _loc4_[_loc1_] += _loc2_[_loc1_];
                                 }
                                 §§push(this.§_-yQ§.§_-up§(_loc3_[_loc1_],_loc4_[_loc1_] - _loc3_[_loc1_]));
                                 if(!_loc11_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc12_ || this)
                                    {
                                       _loc7_ = §§pop();
                                       _loc6_[_loc1_] = _loc7_;
                                       §§push(_loc8_);
                                       if(_loc12_ || this)
                                       {
                                          if(§§pop() < _loc7_)
                                          {
                                             if(!_loc11_)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc11_ && this))
                                                {
                                                   addr217:
                                                   _loc8_ = Number(§§pop());
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              addr141:
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr236);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr220);
               }
               else
               {
                  _loc1_ = §§nextname(_loc9_,_loc10_);
                  if(_loc12_)
                  {
                     if(_loc4_[_loc1_] == undefined)
                     {
                        if(_loc12_)
                        {
                           _loc4_[_loc1_] = _loc2_[_loc1_];
                           if(_loc12_)
                           {
                              addr73:
                              if(!_loc5_["source." + _loc1_])
                              {
                                 continue;
                              }
                              if(!_loc12_)
                              {
                                 continue;
                              }
                           }
                           _loc3_[_loc1_] += _loc2_[_loc1_];
                        }
                        continue;
                     }
                  }
                  §§goto(addr73);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc1_ = §§nextname(_loc9_,_loc10_);
               §§goto(addr141);
            }
            §§goto(addr221);
         }
      }
      
      public function get §_-5E§() : §_-Bf§
      {
         return this.§_-yQ§;
      }
      
      public function getObject(param1:String) : Object
      {
         return this.§_-9Z§[param1];
      }
   }
}
