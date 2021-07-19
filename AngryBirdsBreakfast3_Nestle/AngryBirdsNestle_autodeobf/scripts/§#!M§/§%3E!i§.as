package §#!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>!i§ extends EventDispatcher implements §,!Y§
   {
       
      
      private var §!N§:Object;
      
      private var §@"+§:String;
      
      private var §1p§:Vector.<String>;
      
      private var §`"4§:Vector.<Number>;
      
      private var §="7§:Vector.<Number>;
      
      private var §^=§:Function;
      
      private var §2L§:Function;
      
      private var §;!h§:Function;
      
      private var §]!Z§:Array;
      
      private var §5j§:Array;
      
      private var §0"0§:Array;
      
      private var §2!X§:Number;
      
      private var §=",§:Number;
      
      private var §,y§:Number;
      
      private var §break§:Boolean;
      
      public function §>!i§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§!N§ = param1;
         this.§=",§ = 0;
         this.§2!X§ = Math.max(0.0001,param2);
         this.§,y§ = 0;
         this.§@"+§ = param3;
         this.§break§ = false;
         this.§1p§ = new Vector.<String>(0);
         this.§`"4§ = new Vector.<Number>(0);
         this.§="7§ = new Vector.<Number>(0);
      }
      
      public function §!!6§(param1:String, param2:Number) : void
      {
         if(this.§!N§ == null)
         {
            return;
         }
         this.§1p§.push(param1);
         this.§`"4§.push(Number.NaN);
         this.§="7§.push(param2);
      }
      
      public function §'!§(param1:Number) : void
      {
         this.§!!6§("scaleX",param1);
         this.§!!6§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§!!6§("x",param1);
         this.§!!6§("y",param2);
      }
      
      public function §>!,§(param1:Number) : void
      {
         this.§!!6§("alpha",param1);
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
         var _loc2_:Number = this.§=",§;
         this.§=",§ += param1;
         if(this.§=",§ < 0 || _loc2_ >= this.§2!X§)
         {
            return;
         }
         if(this.§>!R§ != null && _loc2_ <= 0 && this.§=",§ >= 0)
         {
            this.§>!R§.apply(null,this.§]!Z§);
         }
         var _loc3_:Number = Math.min(this.§2!X§,this.§=",§) / this.§2!X§;
         var _loc4_:int = this.§`"4§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§`"4§[_loc5_]))
            {
               this.§`"4§[_loc5_] = this.§!N§[this.§1p§[_loc5_]] as Number;
            }
            _loc6_ = this.§`"4§[_loc5_];
            _loc8_ = (_loc7_ = this.§="7§[_loc5_]) - _loc6_;
            _loc9_ = §<"§.§case§(this.§@"+§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§break§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§!N§[this.§1p§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§6L§ != null)
         {
            this.§6L§.apply(null,this.§5j§);
         }
         if(_loc2_ < this.§2!X§ && this.§=",§ >= this.§2!X§)
         {
            dispatchEvent(new Event(Event.§2"$§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§0"0§);
            }
         }
      }
      
      public function get §^+§() : Boolean
      {
         return this.§=",§ >= this.§2!X§;
      }
      
      public function get target() : Object
      {
         return this.§!N§;
      }
      
      public function get §1"%§() : String
      {
         return this.§@"+§;
      }
      
      public function get § "-§() : Number
      {
         return this.§2!X§;
      }
      
      public function get §[Q§() : Number
      {
         return this.§=",§;
      }
      
      public function get delay() : Number
      {
         return this.§,y§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§=",§ = this.§=",§ + this.§,y§ - param1;
         this.§,y§ = param1;
      }
      
      public function get §+!2§() : Boolean
      {
         return this.§break§;
      }
      
      public function set §+!2§(param1:Boolean) : void
      {
         this.§break§ = param1;
      }
      
      public function get §>!R§() : Function
      {
         return this.§^=§;
      }
      
      public function set §>!R§(param1:Function) : void
      {
         this.§^=§ = param1;
      }
      
      public function get §6L§() : Function
      {
         return this.§2L§;
      }
      
      public function set §6L§(param1:Function) : void
      {
         this.§2L§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§;!h§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§;!h§ = param1;
      }
      
      public function get §&"+§() : Array
      {
         return this.§]!Z§;
      }
      
      public function set §&"+§(param1:Array) : void
      {
         this.§]!Z§ = param1;
      }
      
      public function get §`!f§() : Array
      {
         return this.§5j§;
      }
      
      public function set §`!f§(param1:Array) : void
      {
         this.§5j§ = param1;
      }
      
      public function get §38§() : Array
      {
         return this.§0"0§;
      }
      
      public function set §38§(param1:Array) : void
      {
         this.§0"0§ = param1;
      }
   }
}
