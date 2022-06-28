package §"H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=j§ extends EventDispatcher implements §!7§
   {
       
      
      private var §#j§:Object;
      
      private var §;I§:String;
      
      private var §&!?§:Vector.<String>;
      
      private var §3"§:Vector.<Number>;
      
      private var §0!C§:Vector.<Number>;
      
      private var §[!o§:Function;
      
      private var §`!e§:Function;
      
      private var §3!U§:Function;
      
      private var §1[§:Array;
      
      private var §'!&§:Array;
      
      private var §7!+§:Array;
      
      private var §3!A§:Number;
      
      private var §9!r§:Number;
      
      private var §@z§:Number;
      
      private var §>!S§:Boolean;
      
      public function §=j§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§#j§ = param1;
         this.§9!r§ = 0;
         this.§3!A§ = Math.max(0.0001,param2);
         this.§@z§ = 0;
         this.§;I§ = param3;
         this.§>!S§ = false;
         this.§&!?§ = new Vector.<String>(0);
         this.§3"§ = new Vector.<Number>(0);
         this.§0!C§ = new Vector.<Number>(0);
      }
      
      public function §^,§(param1:String, param2:Number) : void
      {
         if(this.§#j§ == null)
         {
            return;
         }
         this.§&!?§.push(param1);
         this.§3"§.push(Number.NaN);
         this.§0!C§.push(param2);
      }
      
      public function §^c§(param1:Number) : void
      {
         this.§^,§("scaleX",param1);
         this.§^,§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§^,§("x",param1);
         this.§^,§("y",param2);
      }
      
      public function §+#§(param1:Number) : void
      {
         this.§^,§("alpha",param1);
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
         var _loc2_:Number = this.§9!r§;
         this.§9!r§ += param1;
         if(this.§9!r§ < 0 || _loc2_ >= this.§3!A§)
         {
            return;
         }
         if(this.§3!R§ != null && _loc2_ <= 0 && this.§9!r§ >= 0)
         {
            this.§3!R§.apply(null,this.§1[§);
         }
         var _loc3_:Number = Math.min(this.§3!A§,this.§9!r§) / this.§3!A§;
         var _loc4_:int = this.§3"§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§3"§[_loc5_]))
            {
               this.§3"§[_loc5_] = this.§#j§[this.§&!?§[_loc5_]] as Number;
            }
            _loc6_ = this.§3"§[_loc5_];
            _loc8_ = (_loc7_ = this.§0!C§[_loc5_]) - _loc6_;
            _loc9_ = §-]§.§!M§(this.§;I§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§>!S§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§#j§[this.§&!?§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§]!u§ != null)
         {
            this.§]!u§.apply(null,this.§'!&§);
         }
         if(_loc2_ < this.§3!A§ && this.§9!r§ >= this.§3!A§)
         {
            dispatchEvent(new Event(Event.§^U§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§7!+§);
            }
         }
      }
      
      public function get §+d§() : Boolean
      {
         return this.§9!r§ >= this.§3!A§;
      }
      
      public function get target() : Object
      {
         return this.§#j§;
      }
      
      public function get §7M§() : String
      {
         return this.§;I§;
      }
      
      public function get §3!&§() : Number
      {
         return this.§3!A§;
      }
      
      public function get §45§() : Number
      {
         return this.§9!r§;
      }
      
      public function get delay() : Number
      {
         return this.§@z§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§9!r§ = this.§9!r§ + this.§@z§ - param1;
         this.§@z§ = param1;
      }
      
      public function get §&![§() : Boolean
      {
         return this.§>!S§;
      }
      
      public function set §&![§(param1:Boolean) : void
      {
         this.§>!S§ = param1;
      }
      
      public function get §3!R§() : Function
      {
         return this.§[!o§;
      }
      
      public function set §3!R§(param1:Function) : void
      {
         this.§[!o§ = param1;
      }
      
      public function get §]!u§() : Function
      {
         return this.§`!e§;
      }
      
      public function set §]!u§(param1:Function) : void
      {
         this.§`!e§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§3!U§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§3!U§ = param1;
      }
      
      public function get §7x§() : Array
      {
         return this.§1[§;
      }
      
      public function set §7x§(param1:Array) : void
      {
         this.§1[§ = param1;
      }
      
      public function get §"r§() : Array
      {
         return this.§'!&§;
      }
      
      public function set §"r§(param1:Array) : void
      {
         this.§'!&§ = param1;
      }
      
      public function get §;@§() : Array
      {
         return this.§7!+§;
      }
      
      public function set §;@§(param1:Array) : void
      {
         this.§7!+§ = param1;
      }
   }
}
