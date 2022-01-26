package §_-DH§
{
   import §_-C5§.§_-3l§;
   import §_-kn§.§_-kA§;
   import flash.utils.Dictionary;
   
   public class §_-RX§
   {
       
      
      private var §_-NH§:Vector.<Dictionary>;
      
      private var §_-cF§:§_-3l§;
      
      private var §_-BD§:uint = 0;
      
      private var §_-Ys§:Vector.<Vector.<§_-AO§>>;
      
      public function §_-RX§(param1:§_-3l§)
      {
         this.§_-NH§ = new Vector.<Dictionary>();
         this.§_-Ys§ = new Vector.<Vector.<§_-AO§>>();
         super();
         this.§_-cF§ = param1;
      }
      
      public function §_-f6§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§_-AO§>) : §_-AO§
      {
         var _loc6_:§_-AO§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§_-cF§.§_-oC§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §_-AO§) == null)
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
      
      public function §_-Ey§(param1:Object, param2:Object, param3:Object, param4:§_-kA§) : §_-Rt§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§_-Rt§ = null;
         var _loc12_:§_-Rt§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-Rt§> = new Vector.<§_-Rt§>();
         var _loc7_:§_-p0§;
         (_loc7_ = new §_-p0§()).target = param1;
         _loc7_.§_-Bi§ = param4;
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
                  _loc11_ = this.§_-Ey§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §_-fV§(_loc7_,_loc11_,_loc8_));
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
                  _loc11_ = this.§_-Ey§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §_-fV§(_loc7_,_loc11_,_loc8_));
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
            _loc12_ = new §_-Yt§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §_-LX§(param1:Object, param2:Object, param3:Object, param4:Object) : §_-AO§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§_-AO§ = null;
         var _loc15_:§_-AO§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-AO§> = new Vector.<§_-AO§>();
         var _loc7_:§_-tf§;
         (_loc7_ = new §_-tf§()).target = param1;
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
                  _loc14_ = this.§_-LX§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §_-7§(_loc7_,_loc14_,_loc8_));
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
                  _loc14_ = this.§_-LX§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §_-7§(_loc7_,_loc14_,_loc8_));
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
                     _loc7_.§_-Pn§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§_-LX§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §_-7§(_loc7_,_loc14_,_loc8_));
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
            _loc15_ = new §_-Ty§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function §_-uW§(param1:Object, param2:Object, param3:Object) : §_-AO§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§_-AO§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§_-AO§ = null;
         var _loc10_:§_-AO§ = null;
         var _loc11_:§_-AO§ = null;
         var _loc12_:* = undefined;
         if(this.§_-BD§ > 0)
         {
            --this.§_-BD§;
            _loc4_ = this.§_-NH§[this.§_-BD§];
            _loc5_ = this.§_-Ys§[this.§_-BD§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§_-AO§>();
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
                  this.§_-f6§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§_-f6§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§_-uW§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §_-7§(_loc9_,_loc10_,_loc6_));
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
                  this.§_-f6§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§_-f6§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§_-uW§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §_-7§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §_-Ty§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§_-NH§[this.§_-BD§] = _loc4_;
         this.§_-Ys§[this.§_-BD§] = _loc5_;
         ++this.§_-BD§;
         return _loc11_;
      }
   }
}
