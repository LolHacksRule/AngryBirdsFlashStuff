package §;"K§
{
   import §1P§.Event;
   import §9+§.starling_internal;
   
   public class §-!x§ implements §5#$§
   {
       
      
      private var §2!E§:Vector.<§5#$§>;
      
      private var §!C§:Number;
      
      private var § !#§:Boolean = false;
      
      private var §+!,§:Number = 1.0;
      
      public function §-!x§()
      {
         super();
         this.§!C§ = 0;
         this.§2!E§ = new Vector.<§5#$§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§+!,§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§ !#§ = param1;
      }
      
      public function add(param1:§5#$§) : void
      {
         if(param1 && this.§2!E§.indexOf(param1) == -1)
         {
            this.§2!E§.push(param1);
         }
      }
      
      public function contains(param1:§5#$§) : Boolean
      {
         return this.§2!E§.indexOf(param1) != -1;
      }
      
      public function §>5§(param1:§5#$§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§2!E§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§2!E§[_loc2_] = null;
         }
      }
      
      public function §8v§(param1:Object) : void
      {
         var _loc3_:§7"k§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§2!E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!E§[_loc2_] as §7"k§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§ #X§,this.§@#R§);
               this.§2!E§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §^!z§() : void
      {
         var _loc1_:int = this.§2!E§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§2!E§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §]!c§(param1:Function, param2:Number, ... rest) : §;#H§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§;#H§ = new §;#H§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§7"k§ = §7"k§.starling_internal::§=+§(param1,param2);
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
               _loc4_.§>"`§(_loc5_,_loc6_ as Number);
            }
         }
         _loc4_.addEventListener(Event.§ #X§,this.§6"B§);
         this.add(_loc4_);
      }
      
      private function §6"B§(param1:Event) : void
      {
         §7"k§.starling_internal::§"#p§(param1.target as §7"k§);
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§5#$§ = null;
         if(this.§ !#§)
         {
            return;
         }
         var _loc2_:int = this.§2!E§.length;
         var _loc3_:int = 0;
         param1 *= this.§+!,§;
         this.§!C§ += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§2!E§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§2!E§[_loc3_] = _loc5_;
                  this.§2!E§[_loc4_] = null;
               }
               _loc5_.§2!X§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§2!E§.length;
            while(_loc4_ < _loc2_)
            {
               this.§2!E§[int(_loc3_++)] = this.§2!E§[int(_loc4_++)];
            }
            this.§2!E§.length = _loc3_;
         }
      }
      
      private function §@#R§(param1:Event) : void
      {
         this.§>5§(param1.target as §5#$§);
         var _loc2_:§7"k§ = param1.target as §7"k§;
         if(_loc2_ && _loc2_.§6#N§)
         {
            this.add(_loc2_.§7#q§);
         }
      }
      
      public function get §,^§() : Number
      {
         return this.§!C§;
      }
   }
}
