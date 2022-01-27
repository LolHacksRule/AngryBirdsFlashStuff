package §8H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2!&§ extends EventDispatcher implements §=b§
   {
       
      
      private var §<#§:Object;
      
      private var §,1§:String;
      
      private var §1X§:Vector.<String>;
      
      private var §%_§:Vector.<Number>;
      
      private var §4!?§:Vector.<Number>;
      
      private var §>Z§:Function;
      
      private var §=!2§:Function;
      
      private var §&m§:Function;
      
      private var §+T§:Array;
      
      private var §+n§:Array;
      
      private var §2]§:Array;
      
      private var §0!=§:Number;
      
      private var §3!2§:Number;
      
      private var §#!N§:Number;
      
      private var §"c§:Boolean;
      
      public function §2!&§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§<#§ = param1;
         this.§3!2§ = 0;
         this.§0!=§ = Math.max(0.0001,param2);
         this.§#!N§ = 0;
         this.§,1§ = param3;
         this.§"c§ = false;
         this.§1X§ = new Vector.<String>(0);
         this.§%_§ = new Vector.<Number>(0);
         this.§4!?§ = new Vector.<Number>(0);
      }
      
      public function §'!%§(param1:String, param2:Number) : void
      {
         if(this.§<#§ == null)
         {
            return;
         }
         this.§1X§.push(param1);
         this.§%_§.push(Number.NaN);
         this.§4!?§.push(param2);
      }
      
      public function §5N§(param1:Number) : void
      {
         this.§'!%§("scaleX",param1);
         this.§'!%§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§'!%§("x",param1);
         this.§'!%§("y",param2);
      }
      
      public function §7V§(param1:Number) : void
      {
         this.§'!%§("alpha",param1);
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
         var _loc2_:Number = this.§3!2§;
         this.§3!2§ += param1;
         if(this.§3!2§ < 0 || _loc2_ >= this.§0!=§)
         {
            return;
         }
         if(this.§?3§ != null && _loc2_ <= 0 && this.§3!2§ >= 0)
         {
            this.§?3§.apply(null,this.§+T§);
         }
         var _loc3_:Number = Math.min(this.§0!=§,this.§3!2§) / this.§0!=§;
         var _loc4_:int = this.§%_§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§%_§[_loc5_]))
            {
               this.§%_§[_loc5_] = this.§<#§[this.§1X§[_loc5_]] as Number;
            }
            _loc6_ = this.§%_§[_loc5_];
            _loc8_ = (_loc7_ = this.§4!?§[_loc5_]) - _loc6_;
            _loc9_ = §@m§.§-!&§(this.§,1§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§"c§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§<#§[this.§1X§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§6!0§ != null)
         {
            this.§6!0§.apply(null,this.§+n§);
         }
         if(_loc2_ < this.§0!=§ && this.§3!2§ >= this.§0!=§)
         {
            dispatchEvent(new Event(Event.§&^§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§2]§);
            }
         }
      }
      
      public function get §1@§() : Boolean
      {
         return this.§3!2§ >= this.§0!=§;
      }
      
      public function get target() : Object
      {
         return this.§<#§;
      }
      
      public function get §5%§() : String
      {
         return this.§,1§;
      }
      
      public function get §7z§() : Number
      {
         return this.§0!=§;
      }
      
      public function get §=@§() : Number
      {
         return this.§3!2§;
      }
      
      public function get delay() : Number
      {
         return this.§#!N§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§3!2§ = this.§3!2§ + this.§#!N§ - param1;
         this.§#!N§ = param1;
      }
      
      public function get §=0§() : Boolean
      {
         return this.§"c§;
      }
      
      public function set §=0§(param1:Boolean) : void
      {
         this.§"c§ = param1;
      }
      
      public function get §?3§() : Function
      {
         return this.§>Z§;
      }
      
      public function set §?3§(param1:Function) : void
      {
         this.§>Z§ = param1;
      }
      
      public function get §6!0§() : Function
      {
         return this.§=!2§;
      }
      
      public function set §6!0§(param1:Function) : void
      {
         this.§=!2§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&m§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&m§ = param1;
      }
      
      public function get §!U§() : Array
      {
         return this.§+T§;
      }
      
      public function set §!U§(param1:Array) : void
      {
         this.§+T§ = param1;
      }
      
      public function get §+C§() : Array
      {
         return this.§+n§;
      }
      
      public function set §+C§(param1:Array) : void
      {
         this.§+n§ = param1;
      }
      
      public function get §-Q§() : Array
      {
         return this.§2]§;
      }
      
      public function set §-Q§(param1:Array) : void
      {
         this.§2]§ = param1;
      }
   }
}
