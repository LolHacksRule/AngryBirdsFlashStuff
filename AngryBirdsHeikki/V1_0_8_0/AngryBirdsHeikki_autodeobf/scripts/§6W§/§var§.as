package §6W§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §var§ extends EventDispatcher implements §-B§
   {
       
      
      private var §8j§:Object;
      
      private var §9!`§:String;
      
      private var §#8§:Vector.<String>;
      
      private var §1j§:Vector.<Number>;
      
      private var §>!b§:Vector.<Number>;
      
      private var §!3§:Function;
      
      private var §%!A§:Function;
      
      private var §=L§:Function;
      
      private var §1!-§:Array;
      
      private var §8!c§:Array;
      
      private var §<!D§:Array;
      
      private var §,!B§:Number;
      
      private var §&h§:Number;
      
      private var §5L§:Number;
      
      private var §1P§:Boolean;
      
      public function §var§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§8j§ = param1;
         this.§&h§ = 0;
         this.§,!B§ = Math.max(0.0001,param2);
         this.§5L§ = 0;
         this.§9!`§ = param3;
         this.§1P§ = false;
         this.§#8§ = new Vector.<String>(0);
         this.§1j§ = new Vector.<Number>(0);
         this.§>!b§ = new Vector.<Number>(0);
      }
      
      public function §,!N§(param1:String, param2:Number) : void
      {
         if(this.§8j§ == null)
         {
            return;
         }
         this.§#8§.push(param1);
         this.§1j§.push(Number.NaN);
         this.§>!b§.push(param2);
      }
      
      public function §9x§(param1:Number) : void
      {
         this.§,!N§("scaleX",param1);
         this.§,!N§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§,!N§("x",param1);
         this.§,!N§("y",param2);
      }
      
      public function §8n§(param1:Number) : void
      {
         this.§,!N§("alpha",param1);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:Number = NaN;
         if(param1 == 0)
         {
            return;
         }
         var _loc2_:Number = this.§&h§;
         this.§&h§ += param1;
         if(this.§&h§ < 0 || _loc2_ >= this.§,!B§)
         {
            return;
         }
         if(this.§'!a§ != null && _loc2_ <= 0 && this.§&h§ >= 0)
         {
            this.§'!a§.apply(null,this.§1!-§);
         }
         var _loc3_:Number = Math.min(this.§,!B§,this.§&h§) / this.§,!B§;
         var _loc4_:int = this.§1j§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§1j§[_loc5_]))
            {
               this.§1j§[_loc5_] = this.§8j§[this.§#8§[_loc5_]] as Number;
            }
            _loc6_ = this.§1j§[_loc5_];
            _loc8_ = (_loc7_ = this.§>!b§[_loc5_]) - _loc6_;
            _loc9_ = § @§.§^!!§(this.§9!`§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§1P§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§8j§[this.§#8§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§]@§ != null)
         {
            this.§]@§.apply(null,this.§8!c§);
         }
         if(_loc2_ < this.§,!B§ && this.§&h§ >= this.§,!B§)
         {
            dispatchEvent(new Event(Event.§@j§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§<!D§);
            }
         }
      }
      
      public function get §;&§() : Boolean
      {
         return this.§&h§ >= this.§,!B§;
      }
      
      public function get target() : Object
      {
         return this.§8j§;
      }
      
      public function get §%v§() : String
      {
         return this.§9!`§;
      }
      
      public function get §7#§() : Number
      {
         return this.§,!B§;
      }
      
      public function get §5F§() : Number
      {
         return this.§&h§;
      }
      
      public function get delay() : Number
      {
         return this.§5L§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§&h§ = this.§&h§ + this.§5L§ - param1;
         this.§5L§ = param1;
      }
      
      public function get §,L§() : Boolean
      {
         return this.§1P§;
      }
      
      public function set §,L§(param1:Boolean) : void
      {
         this.§1P§ = param1;
      }
      
      public function get §'!a§() : Function
      {
         return this.§!3§;
      }
      
      public function set §'!a§(param1:Function) : void
      {
         this.§!3§ = param1;
      }
      
      public function get §]@§() : Function
      {
         return this.§%!A§;
      }
      
      public function set §]@§(param1:Function) : void
      {
         this.§%!A§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§=L§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§=L§ = param1;
      }
      
      public function get §<!A§() : Array
      {
         return this.§1!-§;
      }
      
      public function set §<!A§(param1:Array) : void
      {
         this.§1!-§ = param1;
      }
      
      public function get §30§() : Array
      {
         return this.§8!c§;
      }
      
      public function set §30§(param1:Array) : void
      {
         this.§8!c§ = param1;
      }
      
      public function get §=!M§() : Array
      {
         return this.§<!D§;
      }
      
      public function set §=!M§(param1:Array) : void
      {
         this.§<!D§ = param1;
      }
   }
}
