package § get§
{
   import §4!H§.§05§;
   import §?"3§.§6!A§;
   import flash.utils.Dictionary;
   
   public class §[!d§
   {
       
      
      private var §4B§:Vector.<Dictionary>;
      
      private var §0!n§:§6!A§;
      
      private var §%D§:uint = 0;
      
      private var §-! §:Vector.<Vector.<§,B§>>;
      
      public function §[!d§(param1:§6!A§)
      {
         this.§4B§ = new Vector.<Dictionary>();
         this.§-! § = new Vector.<Vector.<§,B§>>();
         super();
         this.§0!n§ = param1;
      }
      
      public function §@!<§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§,B§>) : §,B§
      {
         var _loc6_:§,B§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§0!n§.§0,§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §,B§) == null)
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
      
      public function §3"4§(param1:Object, param2:Object, param3:Object, param4:§05§) : §#!K§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§#!K§ = null;
         var _loc12_:§#!K§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§#!K§> = new Vector.<§#!K§>();
         var _loc7_:§5!&§;
         (_loc7_ = new §5!&§()).target = param1;
         _loc7_.§1<§ = param4;
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
                  _loc11_ = this.§3"4§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §+T§(_loc7_,_loc11_,_loc8_));
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
                  _loc11_ = this.§3"4§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §+T§(_loc7_,_loc11_,_loc8_));
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
            _loc12_ = new §8t§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §@A§(param1:Object, param2:Object, param3:Object, param4:Object) : §,B§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§,B§ = null;
         var _loc15_:§,B§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§,B§> = new Vector.<§,B§>();
         var _loc7_:§0^§;
         (_loc7_ = new §0^§()).target = param1;
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
                  _loc14_ = this.§@A§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §[!v§(_loc7_,_loc14_,_loc8_));
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
                  _loc14_ = this.§@A§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §[!v§(_loc7_,_loc14_,_loc8_));
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
                     _loc7_.§+u§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§@A§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §[!v§(_loc7_,_loc14_,_loc8_));
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
            _loc15_ = new §@!4§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function §=!L§(param1:Object, param2:Object, param3:Object) : §,B§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§,B§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§,B§ = null;
         var _loc10_:§,B§ = null;
         var _loc11_:§,B§ = null;
         var _loc12_:* = undefined;
         if(this.§%D§ > 0)
         {
            --this.§%D§;
            _loc4_ = this.§4B§[this.§%D§];
            _loc5_ = this.§-! §[this.§%D§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§,B§>();
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
                  this.§@!<§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§@!<§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§=!L§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §[!v§(_loc9_,_loc10_,_loc6_));
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
                  this.§@!<§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§@!<§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§=!L§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §[!v§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §@!4§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§4B§[this.§%D§] = _loc4_;
         this.§-! §[this.§%D§] = _loc5_;
         ++this.§%D§;
         return _loc11_;
      }
   }
}
