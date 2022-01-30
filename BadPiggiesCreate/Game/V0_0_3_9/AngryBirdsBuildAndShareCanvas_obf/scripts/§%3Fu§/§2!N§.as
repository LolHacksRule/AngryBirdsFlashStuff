package §?u§
{
   import §^!B§.§1!P§;
   import §`!?§.§6!K§;
   import flash.utils.Dictionary;
   
   public class §2!N§
   {
       
      
      private var §@!f§:Vector.<Dictionary>;
      
      private var §7"6§:§1!P§;
      
      private var §8@§:uint = 0;
      
      private var §1! §:Vector.<Vector.<§'S§>>;
      
      public function §2!N§(param1:§1!P§)
      {
         this.§@!f§ = new Vector.<Dictionary>();
         this.§1! § = new Vector.<Vector.<§'S§>>();
         super();
         this.§7"6§ = param1;
      }
      
      public function §=!s§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§'S§>) : §'S§
      {
         var _loc6_:§'S§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§7"6§.§1"%§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §'S§) == null)
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
      
      public function §9!C§(param1:Object, param2:Object, param3:Object, param4:§6!K§) : §`_§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§`_§ = null;
         var _loc12_:§`_§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§`_§> = new Vector.<§`_§>();
         var _loc7_:§4!X§;
         (_loc7_ = new §4!X§()).target = param1;
         _loc7_.§,@§ = param4;
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
                  _loc11_ = this.§9!C§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                  _loc6_.push(new §`",§(_loc7_,_loc11_,_loc8_));
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
                  _loc11_ = this.§9!C§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                  _loc6_.push(new §`",§(_loc7_,_loc11_,_loc8_));
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
            _loc12_ = new §?!J§(param1,_loc6_);
         }
         return _loc12_;
      }
      
      public function §"2§(param1:Object, param2:Object, param3:Object, param4:Object) : §'S§
      {
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:§'S§ = null;
         var _loc15_:§'S§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§'S§> = new Vector.<§'S§>();
         var _loc7_:§2]§;
         (_loc7_ = new §2]§()).target = param1;
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
                  _loc14_ = this.§"2§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §="8§(_loc7_,_loc14_,_loc8_));
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
                  _loc14_ = this.§"2§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                  _loc6_.push(new §="8§(_loc7_,_loc14_,_loc8_));
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
                     _loc7_.§3!r§(_loc8_,_loc11_[_loc13_],_loc10_);
                     _loc13_++;
                  }
               }
               else if(!_loc5_[_loc8_])
               {
                  _loc14_ = this.§"2§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                  _loc6_.push(new §="8§(_loc7_,_loc14_,_loc8_));
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
            _loc15_ = new §^g§(param1,_loc6_);
         }
         return _loc15_;
      }
      
      public function §2!#§(param1:Object, param2:Object, param3:Object) : §'S§
      {
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§'S§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§'S§ = null;
         var _loc10_:§'S§ = null;
         var _loc11_:§'S§ = null;
         var _loc12_:* = undefined;
         if(this.§8@§ > 0)
         {
            --this.§8@§;
            _loc4_ = this.§@!f§[this.§8@§];
            _loc5_ = this.§1! §[this.§8@§];
         }
         else
         {
            _loc4_ = new Dictionary();
            _loc5_ = new Vector.<§'S§>();
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
                  this.§=!s§(param1,_loc6_,_loc4_,_loc5_).setSourceValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else
               {
                  _loc9_ = this.§=!s§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§2!#§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                  _loc5_.push(new §="8§(_loc9_,_loc10_,_loc6_));
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
                  this.§=!s§(param1,_loc6_,_loc4_,_loc5_).setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
               }
               else if(!(param3 != null && _loc6_ in param3))
               {
                  _loc9_ = this.§=!s§(param1,_loc6_,_loc4_,_loc5_);
                  _loc10_ = this.§2!#§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                  _loc5_.push(new §="8§(_loc9_,_loc10_,_loc6_));
               }
            }
         }
         if(_loc5_.length == 1)
         {
            _loc11_ = _loc5_[0];
         }
         else if(_loc5_.length > 1)
         {
            _loc11_ = new §^g§(param1,_loc5_);
         }
         for(_loc12_ in _loc4_)
         {
            delete _loc4_[_loc12_];
         }
         _loc5_.length = 0;
         this.§@!f§[this.§8@§] = _loc4_;
         this.§1! §[this.§8@§] = _loc5_;
         ++this.§8@§;
         return _loc11_;
      }
   }
}
