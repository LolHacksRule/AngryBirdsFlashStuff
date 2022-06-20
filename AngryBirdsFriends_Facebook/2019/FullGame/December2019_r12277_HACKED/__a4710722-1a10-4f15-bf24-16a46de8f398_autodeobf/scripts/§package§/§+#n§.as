package §package§
{
   import §&§.starling_internal;
   import §<!S§.Event;
   
   public class §+#n§ implements §1#;§
   {
       
      
      private var §!#4§:Vector.<§1#;§>;
      
      private var §1#h§:Number;
      
      private var §6x§:Boolean = false;
      
      private var §+#9§:Number = 1.0;
      
      public function §+#n§()
      {
         super();
         this.§1#h§ = 0;
         this.§!#4§ = new Vector.<§1#;§>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.§+#9§ = param1;
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.§6x§ = param1;
      }
      
      public function add(param1:§1#;§) : void
      {
         if(param1 && this.§!#4§.indexOf(param1) == -1)
         {
            this.§!#4§.push(param1);
         }
      }
      
      public function contains(param1:§1#;§) : Boolean
      {
         return this.§!#4§.indexOf(param1) != -1;
      }
      
      public function §`$0§(param1:§1#;§) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§!#4§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§!#4§[_loc2_] = null;
         }
      }
      
      public function §-"L§(param1:Object) : void
      {
         var _loc3_:§[#`§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.§!#4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!#4§[_loc2_] as §[#`§;
            if(_loc3_ && _loc3_.target == param1)
            {
               _loc3_.removeEventListener(Event.§`!5§,this.§<#e§);
               this.§!#4§[_loc2_] = null;
            }
            _loc2_--;
         }
      }
      
      public function §]!U§() : void
      {
         var _loc1_:int = this.§!#4§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§!#4§[_loc1_] = null;
            _loc1_--;
         }
      }
      
      public function §7#G§(param1:Function, param2:Number, ... rest) : §#"o§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§#"o§ = new §#"o§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function tween(param1:Object, param2:Number, param3:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:Object = null;
         var _loc4_:§[#`§ = §[#`§.starling_internal::§!4§(param1,param2);
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
               _loc4_.§'#v§(_loc5_,_loc6_ as Number);
            }
         }
         _loc4_.addEventListener(Event.§`!5§,this.§%$>§);
         this.add(_loc4_);
      }
      
      private function §%$>§(param1:Event) : void
      {
         §[#`§.starling_internal::§-!3§(param1.target as §[#`§);
      }
      
      public function §["[§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§1#;§ = null;
         if(this.§6x§)
         {
            return;
         }
         var _loc2_:int = this.§!#4§.length;
         var _loc3_:int = 0;
         param1 *= this.§+#9§;
         this.§1#h§ += param1;
         if(_loc2_ == 0)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc5_ = this.§!#4§[_loc4_])
            {
               if(_loc3_ != _loc4_)
               {
                  this.§!#4§[_loc3_] = _loc5_;
                  this.§!#4§[_loc4_] = null;
               }
               _loc5_.§["[§(param1);
               _loc3_++;
            }
            _loc4_++;
         }
         if(_loc3_ != _loc4_)
         {
            _loc2_ = this.§!#4§.length;
            while(_loc4_ < _loc2_)
            {
               this.§!#4§[int(_loc3_++)] = this.§!#4§[int(_loc4_++)];
            }
            this.§!#4§.length = _loc3_;
         }
      }
      
      private function §<#e§(param1:Event) : void
      {
         this.§`$0§(param1.target as §1#;§);
         var _loc2_:§[#`§ = param1.target as §[#`§;
         if(_loc2_ && _loc2_.§?#^§)
         {
            this.add(_loc2_.§9!K§);
         }
      }
      
      public function get §>0§() : Number
      {
         return this.§1#h§;
      }
   }
}
