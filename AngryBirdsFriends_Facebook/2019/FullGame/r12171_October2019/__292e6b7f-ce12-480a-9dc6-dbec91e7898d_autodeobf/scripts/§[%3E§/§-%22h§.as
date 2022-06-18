package §[>§
{
   import §"#k§.starling_internal;
   import §,$&§.Event;
   
   public class §-"h§ implements §-"w§
   {
       
      
      private var §1#s§:Vector.<§-"w§>;
      
      private var §^#i§:Number;
      
      private var §2!f§:Boolean = false;
      
      private var §#"2§:Number = 1.0;
      
      public function §-"h§()
      {
         super();
         this.§^#i§ = 0;
         this.§1#s§ = new Vector.<§-"w§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§#"2§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§2!f§ = param1;
      }
      
      public function add(param1:§-"w§) : void
      {
         if(param1 && this.§1#s§.indexOf(param1) == -1)
         {
            this.§1#s§.push(param1);
         }
      }
      
      public function contains(param1:§-"w§) : Boolean
      {
         return this.§1#s§.indexOf(param1) != -1;
      }
      
      public function §=8§(param1:§-"w§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§1#s§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§1#s§[_loc2_] = null;
         }
      }
      
      public function §="O§(param1:Object) : void
      {
         var _loc3_:§4"h§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§1#s§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1#s§[_loc2_] as §4"h§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§]#h§,this.§,!"§);
               this.§1#s§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §5"@§() : void
      {
         var _loc1_:int = this.§1#s§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§1#s§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §>z§(param1:Function, param2:Number, ... rest) : §<!L§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§<!L§ = new §<!L§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§4"h§ = §4"h§.starling_internal::§<!G§(param1,param2);
         for(_loc5_ in param3)
         {
            _loc6_ = param3[_loc5_];
            if(_loc4_.hasOwnProperty(_loc5_))
            {
               _loc4_[_loc5_] = _loc6_;
            }
            else
            {
               if(!param1.hasOwnProperty(_loc5_))
               {
                  throw new ArgumentError("Invalid property: " + _loc5_);
               }
               _loc4_.§;!E§(_loc5_,_loc6_ as Number);
            }
         }
         _loc4_.addEventListener(Event.§]#h§,this.§?#0§);
         this.add(_loc4_);
      }
      
      private function §?#0§(param1:Event) : void
      {
         §4"h§.starling_internal::§<$D§(param1.target as §4"h§);
      }
      
      public function §]W§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§-"w§ = null;
         if(this.§2!f§)
         {
            return;
         }
         var _loc2_:int = this.§1#s§.length;
         var _loc3_:int = 0;
         param1 *= this.§#"2§;
         this.§^#i§ += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§1#s§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§1#s§[_loc3_] = _loc5_;
                  this.§1#s§[_loc4_] = null;
               }
               _loc5_.§]W§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§1#s§.length;
            while(_loc4_ < _loc2_)
            {
               this.§1#s§[int(_loc3_++)] = this.§1#s§[int(_loc4_++)];
            }
            this.§1#s§.length = _loc3_;
         }
      }
      
      private function §,!"§(param1:Event) : void
      {
         this.§=8§(param1.target as §-"w§);
         var _loc2_:§4"h§ = param1.target as §4"h§;
         if(_loc2_ && _loc2_.§;# §)
         {
            this.add(_loc2_.§ "=§);
         }
      }
      
      public function get §[i§() : Number
      {
         return this.§^#i§;
      }
   }
}
