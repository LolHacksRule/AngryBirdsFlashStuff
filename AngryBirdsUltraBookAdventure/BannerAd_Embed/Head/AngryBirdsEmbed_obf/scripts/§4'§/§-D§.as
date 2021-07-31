package §4'§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-D§ extends EventDispatcher implements §9N§
   {
       
      
      private var §&l§:Object;
      
      private var §"^§:String;
      
      private var §6>§:Vector.<String>;
      
      private var §5!1§:Vector.<Number>;
      
      private var §;f§:Vector.<Number>;
      
      private var §#L§:Function;
      
      private var §>'§:Function;
      
      private var § S§:Function;
      
      private var §8q§:Array;
      
      private var §%o§:Array;
      
      private var §`!F§:Array;
      
      private var §1!E§:Number;
      
      private var §!H§:Number;
      
      private var §?i§:Number;
      
      private var §1!-§:Boolean;
      
      public function §-D§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&l§ = param1;
         this.§!H§ = 0;
         this.§1!E§ = Math.max(0.0001,param2);
         this.§?i§ = 0;
         this.§"^§ = param3;
         this.§1!-§ = false;
         this.§6>§ = new Vector.<String>(0);
         this.§5!1§ = new Vector.<Number>(0);
         this.§;f§ = new Vector.<Number>(0);
      }
      
      public function §3!A§(param1:String, param2:Number) : void
      {
         if(this.§&l§ == null)
         {
            return;
         }
         this.§6>§.push(param1);
         this.§5!1§.push(Number.NaN);
         this.§;f§.push(param2);
      }
      
      public function §&O§(param1:Number) : void
      {
         this.§3!A§("scaleX",param1);
         this.§3!A§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§3!A§("x",param1);
         this.§3!A§("y",param2);
      }
      
      public function §82§(param1:Number) : void
      {
         this.§3!A§("alpha",param1);
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
         var _loc2_:Number = this.§!H§;
         this.§!H§ += param1;
         if(this.§!H§ < 0 || _loc2_ >= this.§1!E§)
         {
            return;
         }
         if(this.§;U§ != null && _loc2_ <= 0 && this.§!H§ >= 0)
         {
            this.§;U§.apply(null,this.§8q§);
         }
         var _loc3_:Number = Math.min(this.§1!E§,this.§!H§) / this.§1!E§;
         var _loc4_:int = this.§5!1§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§5!1§[_loc5_]))
            {
               this.§5!1§[_loc5_] = this.§&l§[this.§6>§[_loc5_]] as Number;
            }
            _loc6_ = this.§5!1§[_loc5_];
            _loc8_ = (_loc7_ = this.§;f§[_loc5_]) - _loc6_;
            _loc9_ = §"!6§.§@+§(this.§"^§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§1!-§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&l§[this.§6>§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§'#§ != null)
         {
            this.§'#§.apply(null,this.§%o§);
         }
         if(_loc2_ < this.§1!E§ && this.§!H§ >= this.§1!E§)
         {
            dispatchEvent(new Event(Event.§#!7§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§`!F§);
            }
         }
      }
      
      public function get §=<§() : Boolean
      {
         return this.§!H§ >= this.§1!E§;
      }
      
      public function get target() : Object
      {
         return this.§&l§;
      }
      
      public function get §]l§() : String
      {
         return this.§"^§;
      }
      
      public function get §!D§() : Number
      {
         return this.§1!E§;
      }
      
      public function get currentTime() : Number
      {
         return this.§!H§;
      }
      
      public function get delay() : Number
      {
         return this.§?i§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!H§ = this.§!H§ + this.§?i§ - param1;
         this.§?i§ = param1;
      }
      
      public function get §+4§() : Boolean
      {
         return this.§1!-§;
      }
      
      public function set §+4§(param1:Boolean) : void
      {
         this.§1!-§ = param1;
      }
      
      public function get §;U§() : Function
      {
         return this.§#L§;
      }
      
      public function set §;U§(param1:Function) : void
      {
         this.§#L§ = param1;
      }
      
      public function get §'#§() : Function
      {
         return this.§>'§;
      }
      
      public function set §'#§(param1:Function) : void
      {
         this.§>'§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§ S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§ S§ = param1;
      }
      
      public function get §3!<§() : Array
      {
         return this.§8q§;
      }
      
      public function set §3!<§(param1:Array) : void
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
   }
}
