package §8=§
{
   import §2p§.§1>§;
   import §<!3§.§"`§;
   import flash.utils.Dictionary;
   
   public class §[!H§
   {
       
      
      private var §-"%§:Vector.<Dictionary>;
      
      private var §&!i§:§"`§;
      
      private var §`!i§:uint = 0;
      
      private var §]_§:Vector.<Vector.<§+?§>>;
      
      public function §[!H§(param1:§"`§)
      {
         this.§-"%§ = new Vector.<Dictionary>();
         this.§]_§ = new Vector.<Vector.<§+?§>>();
         super();
         this.§&!i§ = param1;
      }
      
      public function §+9§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§+?§>) : §+?§
      {
         var _loc6_:§+?§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§&!i§.§@"3§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §+?§) == null)
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
      
      public function §`!I§(param1:Object, param2:Object, param3:Object, param4:§1>§) : §36§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§36§ = null;
         var _loc12_:§36§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§36§> = new Vector.<§36§>();
         var _loc7_:§4"-§;
         (_loc7_ = new §4"-§()).target = param1;
         _loc7_.§!!T§ = param4;
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
                  _loc11_ = this.§`!I§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §=!b§(_loc7_,_loc11_,_loc8_));
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
                  _loc11_ = this.§`!I§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §=!b§(_loc7_,_loc11_,_loc8_));
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
            _loc12_ = new §<!@§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §6N§(param1:Object, param2:Object, param3:Object, param4:Object) : §+?§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§+?§ = null;
         var _loc15_:§+?§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§+?§> = new Vector.<§+?§>();
         var _loc7_:§`L§;
         (_loc7_ = new §`L§()).target = param1;
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
                  _loc14_ = this.§6N§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §2@§(_loc7_,_loc14_,_loc8_));
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
                  _loc14_ = this.§6N§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §2@§(_loc7_,_loc14_,_loc8_));
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
                     _loc7_.§6!!§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§6N§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §2@§(_loc7_,_loc14_,_loc8_));
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
            _loc15_ = new §^C§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function § !I§(param1:Object, param2:Object, param3:Object) : §+?§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§+?§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§+?§ = null;
         var _loc10_:§+?§ = null;
         var _loc11_:§+?§ = null;
         var _loc12_:* = undefined;
         if(this.§`!i§ > 0)
         {
            --this.§`!i§;
            _loc4_ = this.§-"%§[this.§`!i§];
            _loc5_ = this.§]_§[this.§`!i§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§+?§>();
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
                  this.§+9§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§+9§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§ !I§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §2@§(_loc9_,_loc10_,_loc6_));
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
                  this.§+9§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§+9§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§ !I§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §2@§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §^C§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§-"%§[this.§`!i§] = _loc4_;
         this.§]_§[this.§`!i§] = _loc5_;
         ++this.§`!i§;
         return _loc11_;
      }
   }
}
