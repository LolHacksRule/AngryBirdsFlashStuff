package §0g§
{
   import §!$;§.Event;
   import §'!j§.starling_internal;
   
   public class §6!W§ implements §'"P§
   {
       
      
      private var §,N§:Vector.<§'"P§>;
      
      private var §@! §:Number;
      
      private var §+"q§:Boolean = false;
      
      private var §4"W§:Number = 1.0;
      
      public function §6!W§()
      {
         super();
         this.§@! § = 0;
         this.§,N§ = new Vector.<§'"P§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4"W§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§+"q§ = param1;
      }
      
      public function add(param1:§'"P§) : void
      {
         if(param1 && this.§,N§.indexOf(param1) == -1)
         {
            this.§,N§.push(param1);
         }
      }
      
      public function contains(param1:§'"P§) : Boolean
      {
         return this.§,N§.indexOf(param1) != -1;
      }
      
      public function §>L§(param1:§'"P§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,N§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§,N§[_loc2_] = null;
         }
      }
      
      public function §-#x§(param1:Object) : void
      {
         var _loc3_:§`!f§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§,N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,N§[_loc2_] as §`!f§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§>#R§,this.§]!]§);
               this.§,N§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §9!'§() : void
      {
         var _loc1_:int = this.§,N§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§,N§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §#"G§(param1:Function, param2:Number, ... rest) : §]P§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§]P§ = new §]P§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§`!f§ = §`!f§.starling_internal::§-"+§(param1,param2);
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
               _loc4_.§6"]§(_loc5_,_loc6_ as Number);
            }
         }
         _loc4_.addEventListener(Event.§>#R§,this.§3&§);
         this.add(_loc4_);
      }
      
      private function §3&§(param1:Event) : void
      {
         §`!f§.starling_internal::§"$2§(param1.target as §`!f§);
      }
      
      public function §-"%§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§'"P§ = null;
         if(this.§+"q§)
         {
            return;
         }
         var _loc2_:int = this.§,N§.length;
         var _loc3_:int = 0;
         param1 *= this.§4"W§;
         this.§@! § += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§,N§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§,N§[_loc3_] = _loc5_;
                  this.§,N§[_loc4_] = null;
               }
               _loc5_.§-"%§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§,N§.length;
            while(_loc4_ < _loc2_)
            {
               this.§,N§[int(_loc3_++)] = this.§,N§[int(_loc4_++)];
            }
            this.§,N§.length = _loc3_;
         }
      }
      
      private function §]!]§(param1:Event) : void
      {
         this.§>L§(param1.target as §'"P§);
         var _loc2_:§`!f§ = param1.target as §`!f§;
         if(_loc2_ && _loc2_.§"$C§)
         {
            this.add(_loc2_.§-!1§);
         }
      }
      
      public function get §^i§() : Number
      {
         return this.§@! §;
      }
   }
}
