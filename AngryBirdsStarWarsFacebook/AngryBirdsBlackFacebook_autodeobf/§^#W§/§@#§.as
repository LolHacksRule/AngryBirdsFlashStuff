package §^#W§
{
   public dynamic class §@#§
   {
       
      
      public var §8!c§:Object;
      
      private var §8"g§:Vector.<String>;
      
      private var §]#$§:Vector.<String>;
      
      public function §@#§()
      {
         this.§8!c§ = new Object();
         this.§8"g§ = new Vector.<String>();
         this.§]#$§ = new Vector.<String>();
         super();
      }
      
      public function §]#Z§(param1:String) : String
      {
         var _loc2_:int = this.§]#$§.indexOf(param1.toLowerCase());
         if(_loc2_ == -1)
         {
            throw new Error("No result");
         }
         return this.§8"g§[_loc2_];
      }
      
      public function §<#T§(param1:String) : void
      {
         this.§8"g§.push(param1);
         this.§]#$§.push(param1.toLowerCase());
         var _loc2_:Array = param1.split("");
         _loc2_.push(new String());
         this.§!#V§(_loc2_,this.§8!c§);
      }
      
      public function contains(param1:String) : Boolean
      {
         return this.§]#$§.indexOf(param1.toLowerCase(),0) > -1;
      }
      
      private function §!#V§(param1:Array, param2:Object) : void
      {
         if(param1[0] == undefined)
         {
            return;
         }
         var _loc3_:String = param1[0];
         if(!param2[_loc3_])
         {
            param2[_loc3_] = new Object();
         }
         this.§!#V§(param1.slice(1,param1.length),param2[_loc3_]);
      }
      
      public function §#"_§(param1:Array) : String
      {
         var _loc5_:String = null;
         var _loc6_:uint = 0;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:* = null;
         var _loc2_:String = "";
         var _loc3_:uint = param1.length;
         var _loc4_:Object = this.§8!c§;
         if(_loc3_ < 1)
         {
            return _loc2_;
         }
         while(_loc6_ < _loc3_)
         {
            _loc5_ = param1[_loc6_];
            if(_loc4_[_loc5_.toUpperCase()] && _loc4_[_loc5_.toLowerCase()])
            {
               _loc8_ = _loc4_[_loc5_.toUpperCase()];
               _loc9_ = _loc4_[_loc5_.toLowerCase()];
               _loc4_ = this.§2#Z§(_loc9_,_loc8_);
            }
            else if(_loc4_[_loc5_.toUpperCase()])
            {
               _loc4_ = _loc4_[_loc5_.toUpperCase()];
            }
            else
            {
               if(!_loc4_[_loc5_.toLowerCase()])
               {
                  return _loc2_;
               }
               _loc4_ = _loc4_[_loc5_.toLowerCase()];
            }
            _loc6_++;
         }
         var _loc7_:Boolean = true;
         while(_loc7_)
         {
            _loc7_ = false;
            for(_loc10_ in _loc4_)
            {
               if(this.§"!g§(_loc4_))
               {
                  _loc2_ += _loc10_;
                  _loc4_ = _loc4_[_loc10_];
                  _loc7_ = true;
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      private function §2#Z§(param1:Object, param2:Object) : Object
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:Object = new Object();
         for(_loc4_ in param1)
         {
            _loc3_[_loc4_] = param1[_loc4_];
         }
         for(_loc5_ in param2)
         {
            if(_loc3_[_loc5_] != undefined && param2[_loc5_] != undefined)
            {
               _loc3_[_loc5_] = this.§2#Z§(_loc3_[_loc5_],param2[_loc5_]);
            }
            else
            {
               _loc3_[_loc5_] = param2[_loc5_];
            }
         }
         return _loc3_;
      }
      
      private function §"!g§(param1:Object) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:Number = 0;
         for(_loc3_ in param1)
         {
            if(_loc2_ > 0)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
   }
}
