package §86§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!![§ extends EventDispatcher implements §>!J§
   {
       
      
      private var §>M§:Object;
      
      private var §8T§:String;
      
      private var §3L§:Vector.<String>;
      
      private var §3,§:Vector.<Number>;
      
      private var §0!1§:Vector.<Number>;
      
      private var §-l§:Function;
      
      private var §6I§:Function;
      
      private var §?!%§:Function;
      
      private var §0!K§:Array;
      
      private var §!8§:Array;
      
      private var §'X§:Array;
      
      private var §%!M§:Number;
      
      private var §><§:Number;
      
      private var §!T§:Number;
      
      private var §?0§:Boolean;
      
      public function §!![§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§>M§ = param1;
         this.§><§ = 0;
         this.§%!M§ = Math.max(0.0001,param2);
         this.§!T§ = 0;
         this.§8T§ = param3;
         this.§?0§ = false;
         this.§3L§ = new Vector.<String>(0);
         this.§3,§ = new Vector.<Number>(0);
         this.§0!1§ = new Vector.<Number>(0);
      }
      
      public function §00§(param1:String, param2:Number) : void
      {
         if(this.§>M§ == null)
         {
            return;
         }
         this.§3L§.push(param1);
         this.§3,§.push(Number.NaN);
         this.§0!1§.push(param2);
      }
      
      public function §7!J§(param1:Number) : void
      {
         this.§00§("scaleX",param1);
         this.§00§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§00§("x",param1);
         this.§00§("y",param2);
      }
      
      public function §0!H§(param1:Number) : void
      {
         this.§00§("alpha",param1);
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
         var _loc2_:Number = this.§><§;
         this.§><§ += param1;
         if(this.§><§ < 0 || _loc2_ >= this.§%!M§)
         {
            return;
         }
         if(this.§;!T§ != null && _loc2_ <= 0 && this.§><§ >= 0)
         {
            this.§;!T§.apply(null,this.§0!K§);
         }
         var _loc3_:Number = Math.min(this.§%!M§,this.§><§) / this.§%!M§;
         var _loc4_:int = this.§3,§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§3,§[_loc5_]))
            {
               this.§3,§[_loc5_] = this.§>M§[this.§3L§[_loc5_]] as Number;
            }
            _loc6_ = this.§3,§[_loc5_];
            _loc8_ = (_loc7_ = this.§0!1§[_loc5_]) - _loc6_;
            _loc9_ = §!Z§.§>7§(this.§8T§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§?0§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§>M§[this.§3L§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§+!K§ != null)
         {
            this.§+!K§.apply(null,this.§!8§);
         }
         if(_loc2_ < this.§%!M§ && this.§><§ >= this.§%!M§)
         {
            dispatchEvent(new Event(Event.§,V§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§'X§);
            }
         }
      }
      
      public function get §else§() : Boolean
      {
         return this.§><§ >= this.§%!M§;
      }
      
      public function get target() : Object
      {
         return this.§>M§;
      }
      
      public function get §"W§() : String
      {
         return this.§8T§;
      }
      
      public function get §94§() : Number
      {
         return this.§%!M§;
      }
      
      public function get §;!?§() : Number
      {
         return this.§><§;
      }
      
      public function get delay() : Number
      {
         return this.§!T§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§><§ = this.§><§ + this.§!T§ - param1;
         this.§!T§ = param1;
      }
      
      public function get §1y§() : Boolean
      {
         return this.§?0§;
      }
      
      public function set §1y§(param1:Boolean) : void
      {
         this.§?0§ = param1;
      }
      
      public function get §;!T§() : Function
      {
         return this.§-l§;
      }
      
      public function set §;!T§(param1:Function) : void
      {
         this.§-l§ = param1;
      }
      
      public function get §+!K§() : Function
      {
         return this.§6I§;
      }
      
      public function set §+!K§(param1:Function) : void
      {
         this.§6I§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§?!%§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§?!%§ = param1;
      }
      
      public function get § !F§() : Array
      {
         return this.§0!K§;
      }
      
      public function set § !F§(param1:Array) : void
      {
         this.§0!K§ = param1;
      }
      
      public function get §=!R§() : Array
      {
         return this.§!8§;
      }
      
      public function set §=!R§(param1:Array) : void
      {
         this.§!8§ = param1;
      }
      
      public function get §5s§() : Array
      {
         return this.§'X§;
      }
      
      public function set §5s§(param1:Array) : void
      {
         this.§'X§ = param1;
      }
   }
}
