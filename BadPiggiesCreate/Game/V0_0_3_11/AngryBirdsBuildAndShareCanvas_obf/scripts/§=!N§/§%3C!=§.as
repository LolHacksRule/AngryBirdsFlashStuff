package §=!N§
{
   import §4"4§.§-!G§;
   import §7!N§.§]!U§;
   import flash.utils.Dictionary;
   
   public class §<!=§
   {
       
      
      private var §5C§:Vector.<Dictionary>;
      
      private var §""2§:§]!U§;
      
      private var §7!I§:uint = 0;
      
      private var §4Y§:Vector.<Vector.<§!"4§>>;
      
      public function §<!=§(param1:§]!U§)
      {
         this.§5C§ = new Vector.<Dictionary>();
         this.§4Y§ = new Vector.<Vector.<§!"4§>>();
         super();
         this.§""2§ = param1;
      }
      
      public function §!!K§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§!"4§>) : §!"4§
      {
         var _loc6_:§!"4§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§""2§.§'"$§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §!"4§) == null)
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
      
      public function §4"9§(param1:Object, param2:Object, param3:Object, param4:§-!G§) : §]k§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§]k§ = null;
         var _loc12_:§]k§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§]k§> = new Vector.<§]k§>();
         var _loc7_:§4!#§;
         (_loc7_ = new §4!#§()).target = param1;
         _loc7_.§2!U§ = param4;
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
                  _loc11_ = this.§4"9§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §%W§(_loc7_,_loc11_,_loc8_));
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
                  _loc11_ = this.§4"9§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §%W§(_loc7_,_loc11_,_loc8_));
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
            _loc12_ = new §5!<§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §%!t§(param1:Object, param2:Object, param3:Object, param4:Object) : §!"4§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§!"4§ = null;
         var _loc15_:§!"4§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§!"4§> = new Vector.<§!"4§>();
         var _loc7_:§^r§;
         (_loc7_ = new §^r§()).target = param1;
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
                  _loc14_ = this.§%!t§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §8M§(_loc7_,_loc14_,_loc8_));
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
                  _loc14_ = this.§%!t§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §8M§(_loc7_,_loc14_,_loc8_));
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
                     _loc7_.§%%§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§%!t§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §8M§(_loc7_,_loc14_,_loc8_));
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
            _loc15_ = new §[!i§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function §'F§(param1:Object, param2:Object, param3:Object) : §!"4§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§!"4§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§!"4§ = null;
         var _loc10_:§!"4§ = null;
         var _loc11_:§!"4§ = null;
         var _loc12_:* = undefined;
         if(this.§7!I§ > 0)
         {
            --this.§7!I§;
            _loc4_ = this.§5C§[this.§7!I§];
            _loc5_ = this.§4Y§[this.§7!I§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§!"4§>();
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
                  this.§!!K§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§!!K§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§'F§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §8M§(_loc9_,_loc10_,_loc6_));
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
                  this.§!!K§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§!!K§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§'F§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §8M§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §[!i§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§5C§[this.§7!I§] = _loc4_;
         this.§4Y§[this.§7!I§] = _loc5_;
         ++this.§7!I§;
         return _loc11_;
      }
   }
}
