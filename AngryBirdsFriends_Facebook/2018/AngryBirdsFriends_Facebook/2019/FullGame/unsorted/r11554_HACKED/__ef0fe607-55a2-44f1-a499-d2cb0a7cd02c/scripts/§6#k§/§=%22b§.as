package §6#k§
{
   import §!#`§.Event;
   import §]"P§.starling_internal;
   
   public class §="b§ implements §8C§
   {
       
      
      private var §3#$§:Vector.<§8C§>;
      
      private var §<#x§:Number;
      
      private var §"#j§:Boolean = false;
      
      private var §1!Z§:Number = 1.0;
      
      public function §="b§()
      {
         super();
         this.§<#x§ = 0;
         this.§3#$§ = new Vector.<§8C§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§1!Z§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§"#j§ = param1;
      }
      
      public function add(param1:§8C§) : void
      {
         if(param1 && this.§3#$§.indexOf(param1) == -1)
         {
            this.§3#$§.push(param1);
         }
      }
      
      public function contains(param1:§8C§) : Boolean
      {
         return this.§3#$§.indexOf(param1) != -1;
      }
      
      public function §[g§(param1:§8C§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3#$§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§3#$§[_loc2_] = null;
         }
      }
      
      public function §[!-§(param1:Object) : void
      {
         var _loc3_:§]$&§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§3#$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3#$§[_loc2_] as §]$&§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§?§,this.§1#u§);
               this.§3#$§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §0#7§() : void
      {
         var _loc1_:int = this.§3#$§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§3#$§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §@#R§(param1:Function, param2:Number, ... rest) : §"7§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§"7§ = new §"7§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§]$&§ = §]$&§.starling_internal::§+!G§(param1,param2);
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
               _loc4_.§%#x§(_loc5_,_loc6_ as Number);
            }
         }
         _loc4_.addEventListener(Event.§?§,this.§5">§);
         this.add(_loc4_);
      }
      
      private function §5">§(param1:Event) : void
      {
         §]$&§.starling_internal::§6#L§(param1.target as §]$&§);
      }
      
      public function §#+§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§8C§ = null;
         if(this.§"#j§)
         {
            return;
         }
         var _loc2_:int = this.§3#$§.length;
         var _loc3_:int = 0;
         param1 *= this.§1!Z§;
         this.§<#x§ += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§3#$§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§3#$§[_loc3_] = _loc5_;
                  this.§3#$§[_loc4_] = null;
               }
               _loc5_.§#+§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§3#$§.length;
            while(_loc4_ < _loc2_)
            {
               this.§3#$§[int(_loc3_++)] = this.§3#$§[int(_loc4_++)];
            }
            this.§3#$§.length = _loc3_;
         }
      }
      
      private function §1#u§(param1:Event) : void
      {
         this.§[g§(param1.target as §8C§);
         var _loc2_:§]$&§ = param1.target as §]$&§;
         if(_loc2_ && _loc2_.§?#d§)
         {
            this.add(_loc2_.§with§);
         }
      }
      
      public function get §!#S§() : Number
      {
         return this.§<#x§;
      }
   }
}
