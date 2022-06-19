package §`!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@6§ extends EventDispatcher implements § !7§
   {
       
      
      private var §`!^§:Object;
      
      private var §6u§:String;
      
      private var §%Q§:Vector.<String>;
      
      private var §1!0§:Vector.<Number>;
      
      private var §#C§:Vector.<Number>;
      
      private var §!!?§:Function;
      
      private var §&M§:Function;
      
      private var §='§:Function;
      
      private var §`G§:Array;
      
      private var §<G§:Array;
      
      private var §6!7§:Array;
      
      private var §=!%§:Number;
      
      private var §[_§:Number;
      
      private var §2K§:Number;
      
      private var §>k§:Boolean;
      
      public function §@6§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§`!^§ = param1;
         this.§[_§ = 0;
         this.§=!%§ = Math.max(0.0001,param2);
         this.§2K§ = 0;
         this.§6u§ = param3;
         this.§>k§ = false;
         this.§%Q§ = new Vector.<String>(0);
         this.§1!0§ = new Vector.<Number>(0);
         this.§#C§ = new Vector.<Number>(0);
      }
      
      public function §&!M§(param1:String, param2:Number) : void
      {
         if(this.§`!^§ == null)
         {
            return;
         }
         this.§%Q§.push(param1);
         this.§1!0§.push(Number.NaN);
         this.§#C§.push(param2);
      }
      
      public function §+1§(param1:Number) : void
      {
         this.§&!M§("scaleX",param1);
         this.§&!M§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§&!M§("x",param1);
         this.§&!M§("y",param2);
      }
      
      public function §<'§(param1:Number) : void
      {
         this.§&!M§("alpha",param1);
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
         var _loc2_:Number = this.§[_§;
         this.§[_§ += param1;
         if(this.§[_§ < 0 || _loc2_ >= this.§=!%§)
         {
            return;
         }
         if(this.§8!8§ != null && _loc2_ <= 0 && this.§[_§ >= 0)
         {
            this.§8!8§.apply(null,this.§`G§);
         }
         var _loc3_:Number = Math.min(this.§=!%§,this.§[_§) / this.§=!%§;
         var _loc4_:int = this.§1!0§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§1!0§[_loc5_]))
            {
               this.§1!0§[_loc5_] = this.§`!^§[this.§%Q§[_loc5_]] as Number;
            }
            _loc6_ = this.§1!0§[_loc5_];
            _loc8_ = (_loc7_ = this.§#C§[_loc5_]) - _loc6_;
            _loc9_ = §91§.§=!0§(this.§6u§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§>k§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§`!^§[this.§%Q§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§ v§ != null)
         {
            this.§ v§.apply(null,this.§<G§);
         }
         if(_loc2_ < this.§=!%§ && this.§[_§ >= this.§=!%§)
         {
            dispatchEvent(new Event(Event.§0<§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§6!7§);
            }
         }
      }
      
      public function get §@@§() : Boolean
      {
         return this.§[_§ >= this.§=!%§;
      }
      
      public function get target() : Object
      {
         return this.§`!^§;
      }
      
      public function get §<1§() : String
      {
         return this.§6u§;
      }
      
      public function get §,l§() : Number
      {
         return this.§=!%§;
      }
      
      public function get §[m§() : Number
      {
         return this.§[_§;
      }
      
      public function get delay() : Number
      {
         return this.§2K§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[_§ = this.§[_§ + this.§2K§ - param1;
         this.§2K§ = param1;
      }
      
      public function get §0$§() : Boolean
      {
         return this.§>k§;
      }
      
      public function set §0$§(param1:Boolean) : void
      {
         this.§>k§ = param1;
      }
      
      public function get §8!8§() : Function
      {
         return this.§!!?§;
      }
      
      public function set §8!8§(param1:Function) : void
      {
         this.§!!?§ = param1;
      }
      
      public function get § v§() : Function
      {
         return this.§&M§;
      }
      
      public function set § v§(param1:Function) : void
      {
         this.§&M§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§='§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§='§ = param1;
      }
      
      public function get §5!V§() : Array
      {
         return this.§`G§;
      }
      
      public function set §5!V§(param1:Array) : void
      {
         this.§`G§ = param1;
      }
      
      public function get §=g§() : Array
      {
         return this.§<G§;
      }
      
      public function set §=g§(param1:Array) : void
      {
         this.§<G§ = param1;
      }
      
      public function get §+!$§() : Array
      {
         return this.§6!7§;
      }
      
      public function set §+!$§(param1:Array) : void
      {
         this.§6!7§ = param1;
      }
   }
}
