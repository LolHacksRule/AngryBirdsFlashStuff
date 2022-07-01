package §1!8§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9!C§ extends EventDispatcher implements §#W§
   {
       
      
      private var §&!A§:Object;
      
      private var § !9§:String;
      
      private var §>"1§:Vector.<String>;
      
      private var §""7§:Vector.<Number>;
      
      private var §`o§:Vector.<Number>;
      
      private var §6"1§:Function;
      
      private var §[!1§:Function;
      
      private var §^!M§:Function;
      
      private var §;u§:Array;
      
      private var §>"#§:Array;
      
      private var §`g§:Array;
      
      private var §92§:Number;
      
      private var §&P§:Number;
      
      private var §%[§:Number;
      
      private var §0"$§:Boolean;
      
      public function §9!C§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&!A§ = param1;
         this.§&P§ = 0;
         this.§92§ = Math.max(0.0001,param2);
         this.§%[§ = 0;
         this.§ !9§ = param3;
         this.§0"$§ = false;
         this.§>"1§ = new Vector.<String>(0);
         this.§""7§ = new Vector.<Number>(0);
         this.§`o§ = new Vector.<Number>(0);
      }
      
      public function §4o§(param1:String, param2:Number) : void
      {
         if(this.§&!A§ == null)
         {
            return;
         }
         this.§>"1§.push(param1);
         this.§""7§.push(Number.NaN);
         this.§`o§.push(param2);
      }
      
      public function §^" §(param1:Number) : void
      {
         this.§4o§("scaleX",param1);
         this.§4o§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§4o§("x",param1);
         this.§4o§("y",param2);
      }
      
      public function §%X§(param1:Number) : void
      {
         this.§4o§("alpha",param1);
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
         var _loc2_:Number = this.§&P§;
         this.§&P§ += param1;
         if(this.§&P§ < 0 || _loc2_ >= this.§92§)
         {
            return;
         }
         if(this.§="%§ != null && _loc2_ <= 0 && this.§&P§ >= 0)
         {
            this.§="%§.apply(null,this.§;u§);
         }
         var _loc3_:Number = Math.min(this.§92§,this.§&P§) / this.§92§;
         var _loc4_:int = this.§""7§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§""7§[_loc5_]))
            {
               this.§""7§[_loc5_] = this.§&!A§[this.§>"1§[_loc5_]] as Number;
            }
            _loc6_ = this.§""7§[_loc5_];
            _loc8_ = (_loc7_ = this.§`o§[_loc5_]) - _loc6_;
            _loc9_ = §>"7§.§;0§(this.§ !9§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§0"$§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&!A§[this.§>"1§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§>"#§);
         }
         if(_loc2_ < this.§92§ && this.§&P§ >= this.§92§)
         {
            dispatchEvent(new Event(Event.§,5§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§`g§);
            }
         }
      }
      
      public function get §+w§() : Boolean
      {
         return this.§&P§ >= this.§92§;
      }
      
      public function get target() : Object
      {
         return this.§&!A§;
      }
      
      public function get §>t§() : String
      {
         return this.§ !9§;
      }
      
      public function get §=!g§() : Number
      {
         return this.§92§;
      }
      
      public function get § !H§() : Number
      {
         return this.§&P§;
      }
      
      public function get delay() : Number
      {
         return this.§%[§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§&P§ = this.§&P§ + this.§%[§ - param1;
         this.§%[§ = param1;
      }
      
      public function get §4!f§() : Boolean
      {
         return this.§0"$§;
      }
      
      public function set §4!f§(param1:Boolean) : void
      {
         this.§0"$§ = param1;
      }
      
      public function get §="%§() : Function
      {
         return this.§6"1§;
      }
      
      public function set §="%§(param1:Function) : void
      {
         this.§6"1§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§[!1§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§[!1§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§^!M§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§^!M§ = param1;
      }
      
      public function get §=X§() : Array
      {
         return this.§;u§;
      }
      
      public function set §=X§(param1:Array) : void
      {
         this.§;u§ = param1;
      }
      
      public function get § !8§() : Array
      {
         return this.§>"#§;
      }
      
      public function set § !8§(param1:Array) : void
      {
         this.§>"#§ = param1;
      }
      
      public function get §%>§() : Array
      {
         return this.§`g§;
      }
      
      public function set §%>§(param1:Array) : void
      {
         this.§`g§ = param1;
      }
   }
}
