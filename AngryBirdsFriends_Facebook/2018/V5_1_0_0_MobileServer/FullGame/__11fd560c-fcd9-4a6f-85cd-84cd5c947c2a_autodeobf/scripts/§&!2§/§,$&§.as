package §&!2§
{
   import §5#m§.Event;
   import §?"e§.starling_internal;
   
   public class §,$&§ implements §;"=§
   {
       
      
      private var §4$8§:Vector.<§;"=§>;
      
      private var §7p§:Number;
      
      private var §3#"§:Boolean = false;
      
      private var §6$<§:Number = 1.0;
      
      public function §,$&§()
      {
         super();
         this.§7p§ = 0;
         this.§4$8§ = new Vector.<§;"=§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§6$<§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§3#"§ = param1;
      }
      
      public function add(param1:§;"=§) : void
      {
         if(param1 && this.§4$8§.indexOf(param1) == -1)
         {
            this.§4$8§.push(param1);
         }
      }
      
      public function contains(param1:§;"=§) : Boolean
      {
         return this.§4$8§.indexOf(param1) != -1;
      }
      
      public function §4!v§(param1:§;"=§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§4$8§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§4$8§[_loc2_] = null;
         }
      }
      
      public function §%"1§(param1:Object) : void
      {
         var _loc3_:§-!N§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§4$8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4$8§[_loc2_] as §-!N§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§7">§,this.§@`§);
               this.§4$8§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §8!s§() : void
      {
         var _loc1_:int = this.§4$8§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§4$8§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §'#c§(param1:Function, param2:Number, ... rest) : §!"8§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§!"8§ = new §!"8§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§-!N§ = §-!N§.starling_internal::§]"r§(param1,param2);
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
               _loc4_.§+O§(_loc5_,_loc6_ as Number);
            }
         }
         _loc4_.addEventListener(Event.§7">§,this.§@4§);
         this.add(_loc4_);
      }
      
      private function §@4§(param1:Event) : void
      {
         §-!N§.starling_internal::§0"<§(param1.target as §-!N§);
      }
      
      public function §'#F§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§;"=§ = null;
         if(this.§3#"§)
         {
            return;
         }
         var _loc2_:int = this.§4$8§.length;
         var _loc3_:int = 0;
         param1 *= this.§6$<§;
         this.§7p§ += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§4$8§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§4$8§[_loc3_] = _loc5_;
                  this.§4$8§[_loc4_] = null;
               }
               _loc5_.§'#F§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§4$8§.length;
            while(_loc4_ < _loc2_)
            {
               this.§4$8§[int(_loc3_++)] = this.§4$8§[int(_loc4_++)];
            }
            this.§4$8§.length = _loc3_;
         }
      }
      
      private function §@`§(param1:Event) : void
      {
         this.§4!v§(param1.target as §;"=§);
         var _loc2_:§-!N§ = param1.target as §-!N§;
         if(_loc2_ && _loc2_.§'#[§)
         {
            this.add(_loc2_.§ $B§);
         }
      }
      
      public function get §?V§() : Number
      {
         return this.§7p§;
      }
   }
}
