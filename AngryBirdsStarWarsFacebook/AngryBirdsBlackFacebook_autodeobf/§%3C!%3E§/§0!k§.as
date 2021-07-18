package §<!>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §0!k§ extends EventDispatcher implements § §
   {
       
      
      private var §%!c§:Object;
      
      private var §7!=§:String;
      
      private var § O§:Vector.<String>;
      
      private var §5!w§:Vector.<Number>;
      
      private var §0"m§:Vector.<Number>;
      
      private var §!"R§:Function;
      
      private var §4#8§:Function;
      
      private var §;!S§:Function;
      
      private var §5!8§:Array;
      
      private var §1"^§:Array;
      
      private var §'#J§:Array;
      
      private var §0"=§:Number;
      
      private var §'!<§:Number;
      
      private var §7!+§:Number;
      
      private var §0"W§:Boolean;
      
      public function §0!k§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§%!c§ = param1;
         this.§'!<§ = 0;
         this.§0"=§ = Math.max(0.0001,param2);
         this.§7!+§ = 0;
         this.§7!=§ = param3;
         this.§0"W§ = false;
         this.§ O§ = new Vector.<String>(0);
         this.§5!w§ = new Vector.<Number>(0);
         this.§0"m§ = new Vector.<Number>(0);
      }
      
      public function §;!R§(param1:String, param2:Number) : void
      {
         if(this.§%!c§ == null)
         {
            return;
         }
         this.§ O§.push(param1);
         this.§5!w§.push(Number.NaN);
         this.§0"m§.push(param2);
      }
      
      public function §&#V§(param1:Number) : void
      {
         this.§;!R§("scaleX",param1);
         this.§;!R§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§;!R§("x",param1);
         this.§;!R§("y",param2);
      }
      
      public function §0"§(param1:Number) : void
      {
         this.§;!R§("alpha",param1);
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
         var _loc2_:Number = this.§'!<§;
         this.§'!<§ += param1;
         if(this.§'!<§ < 0 || _loc2_ >= this.§0"=§)
         {
            return;
         }
         if(this.§0!X§ != null && _loc2_ <= 0 && this.§'!<§ >= 0)
         {
            this.§0!X§.apply(null,this.§5!8§);
         }
         var _loc3_:Number = Math.min(this.§0"=§,this.§'!<§) / this.§0"=§;
         var _loc4_:int = this.§5!w§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§5!w§[_loc5_]))
            {
               this.§5!w§[_loc5_] = this.§%!c§[this.§ O§[_loc5_]] as Number;
            }
            _loc6_ = this.§5!w§[_loc5_];
            _loc8_ = (_loc7_ = this.§0"m§[_loc5_]) - _loc6_;
            _loc9_ = §!#'§.§3"-§(this.§7!=§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§0"W§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§%!c§[this.§ O§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§""^§ != null)
         {
            this.§""^§.apply(null,this.§1"^§);
         }
         if(_loc2_ < this.§0"=§ && this.§'!<§ >= this.§0"=§)
         {
            dispatchEvent(new Event(Event.§&!T§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§'#J§);
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.§'!<§ >= this.§0"=§;
      }
      
      public function get target() : Object
      {
         return this.§%!c§;
      }
      
      public function get §,!+§() : String
      {
         return this.§7!=§;
      }
      
      public function get §,!@§() : Number
      {
         return this.§0"=§;
      }
      
      public function get currentTime() : Number
      {
         return this.§'!<§;
      }
      
      public function get delay() : Number
      {
         return this.§7!+§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'!<§ = this.§'!<§ + this.§7!+§ - param1;
         this.§7!+§ = param1;
      }
      
      public function get §;!o§() : Boolean
      {
         return this.§0"W§;
      }
      
      public function set §;!o§(param1:Boolean) : void
      {
         this.§0"W§ = param1;
      }
      
      public function get §0!X§() : Function
      {
         return this.§!"R§;
      }
      
      public function set §0!X§(param1:Function) : void
      {
         this.§!"R§ = param1;
      }
      
      public function get §""^§() : Function
      {
         return this.§4#8§;
      }
      
      public function set §""^§(param1:Function) : void
      {
         this.§4#8§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§;!S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§;!S§ = param1;
      }
      
      public function get §4W§() : Array
      {
         return this.§5!8§;
      }
      
      public function set §4W§(param1:Array) : void
      {
         this.§5!8§ = param1;
      }
      
      public function get §8"K§() : Array
      {
         return this.§1"^§;
      }
      
      public function set §8"K§(param1:Array) : void
      {
         this.§1"^§ = param1;
      }
      
      public function get §]!0§() : Array
      {
         return this.§'#J§;
      }
      
      public function set §]!0§(param1:Array) : void
      {
         this.§'#J§ = param1;
      }
   }
}
