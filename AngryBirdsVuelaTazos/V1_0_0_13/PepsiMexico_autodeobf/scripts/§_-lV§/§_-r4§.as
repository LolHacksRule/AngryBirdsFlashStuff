package §_-lV§
{
   import §_-OS§.§_-rl§;
   import §_-Wa§.§_-8X§;
   import flash.utils.Dictionary;
   
   public class §_-r4§
   {
       
      
      private var §_-rC§:Vector.<Dictionary>;
      
      private var §_-aG§:§_-rl§;
      
      private var §_-vd§:uint = 0;
      
      private var §_-4R§:Vector.<Vector.<§_-i2§>>;
      
      public function §_-r4§(param1:§_-rl§)
      {
         this.§_-rC§ = new Vector.<Dictionary>();
         this.§_-4R§ = new Vector.<Vector.<§_-i2§>>();
         super();
         this.§_-aG§ = param1;
      }
      
      public function §_-4§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§_-i2§>) : §_-i2§
      {
         var _loc6_:§_-i2§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§_-aG§.§_-kG§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §_-i2§) == null)
            {
               (_loc6_ = new _loc5_()).target = param1;
               param3[_loc5_] = _loc6_;
               if(param4 != null)
               {
                  param4.push(_loc6_);
               }
            }
            return _loc6_;
         }
         return null;
      }
      
      public function §_-i4§(param1:Object, param2:Object, param3:Object, param4:§_-8X§) : §_-v§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§_-v§ = null;
         var _loc12_:§_-v§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-v§> = new Vector.<§_-v§>();
         var _loc7_:§_-G5§;
         (_loc7_ = new §_-G5§()).target = param1;
         _loc7_.§_-4g§ = param4;
         _loc6_.push(_loc7_);
         if(param3 != null)
         {
            for(_loc8_ in param3)
            {
               if((_loc9_ = param3[_loc8_]) is Number)
               {
                  if(_loc10_ = /^\$/.test(_loc8_))
                  {
                     _loc8_ = _loc8_.substr(1);
                  }
                  _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc11_ = this.§_-i4§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §_-iO§(_loc7_,_loc11_,_loc8_));
                  _loc5_[_loc8_] = true;
               }
            }
         }
         if(param2 != null)
         {
            for(_loc8_ in param2)
            {
               if((_loc9_ = param2[_loc8_]) is Number)
               {
                  if(_loc10_ = /^\$/.test(_loc8_))
                  {
                     _loc8_ = _loc8_.substr(1);
                  }
                  _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc11_ = this.§_-i4§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §_-iO§(_loc7_,_loc11_,_loc8_));
                  _loc5_[_loc8_] = true;
               }
            }
         }
         if(_loc6_.length == 1)
         {
            _loc12_ = _loc6_[0];
         }
         else if(_loc6_.length > 1)
         {
            _loc12_ = new §_-MJ§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §_-oV§(param1:Object, param2:Object, param3:Object, param4:Object) : §_-i2§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§_-i2§ = null;
         var _loc15_:§_-i2§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-i2§> = new Vector.<§_-i2§>();
         var _loc7_:§_-CW§;
         (_loc7_ = new §_-CW§()).target = param1;
         _loc6_.push(_loc7_);
         if(param3 != null)
         {
            for(_loc8_ in param3)
            {
               if((_loc9_ = param3[_loc8_]) is Number)
               {
                  if(_loc10_ = /^\$/.test(_loc8_))
                  {
                     _loc8_ = _loc8_.substr(1);
                  }
                  _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§_-oV§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §_-Vf§(_loc7_,_loc14_,_loc8_));
                  _loc5_[_loc8_] = true;
               }
            }
         }
         if(param2 != null)
         {
            for(_loc8_ in param2)
            {
               if((_loc9_ = param2[_loc8_]) is Number)
               {
                  if(_loc10_ = /^\$/.test(_loc8_))
                  {
                     _loc8_ = _loc8_.substr(1);
                  }
                  _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§_-oV§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §_-Vf§(_loc7_,_loc14_,_loc8_));
                  _loc5_[_loc8_] = true;
               }
            }
         }
         if(param4 != null)
         {
            for(_loc8_ in param4)
            {
               if((_loc9_ = param4[_loc8_]) is Number)
               {
                  _loc9_ = [_loc9_];
               }
               if(_loc9_ is Array)
               {
                  if(_loc10_ = /^\$/.test(_loc8_))
                  {
                     _loc8_ = _loc8_.substr(1);
                  }
                  _loc12_ = (_loc11_ = _loc9_ as Array).length;
                  _loc13_ = 0;
                  while(_loc13_ < _loc12_)
                  {
                     _loc7_.§_-3B§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§_-oV§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §_-Vf§(_loc7_,_loc14_,_loc8_));
                  _loc5_[_loc8_] = true;
               }
            }
         }
         if(_loc6_.length == 1)
         {
            _loc15_ = _loc6_[0];
         }
         else if(_loc6_.length > 1)
         {
            _loc15_ = new §_-sL§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function §_-em§(param1:Object, param2:Object, param3:Object) : §_-i2§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§_-i2§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§_-i2§ = null;
         var _loc10_:§_-i2§ = null;
         var _loc11_:§_-i2§ = null;
         var _loc12_:* = undefined;
         if(this.§_-vd§ > 0)
         {
            --this.§_-vd§;
            _loc4_ = this.§_-rC§[this.§_-vd§];
            _loc5_ = this.§_-4R§[this.§_-vd§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§_-i2§>();
         }
         if(param3 != null)
         {
            for(_loc6_ in param3)
            {
               if((_loc7_ = param3[_loc6_]) is Number)
               {
                  if(_loc8_ = /^\$/.test(_loc6_))
                  {
                     _loc6_ = _loc6_.substr(1);
                  }
                  this.§_-4§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§_-4§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§_-em§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §_-Vf§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(param2 != null)
         {
            for(_loc6_ in param2)
            {
               if((_loc7_ = param2[_loc6_]) is Number)
               {
                  if(_loc8_ = /^\$/.test(_loc6_))
                  {
                     _loc6_ = _loc6_.substr(1);
                  }
                  this.§_-4§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§_-4§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§_-em§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §_-Vf§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §_-sL§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§_-rC§[this.§_-vd§] = _loc4_;
         this.§_-4R§[this.§_-vd§] = _loc5_;
         ++this.§_-vd§;
         return _loc11_;
      }
   }
}
