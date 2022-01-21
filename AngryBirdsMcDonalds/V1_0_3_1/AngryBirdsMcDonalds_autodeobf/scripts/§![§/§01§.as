package §![§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §01§ extends EventDispatcher implements §5R§
   {
       
      
      private var §&J§:Object;
      
      private var §>p§:String;
      
      private var §4"§:Vector.<String>;
      
      private var §#!k§:Vector.<Number>;
      
      private var §super§:Vector.<Number>;
      
      private var §=&§:Function;
      
      private var §?k§:Function;
      
      private var §>m§:Function;
      
      private var §%!R§:Array;
      
      private var §^b§:Array;
      
      private var §,!J§:Array;
      
      private var §8r§:Number;
      
      private var §2!S§:Number;
      
      private var §",§:Number;
      
      private var §do §:Boolean;
      
      public function §01§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&J§ = param1;
         this.§2!S§ = 0;
         this.§8r§ = Math.max(0.0001,param2);
         this.§",§ = 0;
         this.§>p§ = param3;
         this.§do § = false;
         this.§4"§ = new Vector.<String>(0);
         this.§#!k§ = new Vector.<Number>(0);
         this.§super§ = new Vector.<Number>(0);
      }
      
      public function §0!K§(param1:String, param2:Number) : void
      {
         if(this.§&J§ == null)
         {
            return;
         }
         this.§4"§.push(param1);
         this.§#!k§.push(Number.NaN);
         this.§super§.push(param2);
      }
      
      public function §9P§(param1:Number) : void
      {
         this.§0!K§("scaleX",param1);
         this.§0!K§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§0!K§("x",param1);
         this.§0!K§("y",param2);
      }
      
      public function §8>§(param1:Number) : void
      {
         this.§0!K§("alpha",param1);
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
         var _loc2_:Number = this.§2!S§;
         this.§2!S§ += param1;
         if(this.§2!S§ < 0 || _loc2_ >= this.§8r§)
         {
            return;
         }
         if(this.§>!V§ != null && _loc2_ <= 0 && this.§2!S§ >= 0)
         {
            this.§>!V§.apply(null,this.§%!R§);
         }
         var _loc3_:Number = Math.min(this.§8r§,this.§2!S§) / this.§8r§;
         var _loc4_:int = this.§#!k§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§#!k§[_loc5_]))
            {
               this.§#!k§[_loc5_] = this.§&J§[this.§4"§[_loc5_]] as Number;
            }
            _loc6_ = this.§#!k§[_loc5_];
            _loc8_ = (_loc7_ = this.§super§[_loc5_]) - _loc6_;
            _loc9_ = § !#§.§%!X§(this.§>p§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§do §)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&J§[this.§4"§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§=J§ != null)
         {
            this.§=J§.apply(null,this.§^b§);
         }
         if(_loc2_ < this.§8r§ && this.§2!S§ >= this.§8r§)
         {
            dispatchEvent(new Event(Event.§>>§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§,!J§);
            }
         }
      }
      
      public function get §+A§() : Boolean
      {
         return this.§2!S§ >= this.§8r§;
      }
      
      public function get target() : Object
      {
         return this.§&J§;
      }
      
      public function get §8M§() : String
      {
         return this.§>p§;
      }
      
      public function get §&a§() : Number
      {
         return this.§8r§;
      }
      
      public function get §;]§() : Number
      {
         return this.§2!S§;
      }
      
      public function get delay() : Number
      {
         return this.§",§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§2!S§ = this.§2!S§ + this.§",§ - param1;
         this.§",§ = param1;
      }
      
      public function get §?!f§() : Boolean
      {
         return this.§do §;
      }
      
      public function set §?!f§(param1:Boolean) : void
      {
         this.§do § = param1;
      }
      
      public function get §>!V§() : Function
      {
         return this.§=&§;
      }
      
      public function set §>!V§(param1:Function) : void
      {
         this.§=&§ = param1;
      }
      
      public function get §=J§() : Function
      {
         return this.§?k§;
      }
      
      public function set §=J§(param1:Function) : void
      {
         this.§?k§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§>m§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§>m§ = param1;
      }
      
      public function get §0![§() : Array
      {
         return this.§%!R§;
      }
      
      public function set §0![§(param1:Array) : void
      {
         this.§%!R§ = param1;
      }
      
      public function get §,t§() : Array
      {
         return this.§^b§;
      }
      
      public function set §,t§(param1:Array) : void
      {
         this.§^b§ = param1;
      }
      
      public function get §<!5§() : Array
      {
         return this.§,!J§;
      }
      
      public function set §<!5§(param1:Array) : void
      {
         this.§,!J§ = param1;
      }
   }
}
