package §7!8§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?L§ extends EventDispatcher implements §2s§
   {
       
      
      private var §4!v§:Object;
      
      private var §]! §:String;
      
      private var §[k§:Vector.<String>;
      
      private var §0`§:Vector.<Number>;
      
      private var §`e§:Vector.<Number>;
      
      private var §4!+§:Function;
      
      private var §""G§:Function;
      
      private var §9!]§:Function;
      
      private var §94§:Array;
      
      private var §+E§:Array;
      
      private var §3!B§:Array;
      
      private var §=!G§:Number;
      
      private var §^0§:Number;
      
      private var §^F§:Number;
      
      private var §5"1§:Boolean;
      
      public function §?L§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§4!v§ = param1;
         this.§^0§ = 0;
         this.§=!G§ = Math.max(0.0001,param2);
         this.§^F§ = 0;
         this.§]! § = param3;
         this.§5"1§ = false;
         this.§[k§ = new Vector.<String>(0);
         this.§0`§ = new Vector.<Number>(0);
         this.§`e§ = new Vector.<Number>(0);
      }
      
      public function § !@§(param1:String, param2:Number) : void
      {
         if(this.§4!v§ == null)
         {
            return;
         }
         this.§[k§.push(param1);
         this.§0`§.push(Number.NaN);
         this.§`e§.push(param2);
      }
      
      public function §0"1§(param1:Number) : void
      {
         this.§ !@§("scaleX",param1);
         this.§ !@§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§ !@§("x",param1);
         this.§ !@§("y",param2);
      }
      
      public function § !]§(param1:Number) : void
      {
         this.§ !@§("alpha",param1);
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
         var _loc2_:Number = this.§^0§;
         this.§^0§ += param1;
         if(this.§^0§ < 0 || _loc2_ >= this.§=!G§)
         {
            return;
         }
         if(this.§5!8§ != null && _loc2_ <= 0 && this.§^0§ >= 0)
         {
            this.§5!8§.apply(null,this.§94§);
         }
         var _loc3_:Number = Math.min(this.§=!G§,this.§^0§) / this.§=!G§;
         var _loc4_:int = this.§0`§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§0`§[_loc5_]))
            {
               this.§0`§[_loc5_] = this.§4!v§[this.§[k§[_loc5_]] as Number;
            }
            _loc6_ = this.§0`§[_loc5_];
            _loc8_ = (_loc7_ = this.§`e§[_loc5_]) - _loc6_;
            _loc9_ = §;E§.§!7§(this.§]! §);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§5"1§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§4!v§[this.§[k§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§+!!§ != null)
         {
            this.§+!!§.apply(null,this.§+E§);
         }
         if(_loc2_ < this.§=!G§ && this.§^0§ >= this.§=!G§)
         {
            dispatchEvent(new Event(Event.§#!B§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§3!B§);
            }
         }
      }
      
      public function get §5"6§() : Boolean
      {
         return this.§^0§ >= this.§=!G§;
      }
      
      public function get target() : Object
      {
         return this.§4!v§;
      }
      
      public function get §?G§() : String
      {
         return this.§]! §;
      }
      
      public function get §3!T§() : Number
      {
         return this.§=!G§;
      }
      
      public function get § !C§() : Number
      {
         return this.§^0§;
      }
      
      public function get delay() : Number
      {
         return this.§^F§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§^0§ = this.§^0§ + this.§^F§ - param1;
         this.§^F§ = param1;
      }
      
      public function get §4l§() : Boolean
      {
         return this.§5"1§;
      }
      
      public function set §4l§(param1:Boolean) : void
      {
         this.§5"1§ = param1;
      }
      
      public function get §5!8§() : Function
      {
         return this.§4!+§;
      }
      
      public function set §5!8§(param1:Function) : void
      {
         this.§4!+§ = param1;
      }
      
      public function get §+!!§() : Function
      {
         return this.§""G§;
      }
      
      public function set §+!!§(param1:Function) : void
      {
         this.§""G§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§9!]§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§9!]§ = param1;
      }
      
      public function get §7!@§() : Array
      {
         return this.§94§;
      }
      
      public function set §7!@§(param1:Array) : void
      {
         this.§94§ = param1;
      }
      
      public function get §,"8§() : Array
      {
         return this.§+E§;
      }
      
      public function set §,"8§(param1:Array) : void
      {
         this.§+E§ = param1;
      }
      
      public function get §-"A§() : Array
      {
         return this.§3!B§;
      }
      
      public function set §-"A§(param1:Array) : void
      {
         this.§3!B§ = param1;
      }
   }
}
