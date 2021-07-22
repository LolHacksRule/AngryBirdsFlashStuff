package §+"Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §4! § extends EventDispatcher implements §]g§
   {
       
      
      private var §1"'§:Object;
      
      private var §+-§:String;
      
      private var §2!c§:Vector.<String>;
      
      private var §`v§:Vector.<Number>;
      
      private var §1"+§:Vector.<Number>;
      
      private var §4=§:Function;
      
      private var §6"I§:Function;
      
      private var §[!r§:Function;
      
      private var §0!@§:Array;
      
      private var §'!z§:Array;
      
      private var §7",§:Array;
      
      private var §6!<§:Number;
      
      private var §4!;§:Number;
      
      private var §!"U§:Number;
      
      private var §-";§:Boolean;
      
      public function §4! §(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§1"'§ = param1;
         this.§4!;§ = 0;
         this.§6!<§ = Math.max(0.0001,param2);
         this.§!"U§ = 0;
         this.§+-§ = param3;
         this.§-";§ = false;
         this.§2!c§ = new Vector.<String>(0);
         this.§`v§ = new Vector.<Number>(0);
         this.§1"+§ = new Vector.<Number>(0);
      }
      
      public function §7!?§(param1:String, param2:Number) : void
      {
         if(this.§1"'§ == null)
         {
            return;
         }
         this.§2!c§.push(param1);
         this.§`v§.push(Number.NaN);
         this.§1"+§.push(param2);
      }
      
      public function §%"!§(param1:Number) : void
      {
         this.§7!?§("scaleX",param1);
         this.§7!?§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§7!?§("x",param1);
         this.§7!?§("y",param2);
      }
      
      public function §8!3§(param1:Number) : void
      {
         this.§7!?§("alpha",param1);
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
         var _loc2_:Number = this.§4!;§;
         this.§4!;§ += param1;
         if(this.§4!;§ < 0 || _loc2_ >= this.§6!<§)
         {
            return;
         }
         if(this.§<"Y§ != null && _loc2_ <= 0 && this.§4!;§ >= 0)
         {
            this.§<"Y§.apply(null,this.§0!@§);
         }
         var _loc3_:Number = Math.min(this.§6!<§,this.§4!;§) / this.§6!<§;
         var _loc4_:int = this.§`v§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§`v§[_loc5_]))
            {
               this.§`v§[_loc5_] = this.§1"'§[this.§2!c§[_loc5_]] as Number;
            }
            _loc6_ = this.§`v§[_loc5_];
            _loc8_ = (_loc7_ = this.§1"+§[_loc5_]) - _loc6_;
            _loc9_ = §4!5§.§5"F§(this.§+-§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§-";§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§1"'§[this.§2!c§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§!"E§ != null)
         {
            this.§!"E§.apply(null,this.§'!z§);
         }
         if(_loc2_ < this.§6!<§ && this.§4!;§ >= this.§6!<§)
         {
            dispatchEvent(new Event(Event.§'J§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§7",§);
            }
         }
      }
      
      public function get §[9§() : Boolean
      {
         return this.§4!;§ >= this.§6!<§;
      }
      
      public function get target() : Object
      {
         return this.§1"'§;
      }
      
      public function get §^!w§() : String
      {
         return this.§+-§;
      }
      
      public function get §4!3§() : Number
      {
         return this.§6!<§;
      }
      
      public function get §42§() : Number
      {
         return this.§4!;§;
      }
      
      public function get delay() : Number
      {
         return this.§!"U§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4!;§ = this.§4!;§ + this.§!"U§ - param1;
         this.§!"U§ = param1;
      }
      
      public function get §#u§() : Boolean
      {
         return this.§-";§;
      }
      
      public function set §#u§(param1:Boolean) : void
      {
         this.§-";§ = param1;
      }
      
      public function get §<"Y§() : Function
      {
         return this.§4=§;
      }
      
      public function set §<"Y§(param1:Function) : void
      {
         this.§4=§ = param1;
      }
      
      public function get §!"E§() : Function
      {
         return this.§6"I§;
      }
      
      public function set §!"E§(param1:Function) : void
      {
         this.§6"I§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§[!r§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§[!r§ = param1;
      }
      
      public function get §>`§() : Array
      {
         return this.§0!@§;
      }
      
      public function set §>`§(param1:Array) : void
      {
         this.§0!@§ = param1;
      }
      
      public function get §+§() : Array
      {
         return this.§'!z§;
      }
      
      public function set §+§(param1:Array) : void
      {
         this.§'!z§ = param1;
      }
      
      public function get §;-§() : Array
      {
         return this.§7",§;
      }
      
      public function set §;-§(param1:Array) : void
      {
         this.§7",§ = param1;
      }
   }
}
