package §>!?§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6!1§ extends EventDispatcher implements §>!R§
   {
       
      
      private var §5^§:Object;
      
      private var §7N§:String;
      
      private var §!!7§:Vector.<String>;
      
      private var §2!,§:Vector.<Number>;
      
      private var §8N§:Vector.<Number>;
      
      private var §&a§:Function;
      
      private var §;6§:Function;
      
      private var §^Z§:Function;
      
      private var §'!,§:Array;
      
      private var §-3§:Array;
      
      private var §;`§:Array;
      
      private var §3j§:Number;
      
      private var §@k§:Number;
      
      private var §"9§:Number;
      
      private var §#f§:Boolean;
      
      public function §6!1§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§5^§ = param1;
         this.§@k§ = 0;
         this.§3j§ = Math.max(0.0001,param2);
         this.§"9§ = 0;
         this.§7N§ = param3;
         this.§#f§ = false;
         this.§!!7§ = new Vector.<String>(0);
         this.§2!,§ = new Vector.<Number>(0);
         this.§8N§ = new Vector.<Number>(0);
      }
      
      public function §#!&§(param1:String, param2:Number) : void
      {
         if(this.§5^§ == null)
         {
            return;
         }
         this.§!!7§.push(param1);
         this.§2!,§.push(Number.NaN);
         this.§8N§.push(param2);
      }
      
      public function §'!@§(param1:Number) : void
      {
         this.§#!&§("scaleX",param1);
         this.§#!&§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§#!&§("x",param1);
         this.§#!&§("y",param2);
      }
      
      public function §0!6§(param1:Number) : void
      {
         this.§#!&§("alpha",param1);
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
         var _loc2_:Number = this.§@k§;
         this.§@k§ += param1;
         if(this.§@k§ < 0 || _loc2_ >= this.§3j§)
         {
            return;
         }
         if(this.§5R§ != null && _loc2_ <= 0 && this.§@k§ >= 0)
         {
            this.§5R§.apply(null,this.§'!,§);
         }
         var _loc3_:Number = Math.min(this.§3j§,this.§@k§) / this.§3j§;
         var _loc4_:int = this.§2!,§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§2!,§[_loc5_]))
            {
               this.§2!,§[_loc5_] = this.§5^§[this.§!!7§[_loc5_]] as Number;
            }
            _loc6_ = this.§2!,§[_loc5_];
            _loc8_ = (_loc7_ = this.§8N§[_loc5_]) - _loc6_;
            _loc9_ = §2!`§.§03§(this.§7N§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§#f§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§5^§[this.§!!7§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§<!0§ != null)
         {
            this.§<!0§.apply(null,this.§-3§);
         }
         if(_loc2_ < this.§3j§ && this.§@k§ >= this.§3j§)
         {
            dispatchEvent(new Event(Event.§9!?§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§;`§);
            }
         }
      }
      
      public function get §1[§() : Boolean
      {
         return this.§@k§ >= this.§3j§;
      }
      
      public function get target() : Object
      {
         return this.§5^§;
      }
      
      public function get §?%§() : String
      {
         return this.§7N§;
      }
      
      public function get §[_§() : Number
      {
         return this.§3j§;
      }
      
      public function get §!;§() : Number
      {
         return this.§@k§;
      }
      
      public function get delay() : Number
      {
         return this.§"9§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@k§ = this.§@k§ + this.§"9§ - param1;
         this.§"9§ = param1;
      }
      
      public function get §^!F§() : Boolean
      {
         return this.§#f§;
      }
      
      public function set §^!F§(param1:Boolean) : void
      {
         this.§#f§ = param1;
      }
      
      public function get §5R§() : Function
      {
         return this.§&a§;
      }
      
      public function set §5R§(param1:Function) : void
      {
         this.§&a§ = param1;
      }
      
      public function get §<!0§() : Function
      {
         return this.§;6§;
      }
      
      public function set §<!0§(param1:Function) : void
      {
         this.§;6§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§^Z§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§^Z§ = param1;
      }
      
      public function get §[-§() : Array
      {
         return this.§'!,§;
      }
      
      public function set §[-§(param1:Array) : void
      {
         this.§'!,§ = param1;
      }
      
      public function get §4;§() : Array
      {
         return this.§-3§;
      }
      
      public function set §4;§(param1:Array) : void
      {
         this.§-3§ = param1;
      }
      
      public function get §6[§() : Array
      {
         return this.§;`§;
      }
      
      public function set §6[§(param1:Array) : void
      {
         this.§;`§ = param1;
      }
   }
}
