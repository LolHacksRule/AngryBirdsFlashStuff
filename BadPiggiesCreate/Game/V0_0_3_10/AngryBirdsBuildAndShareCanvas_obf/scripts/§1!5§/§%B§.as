package §1!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%B§ extends EventDispatcher implements §>!Y§
   {
       
      
      private var §<6§:Object;
      
      private var §2J§:String;
      
      private var §,"+§:Vector.<String>;
      
      private var §1u§:Vector.<Number>;
      
      private var §'"9§:Vector.<Number>;
      
      private var § !T§:Function;
      
      private var §6j§:Function;
      
      private var § "!§:Function;
      
      private var § `§:Array;
      
      private var §try §:Array;
      
      private var §>q§:Array;
      
      private var §,!C§:Number;
      
      private var §1r§:Number;
      
      private var §="3§:Number;
      
      private var §-!`§:Boolean;
      
      public function §%B§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§<6§ = param1;
         this.§1r§ = 0;
         this.§,!C§ = Math.max(0.0001,param2);
         this.§="3§ = 0;
         this.§2J§ = param3;
         this.§-!`§ = false;
         this.§,"+§ = new Vector.<String>(0);
         this.§1u§ = new Vector.<Number>(0);
         this.§'"9§ = new Vector.<Number>(0);
      }
      
      public function §7!9§(param1:String, param2:Number) : void
      {
         if(this.§<6§ == null)
         {
            return;
         }
         this.§,"+§.push(param1);
         this.§1u§.push(Number.NaN);
         this.§'"9§.push(param2);
      }
      
      public function §#i§(param1:Number) : void
      {
         this.§7!9§("scaleX",param1);
         this.§7!9§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§7!9§("x",param1);
         this.§7!9§("y",param2);
      }
      
      public function §5p§(param1:Number) : void
      {
         this.§7!9§("alpha",param1);
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
         var _loc2_:Number = this.§1r§;
         this.§1r§ += param1;
         if(this.§1r§ < 0 || _loc2_ >= this.§,!C§)
         {
            return;
         }
         if(this.§2!@§ != null && _loc2_ <= 0 && this.§1r§ >= 0)
         {
            this.§2!@§.apply(null,this.§ `§);
         }
         var _loc3_:Number = Math.min(this.§,!C§,this.§1r§) / this.§,!C§;
         var _loc4_:int = this.§1u§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§1u§[_loc5_]))
            {
               this.§1u§[_loc5_] = this.§<6§[this.§,"+§[_loc5_]] as Number;
            }
            _loc6_ = this.§1u§[_loc5_];
            _loc8_ = (_loc7_ = this.§'"9§[_loc5_]) - _loc6_;
            _loc9_ = §>!K§.§%z§(this.§2J§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§-!`§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§<6§[this.§,"+§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§try §);
         }
         if(_loc2_ < this.§,!C§ && this.§1r§ >= this.§,!C§)
         {
            dispatchEvent(new Event(Event.§7d§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§>q§);
            }
         }
      }
      
      public function get §!!P§() : Boolean
      {
         return this.§1r§ >= this.§,!C§;
      }
      
      public function get target() : Object
      {
         return this.§<6§;
      }
      
      public function get §%"!§() : String
      {
         return this.§2J§;
      }
      
      public function get §!w§() : Number
      {
         return this.§,!C§;
      }
      
      public function get §[[§() : Number
      {
         return this.§1r§;
      }
      
      public function get delay() : Number
      {
         return this.§="3§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1r§ = this.§1r§ + this.§="3§ - param1;
         this.§="3§ = param1;
      }
      
      public function get §?4§() : Boolean
      {
         return this.§-!`§;
      }
      
      public function set §?4§(param1:Boolean) : void
      {
         this.§-!`§ = param1;
      }
      
      public function get §2!@§() : Function
      {
         return this.§ !T§;
      }
      
      public function set §2!@§(param1:Function) : void
      {
         this.§ !T§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§6j§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§6j§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§ "!§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§ "!§ = param1;
      }
      
      public function get §7!o§() : Array
      {
         return this.§ `§;
      }
      
      public function set §7!o§(param1:Array) : void
      {
         this.§ `§ = param1;
      }
      
      public function get §]n§() : Array
      {
         return this.§try §;
      }
      
      public function set §]n§(param1:Array) : void
      {
         this.§try § = param1;
      }
      
      public function get §-!w§() : Array
      {
         return this.§>q§;
      }
      
      public function set §-!w§(param1:Array) : void
      {
         this.§>q§ = param1;
      }
   }
}
