package §[,§
{
   import §?a§.Event;
   import §^a§.starling_internal;
   
   public class §+!i§ implements §4#r§
   {
       
      
      private var §3!2§:Vector.<§4#r§>;
      
      private var §?b§:Number;
      
      private var §5G§:Boolean = false;
      
      private var §%Y§:Number = 1.0;
      
      public function §+!i§()
      {
         super();
         this.§?b§ = 0;
         this.§3!2§ = new Vector.<§4#r§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§%Y§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§5G§ = param1;
      }
      
      public function add(param1:§4#r§) : void
      {
         if(param1 && this.§3!2§.indexOf(param1) == -1)
         {
            this.§3!2§.push(param1);
         }
      }
      
      public function contains(param1:§4#r§) : Boolean
      {
         return this.§3!2§.indexOf(param1) != -1;
      }
      
      public function §%"w§(param1:§4#r§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3!2§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§3!2§[_loc2_] = null;
         }
      }
      
      public function §`"6§(param1:Object) : void
      {
         var _loc3_:§""V§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!2§[_loc2_] as §""V§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§[#H§,this.§0"C§);
               this.§3!2§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §<!"§() : void
      {
         var _loc1_:int = this.§3!2§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§3!2§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §1l§(param1:Function, param2:Number, ... rest) : §3#=§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§3#=§ = new §3#=§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§""V§ = §""V§.starling_internal::§]"f§(param1,param2);
         for(_loc5_ in param3)
         {
            _loc6_ = param3[_loc5_];
            if(!_loc4_.hasOwnProperty(_loc5_))
            {
               if(!param1.hasOwnProperty(_loc5_))
               {
                  throw new ArgumentError("Invalid property: " + _loc5_);
               }
               _loc4_.§5#X§(_loc5_,_loc6_ as Number);
            }
            _loc4_[_loc5_] = _loc6_;
            continue;
            continue;
         }
         _loc4_.addEventListener(Event.§[#H§,this.§,!z§);
         this.add(_loc4_);
      }
      
      private function §,!z§(param1:Event) : void
      {
         §""V§.starling_internal::§4!m§(param1.target as §""V§);
      }
      
      public function §%"f§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§4#r§ = null;
         if(this.§5G§)
         {
            return;
         }
         var _loc2_:int = this.§3!2§.length;
         var _loc3_:int = 0;
         param1 *= this.§%Y§;
         this.§?b§ += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§3!2§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§3!2§[_loc3_] = _loc5_;
                  this.§3!2§[_loc4_] = null;
               }
               _loc5_.§%"f§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§3!2§.length;
            while(_loc4_ < _loc2_)
            {
               this.§3!2§[int(_loc3_++)] = this.§3!2§[int(_loc4_++)];
            }
            this.§3!2§.length = _loc3_;
         }
      }
      
      private function §0"C§(param1:Event) : void
      {
         this.§%"w§(param1.target as §4#r§);
         var _loc2_:§""V§ = param1.target as §""V§;
         if(_loc2_ && _loc2_.§>N§)
         {
            this.add(_loc2_.§@#C§);
         }
      }
      
      public function get §=o§() : Number
      {
         return this.§?b§;
      }
   }
}
