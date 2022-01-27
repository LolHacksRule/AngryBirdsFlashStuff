package §[a§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9!i§ extends EventDispatcher implements §8"h§
   {
       
      
      private var §'"§:Object;
      
      private var §[#§:String;
      
      private var §"!6§:Vector.<String>;
      
      private var § "g§:Vector.<Number>;
      
      private var §5]§:Vector.<Number>;
      
      private var §4U§:Function;
      
      private var §^p§:Function;
      
      private var §^@§:Function;
      
      private var §4!I§:Array;
      
      private var §;J§:Array;
      
      private var §9"F§:Array;
      
      private var §0g§:Number;
      
      private var §;G§:Number;
      
      private var §']§:Number;
      
      private var §!t§:Boolean;
      
      public function §9!i§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§'"§ = param1;
         this.§;G§ = 0;
         this.§0g§ = Math.max(0.0001,param2);
         this.§']§ = 0;
         this.§[#§ = param3;
         this.§!t§ = false;
         this.§"!6§ = new Vector.<String>(0);
         this.§ "g§ = new Vector.<Number>(0);
         this.§5]§ = new Vector.<Number>(0);
      }
      
      public function §7!7§(param1:String, param2:Number) : void
      {
         if(this.§'"§ == null)
         {
            return;
         }
         this.§"!6§.push(param1);
         this.§ "g§.push(Number.NaN);
         this.§5]§.push(param2);
      }
      
      public function §4q§(param1:Number) : void
      {
         this.§7!7§("scaleX",param1);
         this.§7!7§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§7!7§("x",param1);
         this.§7!7§("y",param2);
      }
      
      public function §]!'§(param1:Number) : void
      {
         this.§7!7§("alpha",param1);
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
         var _loc2_:Number = this.§;G§;
         this.§;G§ += param1;
         if(this.§;G§ < 0 || _loc2_ >= this.§0g§)
         {
            return;
         }
         if(this.§<"V§ != null && _loc2_ <= 0 && this.§;G§ >= 0)
         {
            this.§<"V§.apply(null,this.§4!I§);
         }
         var _loc3_:Number = Math.min(this.§0g§,this.§;G§) / this.§0g§;
         var _loc4_:int = this.§ "g§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§ "g§[_loc5_]))
            {
               this.§ "g§[_loc5_] = this.§'"§[this.§"!6§[_loc5_]] as Number;
            }
            _loc6_ = this.§ "g§[_loc5_];
            _loc8_ = (_loc7_ = this.§5]§[_loc5_]) - _loc6_;
            _loc9_ = §""d§.§@4§(this.§[#§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§!t§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§'"§[this.§"!6§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§'%§ != null)
         {
            this.§'%§.apply(null,this.§;J§);
         }
         if(_loc2_ < this.§0g§ && this.§;G§ >= this.§0g§)
         {
            dispatchEvent(new Event(Event.§8"e§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§9"F§);
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.§;G§ >= this.§0g§;
      }
      
      public function get target() : Object
      {
         return this.§'"§;
      }
      
      public function get §%n§() : String
      {
         return this.§[#§;
      }
      
      public function get §^!g§() : Number
      {
         return this.§0g§;
      }
      
      public function get currentTime() : Number
      {
         return this.§;G§;
      }
      
      public function get delay() : Number
      {
         return this.§']§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§;G§ = this.§;G§ + this.§']§ - param1;
         this.§']§ = param1;
      }
      
      public function get §!!B§() : Boolean
      {
         return this.§!t§;
      }
      
      public function set §!!B§(param1:Boolean) : void
      {
         this.§!t§ = param1;
      }
      
      public function get §<"V§() : Function
      {
         return this.§4U§;
      }
      
      public function set §<"V§(param1:Function) : void
      {
         this.§4U§ = param1;
      }
      
      public function get §'%§() : Function
      {
         return this.§^p§;
      }
      
      public function set §'%§(param1:Function) : void
      {
         this.§^p§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§^@§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§^@§ = param1;
      }
      
      public function get §]%§() : Array
      {
         return this.§4!I§;
      }
      
      public function set §]%§(param1:Array) : void
      {
         this.§4!I§ = param1;
      }
      
      public function get §=!T§() : Array
      {
         return this.§;J§;
      }
      
      public function set §=!T§(param1:Array) : void
      {
         this.§;J§ = param1;
      }
      
      public function get §6Y§() : Array
      {
         return this.§9"F§;
      }
      
      public function set §6Y§(param1:Array) : void
      {
         this.§9"F§ = param1;
      }
   }
}
