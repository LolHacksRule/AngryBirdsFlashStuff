package §_-V7§
{
   import §_-wT§.§_-c9§;
   import flash.utils.Dictionary;
   
   public class §_-8P§ extends §_-rJ§
   {
       
      
      protected var §_-3D§:Dictionary;
      
      protected var §_-9Z§:Object = null;
      
      protected var §_-6C§:Dictionary;
      
      protected var §_-CQ§:Dictionary;
      
      public function §_-8P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-CQ§ = new Dictionary();
            if(_loc1_)
            {
               this.§_-3D§ = new Dictionary();
               if(!(_loc2_ && _loc2_))
               {
                  addr44:
                  this.§_-6C§ = new Dictionary();
                  if(_loc1_ || _loc2_)
                  {
                  }
                  §§goto(addr64);
               }
               super();
            }
            addr64:
            return;
         }
         §§goto(addr44);
      }
      
      public static function §_-mO§(param1:§_-c9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§_-Ym§(§_-8P§,Object,"*");
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§_-9Z§[param1] = param2;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§_-3D§[param1] = param2;
            if(_loc4_ || param1)
            {
               this.§_-6C§["dest." + param1] = param3;
            }
         }
      }
      
      override protected function newInstance() : §_-rJ§
      {
         return new §_-8P§();
      }
      
      override public function get target() : Object
      {
         return this.§_-9Z§;
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
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§_-CQ§[param1] = param2;
            if(_loc4_ || this)
            {
               this.§_-6C§["source." + param1] = param3;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = null;
         §§push(1 - param1);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§_-9Z§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-CQ§;
         for(_loc6_ in _loc4_)
         {
            if(_loc10_)
            {
               _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
            }
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
      
      override protected function resolveValues() : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Object = this.§_-9Z§;
         var _loc3_:Dictionary = this.§_-CQ§;
         var _loc4_:Dictionary = this.§_-3D§;
         var _loc5_:Dictionary = this.§_-6C§;
         var _loc6_:int = 0;
         var _loc7_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!_loc9_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextname(_loc6_,_loc7_);
                  if(_loc8_ || this)
                  {
                     if(_loc4_[_loc1_] == undefined)
                     {
                        if(_loc9_ && this)
                        {
                           continue;
                        }
                        _loc4_[_loc1_] = _loc2_[_loc1_];
                        if(_loc9_ && _loc3_)
                        {
                           continue;
                        }
                     }
                     if(_loc5_["source." + _loc1_])
                     {
                        if(!_loc9_)
                        {
                           _loc3_[_loc1_] += _loc2_[_loc1_];
                        }
                     }
                  }
                  continue;
               }
               if(_loc8_ || this)
               {
                  if(_loc8_ || _loc2_)
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        _loc6_ = 0;
                        if(!(_loc9_ && this))
                        {
                           _loc7_ = _loc4_;
                           if(_loc9_ && _loc2_)
                           {
                           }
                           while(true)
                           {
                              §§push(§§hasnext(_loc7_,_loc6_));
                              break loop0;
                           }
                           addr204:
                           addr203:
                           addr201:
                        }
                        §§goto(addr204);
                     }
                     return;
                  }
                  §§goto(addr204);
               }
               §§goto(addr203);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc1_ = §§nextname(_loc6_,_loc7_);
               if(_loc8_)
               {
                  if(_loc3_[_loc1_] == undefined)
                  {
                     if(!(_loc9_ && this))
                     {
                        _loc3_[_loc1_] = _loc2_[_loc1_];
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  if(_loc5_["dest." + _loc1_])
                  {
                     if(!_loc9_)
                     {
                        _loc4_[_loc1_] += _loc2_[_loc1_];
                     }
                  }
               }
               continue;
            }
            §§goto(addr204);
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§_-9Z§[param1];
      }
      
      override protected function copyFrom(param1:§_-rJ§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§_-8P§ = param1 as §_-8P§;
         if(!_loc3_)
         {
            this.§_-9Z§ = _loc2_.§_-9Z§;
            if(_loc4_)
            {
               addr39:
               this.§_-Kh§(this.§_-CQ§,_loc2_.§_-CQ§);
               if(!_loc3_)
               {
                  this.§_-Kh§(this.§_-3D§,_loc2_.§_-3D§);
                  if(!_loc3_)
                  {
                     addr62:
                     this.§_-Kh§(this.§_-6C§,_loc2_.§_-6C§);
                  }
                  return;
               }
            }
            §§goto(addr62);
         }
         §§goto(addr39);
      }
   }
}
