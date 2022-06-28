package §9N§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&l§ extends EventDispatcher implements §!o§
   {
       
      
      private var §"^§:Object;
      
      private var §6>§:String;
      
      private var §5!1§:Vector.<String>;
      
      private var §;f§:Vector.<Number>;
      
      private var §#L§:Vector.<Number>;
      
      private var §>'§:Function;
      
      private var § S§:Function;
      
      private var §8q§:Function;
      
      private var §%o§:Array;
      
      private var §`!F§:Array;
      
      private var §?i§:Array;
      
      private var §1I§:Number;
      
      private var §1!E§:Number;
      
      private var §1!-§:Number;
      
      private var §3!A§:Boolean;
      
      public function §&l§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§"^§ = param1;
         this.§1!E§ = 0;
         this.§1I§ = Math.max(0.0001,param2);
         this.§1!-§ = 0;
         this.§6>§ = param3;
         this.§3!A§ = false;
         this.§5!1§ = new Vector.<String>(0);
         this.§;f§ = new Vector.<Number>(0);
         this.§#L§ = new Vector.<Number>(0);
      }
      
      public function §&O§(param1:String, param2:Number) : void
      {
         if(this.§"^§ == null)
         {
            return;
         }
         this.§5!1§.push(param1);
         this.§;f§.push(Number.NaN);
         this.§#L§.push(param2);
      }
      
      public function §82§(param1:Number) : void
      {
         this.§&O§("scaleX",param1);
         this.§&O§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§&O§("x",param1);
         this.§&O§("y",param2);
      }
      
      public function §]l§(param1:Number) : void
      {
         this.§&O§("alpha",param1);
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
         var _loc2_:Number = this.§1!E§;
         this.§1!E§ += param1;
         if(this.§1!E§ < 0 || _loc2_ >= this.§1I§)
         {
            return;
         }
         if(this.§'#§ != null && _loc2_ <= 0 && this.§1!E§ >= 0)
         {
            this.§'#§.apply(null,this.§%o§);
         }
         var _loc3_:Number = Math.min(this.§1I§,this.§1!E§) / this.§1I§;
         var _loc4_:int = this.§;f§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§;f§[_loc5_]))
            {
               this.§;f§[_loc5_] = this.§"^§[this.§5!1§[_loc5_]] as Number;
            }
            _loc6_ = this.§;f§[_loc5_];
            _loc8_ = (_loc7_ = this.§#L§[_loc5_]) - _loc6_;
            _loc9_ = §>C§.§+!&§(this.§6>§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§3!A§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§"^§[this.§5!1§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§3!<§ != null)
         {
            this.§3!<§.apply(null,this.§`!F§);
         }
         if(_loc2_ < this.§1I§ && this.§1!E§ >= this.§1I§)
         {
            dispatchEvent(new Event(Event.§0=§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§?i§);
            }
         }
      }
      
      public function get §!D§() : Boolean
      {
         return this.§1!E§ >= this.§1I§;
      }
      
      public function get target() : Object
      {
         return this.§"^§;
      }
      
      public function get §+4§() : String
      {
         return this.§6>§;
      }
      
      public function get §2r§() : Number
      {
         return this.§1I§;
      }
      
      public function get currentTime() : Number
      {
         return this.§1!E§;
      }
      
      public function get delay() : Number
      {
         return this.§1!-§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1!E§ = this.§1!E§ + this.§1!-§ - param1;
         this.§1!-§ = param1;
      }
      
      public function get §;U§() : Boolean
      {
         return this.§3!A§;
      }
      
      public function set §;U§(param1:Boolean) : void
      {
         this.§3!A§ = param1;
      }
      
      public function get §'#§() : Function
      {
         return this.§>'§;
      }
      
      public function set §'#§(param1:Function) : void
      {
         this.§>'§ = param1;
      }
      
      public function get §3!<§() : Function
      {
         return this.§ S§;
      }
      
      public function set §3!<§(param1:Function) : void
      {
         this.§ S§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§8q§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§8q§ = param1;
      }
      
      public function get §2I§() : Array
      {
         return this.§%o§;
      }
      
      public function set §2I§(param1:Array) : void
      {
         this.§%o§ = param1;
      }
      
      public function get §2k§() : Array
      {
         return this.§`!F§;
      }
      
      public function set §2k§(param1:Array) : void
      {
         this.§`!F§ = param1;
      }
      
      public function get §"!6§() : Array
      {
         return this.§?i§;
      }
      
      public function set §"!6§(param1:Array) : void
      {
         this.§?i§ = param1;
      }
   }
}
