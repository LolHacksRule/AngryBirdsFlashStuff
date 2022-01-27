package §+!Q§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8q§ extends EventDispatcher implements §;!S§
   {
       
      
      private var §+!>§:Object;
      
      private var §,"4§:String;
      
      private var §!"6§:Vector.<String>;
      
      private var §=!>§:Vector.<Number>;
      
      private var §[!^§:Vector.<Number>;
      
      private var §+,§:Function;
      
      private var §7i§:Function;
      
      private var §5A§:Function;
      
      private var §[!V§:Array;
      
      private var §>!m§:Array;
      
      private var §!K§:Array;
      
      private var §7F§:Number;
      
      private var §4T§:Number;
      
      private var §8"!§:Number;
      
      private var §,"0§:Boolean;
      
      public function §8q§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+!>§ = param1;
         this.§4T§ = 0;
         this.§7F§ = Math.max(0.0001,param2);
         this.§8"!§ = 0;
         this.§,"4§ = param3;
         this.§,"0§ = false;
         this.§!"6§ = new Vector.<String>(0);
         this.§=!>§ = new Vector.<Number>(0);
         this.§[!^§ = new Vector.<Number>(0);
      }
      
      public function §=$§(param1:String, param2:Number) : void
      {
         if(this.§+!>§ == null)
         {
            return;
         }
         this.§!"6§.push(param1);
         this.§=!>§.push(Number.NaN);
         this.§[!^§.push(param2);
      }
      
      public function §4U§(param1:Number) : void
      {
         this.§=$§("scaleX",param1);
         this.§=$§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§=$§("x",param1);
         this.§=$§("y",param2);
      }
      
      public function §<!x§(param1:Number) : void
      {
         this.§=$§("alpha",param1);
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
         var _loc2_:Number = this.§4T§;
         this.§4T§ += param1;
         if(this.§4T§ < 0 || _loc2_ >= this.§7F§)
         {
            return;
         }
         if(this.§6u§ != null && _loc2_ <= 0 && this.§4T§ >= 0)
         {
            this.§6u§.apply(null,this.§[!V§);
         }
         var _loc3_:Number = Math.min(this.§7F§,this.§4T§) / this.§7F§;
         var _loc4_:int = this.§=!>§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§=!>§[_loc5_]))
            {
               this.§=!>§[_loc5_] = this.§+!>§[this.§!"6§[_loc5_]] as Number;
            }
            _loc6_ = this.§=!>§[_loc5_];
            _loc8_ = (_loc7_ = this.§[!^§[_loc5_]) - _loc6_;
            _loc9_ = §2" §.§5R§(this.§,"4§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§,"0§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+!>§[this.§!"6§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§>!<§ != null)
         {
            this.§>!<§.apply(null,this.§>!m§);
         }
         if(_loc2_ < this.§7F§ && this.§4T§ >= this.§7F§)
         {
            dispatchEvent(new Event(Event.§[!y§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§!K§);
            }
         }
      }
      
      public function get §9s§() : Boolean
      {
         return this.§4T§ >= this.§7F§;
      }
      
      public function get target() : Object
      {
         return this.§+!>§;
      }
      
      public function get §=?§() : String
      {
         return this.§,"4§;
      }
      
      public function get §<!1§() : Number
      {
         return this.§7F§;
      }
      
      public function get §0"8§() : Number
      {
         return this.§4T§;
      }
      
      public function get delay() : Number
      {
         return this.§8"!§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4T§ = this.§4T§ + this.§8"!§ - param1;
         this.§8"!§ = param1;
      }
      
      public function get §>-§() : Boolean
      {
         return this.§,"0§;
      }
      
      public function set §>-§(param1:Boolean) : void
      {
         this.§,"0§ = param1;
      }
      
      public function get §6u§() : Function
      {
         return this.§+,§;
      }
      
      public function set §6u§(param1:Function) : void
      {
         this.§+,§ = param1;
      }
      
      public function get §>!<§() : Function
      {
         return this.§7i§;
      }
      
      public function set §>!<§(param1:Function) : void
      {
         this.§7i§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§5A§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§5A§ = param1;
      }
      
      public function get § !?§() : Array
      {
         return this.§[!V§;
      }
      
      public function set § !?§(param1:Array) : void
      {
         this.§[!V§ = param1;
      }
      
      public function get §'U§() : Array
      {
         return this.§>!m§;
      }
      
      public function set §'U§(param1:Array) : void
      {
         this.§>!m§ = param1;
      }
      
      public function get §6!o§() : Array
      {
         return this.§!K§;
      }
      
      public function set §6!o§(param1:Array) : void
      {
         this.§!K§ = param1;
      }
   }
}
