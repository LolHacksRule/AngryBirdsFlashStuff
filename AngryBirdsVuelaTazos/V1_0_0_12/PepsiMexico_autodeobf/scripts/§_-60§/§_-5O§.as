package §_-60§
{
   import §_-Og§.§_-bt§;
   import §_-lT§.§_-g7§;
   import flash.utils.Dictionary;
   
   public class §_-5O§
   {
       
      
      private var §_-tA§:Vector.<Dictionary>;
      
      private var §_-LB§:§_-bt§;
      
      private var §_-T§:uint = 0;
      
      private var §_-ay§:Vector.<Vector.<§_-he§>>;
      
      public function §_-5O§(param1:§_-bt§)
      {
         this.§_-tA§ = new Vector.<Dictionary>();
         this.§_-ay§ = new Vector.<Vector.<§_-he§>>();
         super();
         this.§_-LB§ = param1;
      }
      
      public function §_-KM§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§_-he§>) : §_-he§
      {
         var _loc6_:§_-he§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§_-LB§.§_-uP§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §_-he§) == null)
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
      
      public function §_-4U§(param1:Object, param2:Object, param3:Object, param4:§_-g7§) : §_-HC§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§_-HC§ = null;
         var _loc12_:§_-HC§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-HC§> = new Vector.<§_-HC§>();
         var _loc7_:§_-gf§;
         (_loc7_ = new §_-gf§()).target = param1;
         _loc7_.§_-H9§ = param4;
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
                  _loc11_ = this.§_-4U§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §_-eo§(_loc7_,_loc11_,_loc8_));
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
                  _loc11_ = this.§_-4U§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §_-eo§(_loc7_,_loc11_,_loc8_));
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
            _loc12_ = new §_-I7§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §_-QX§(param1:Object, param2:Object, param3:Object, param4:Object) : §_-he§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§_-he§ = null;
         var _loc15_:§_-he§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-he§> = new Vector.<§_-he§>();
         var _loc7_:§_-k1§;
         (_loc7_ = new §_-k1§()).target = param1;
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
                  _loc14_ = this.§_-QX§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §_-iP§(_loc7_,_loc14_,_loc8_));
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
                  _loc14_ = this.§_-QX§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §_-iP§(_loc7_,_loc14_,_loc8_));
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
                     _loc7_.§_-IU§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§_-QX§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §_-iP§(_loc7_,_loc14_,_loc8_));
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
            _loc15_ = new §_-mt§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function §_-2J§(param1:Object, param2:Object, param3:Object) : §_-he§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§_-he§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§_-he§ = null;
         var _loc10_:§_-he§ = null;
         var _loc11_:§_-he§ = null;
         var _loc12_:* = undefined;
         if(this.§_-T§ > 0)
         {
            --this.§_-T§;
            _loc4_ = this.§_-tA§[this.§_-T§];
            _loc5_ = this.§_-ay§[this.§_-T§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§_-he§>();
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
                  this.§_-KM§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§_-KM§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§_-2J§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §_-iP§(_loc9_,_loc10_,_loc6_));
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
                  this.§_-KM§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§_-KM§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§_-2J§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §_-iP§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §_-mt§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§_-tA§[this.§_-T§] = _loc4_;
         this.§_-ay§[this.§_-T§] = _loc5_;
         ++this.§_-T§;
         return _loc11_;
      }
   }
}
