package § !"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2!=§ extends EventDispatcher implements §`!B§
   {
       
      
      private var § N§:Object;
      
      private var §4!#§:String;
      
      private var § t§:Vector.<String>;
      
      private var §^R§:Vector.<Number>;
      
      private var § _§:Vector.<Number>;
      
      private var §&S§:Function;
      
      private var §@-§:Function;
      
      private var §@P§:Function;
      
      private var §]$§:Array;
      
      private var §!Q§:Array;
      
      private var §'!8§:Array;
      
      private var §2F§:Number;
      
      private var §4N§:Number;
      
      private var §`]§:Number;
      
      private var §;Y§:Boolean;
      
      public function §2!=§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§ N§ = param1;
         this.§4N§ = 0;
         this.§2F§ = Math.max(0.0001,param2);
         this.§`]§ = 0;
         this.§4!#§ = param3;
         this.§;Y§ = false;
         this.§ t§ = new Vector.<String>(0);
         this.§^R§ = new Vector.<Number>(0);
         this.§ _§ = new Vector.<Number>(0);
      }
      
      public function §[5§(param1:String, param2:Number) : void
      {
         if(this.§ N§ == null)
         {
            return;
         }
         this.§ t§.push(param1);
         this.§^R§.push(Number.NaN);
         this.§ _§.push(param2);
      }
      
      public function §<r§(param1:Number) : void
      {
         this.§[5§("scaleX",param1);
         this.§[5§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§[5§("x",param1);
         this.§[5§("y",param2);
      }
      
      public function §;!H§(param1:Number) : void
      {
         this.§[5§("alpha",param1);
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
         var _loc2_:Number = this.§4N§;
         this.§4N§ += param1;
         if(this.§4N§ < 0 || _loc2_ >= this.§2F§)
         {
            return;
         }
         if(this.§&8§ != null && _loc2_ <= 0 && this.§4N§ >= 0)
         {
            this.§&8§.apply(null,this.§]$§);
         }
         var _loc3_:Number = Math.min(this.§2F§,this.§4N§) / this.§2F§;
         var _loc4_:int = this.§^R§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§^R§[_loc5_]))
            {
               this.§^R§[_loc5_] = this.§ N§[this.§ t§[_loc5_]] as Number;
            }
            _loc6_ = this.§^R§[_loc5_];
            _loc8_ = (_loc7_ = this.§ _§[_loc5_]) - _loc6_;
            _loc9_ = §+I§.§7d§(this.§4!#§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§;Y§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§ N§[this.§ t§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§;o§ != null)
         {
            this.§;o§.apply(null,this.§!Q§);
         }
         if(_loc2_ < this.§2F§ && this.§4N§ >= this.§2F§)
         {
            dispatchEvent(new Event(Event.§2D§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§'!8§);
            }
         }
      }
      
      public function get §'[§() : Boolean
      {
         return this.§4N§ >= this.§2F§;
      }
      
      public function get target() : Object
      {
         return this.§ N§;
      }
      
      public function get §1a§() : String
      {
         return this.§4!#§;
      }
      
      public function get §]!§() : Number
      {
         return this.§2F§;
      }
      
      public function get currentTime() : Number
      {
         return this.§4N§;
      }
      
      public function get delay() : Number
      {
         return this.§`]§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4N§ = this.§4N§ + this.§`]§ - param1;
         this.§`]§ = param1;
      }
      
      public function get §@!-§() : Boolean
      {
         return this.§;Y§;
      }
      
      public function set §@!-§(param1:Boolean) : void
      {
         this.§;Y§ = param1;
      }
      
      public function get §&8§() : Function
      {
         return this.§&S§;
      }
      
      public function set §&8§(param1:Function) : void
      {
         this.§&S§ = param1;
      }
      
      public function get §;o§() : Function
      {
         return this.§@-§;
      }
      
      public function set §;o§(param1:Function) : void
      {
         this.§@-§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§@P§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§@P§ = param1;
      }
      
      public function get §^q§() : Array
      {
         return this.§]$§;
      }
      
      public function set §^q§(param1:Array) : void
      {
         this.§]$§ = param1;
      }
      
      public function get §5N§() : Array
      {
         return this.§!Q§;
      }
      
      public function set §5N§(param1:Array) : void
      {
         this.§!Q§ = param1;
      }
      
      public function get §@a§() : Array
      {
         return this.§'!8§;
      }
      
      public function set §@a§(param1:Array) : void
      {
         this.§'!8§ = param1;
      }
   }
}
