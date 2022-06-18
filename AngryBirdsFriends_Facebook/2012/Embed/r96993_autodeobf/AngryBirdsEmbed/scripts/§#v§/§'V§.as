package §#v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §'V§ extends EventDispatcher implements §-l§
   {
       
      
      private var §&P§:Object;
      
      private var §8!3§:String;
      
      private var §#8§:Vector.<String>;
      
      private var § J§:Vector.<Number>;
      
      private var §`2§:Vector.<Number>;
      
      private var §?K§:Function;
      
      private var §+N§:Function;
      
      private var §[@§:Function;
      
      private var §5!D§:Array;
      
      private var §1A§:Array;
      
      private var §6q§:Array;
      
      private var §for§:Number;
      
      private var §'!;§:Number;
      
      private var §?,§:Number;
      
      private var §5§:Boolean;
      
      public function §'V§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&P§ = param1;
         this.§'!;§ = 0;
         this.§for§ = Math.max(0.0001,param2);
         this.§?,§ = 0;
         this.§8!3§ = param3;
         this.§5§ = false;
         this.§#8§ = new Vector.<String>(0);
         this.§ J§ = new Vector.<Number>(0);
         this.§`2§ = new Vector.<Number>(0);
      }
      
      public function §0!9§(param1:String, param2:Number) : void
      {
         if(this.§&P§ == null)
         {
            return;
         }
         this.§#8§.push(param1);
         this.§ J§.push(Number.NaN);
         this.§`2§.push(param2);
      }
      
      public function §<<§(param1:Number) : void
      {
         this.§0!9§("scaleX",param1);
         this.§0!9§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§0!9§("x",param1);
         this.§0!9§("y",param2);
      }
      
      public function §2^§(param1:Number) : void
      {
         this.§0!9§("alpha",param1);
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
         var _loc2_:Number = this.§'!;§;
         this.§'!;§ += param1;
         if(this.§'!;§ < 0 || _loc2_ >= this.§for§)
         {
            return;
         }
         if(this.§^M§ != null && _loc2_ <= 0 && this.§'!;§ >= 0)
         {
            this.§^M§.apply(null,this.§5!D§);
         }
         var _loc3_:Number = Math.min(this.§for§,this.§'!;§) / this.§for§;
         var _loc4_:int = this.§ J§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§ J§[_loc5_]))
            {
               this.§ J§[_loc5_] = this.§&P§[this.§#8§[_loc5_]] as Number;
            }
            _loc6_ = this.§ J§[_loc5_];
            _loc8_ = (_loc7_ = this.§`2§[_loc5_]) - _loc6_;
            _loc9_ = §?!;§.§7!8§(this.§8!3§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§5§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&P§[this.§#8§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§'!!§ != null)
         {
            this.§'!!§.apply(null,this.§1A§);
         }
         if(_loc2_ < this.§for§ && this.§'!;§ >= this.§for§)
         {
            dispatchEvent(new Event(Event.§]I§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§6q§);
            }
         }
      }
      
      public function get §"B§() : Boolean
      {
         return this.§'!;§ >= this.§for§;
      }
      
      public function get target() : Object
      {
         return this.§&P§;
      }
      
      public function get §8!7§() : String
      {
         return this.§8!3§;
      }
      
      public function get §1t§() : Number
      {
         return this.§for§;
      }
      
      public function get currentTime() : Number
      {
         return this.§'!;§;
      }
      
      public function get delay() : Number
      {
         return this.§?,§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'!;§ = this.§'!;§ + this.§?,§ - param1;
         this.§?,§ = param1;
      }
      
      public function get §3<§() : Boolean
      {
         return this.§5§;
      }
      
      public function set §3<§(param1:Boolean) : void
      {
         this.§5§ = param1;
      }
      
      public function get §^M§() : Function
      {
         return this.§?K§;
      }
      
      public function set §^M§(param1:Function) : void
      {
         this.§?K§ = param1;
      }
      
      public function get §'!!§() : Function
      {
         return this.§+N§;
      }
      
      public function set §'!!§(param1:Function) : void
      {
         this.§+N§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§[@§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§[@§ = param1;
      }
      
      public function get §%x§() : Array
      {
         return this.§5!D§;
      }
      
      public function set §%x§(param1:Array) : void
      {
         this.§5!D§ = param1;
      }
      
      public function get §+-§() : Array
      {
         return this.§1A§;
      }
      
      public function set §+-§(param1:Array) : void
      {
         this.§1A§ = param1;
      }
      
      public function get §`+§() : Array
      {
         return this.§6q§;
      }
      
      public function set §`+§(param1:Array) : void
      {
         this.§6q§ = param1;
      }
   }
}
