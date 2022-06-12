package §0g§
{
   import §!$;§.Event;
   import §!$;§.EventDispatcher;
   
   public class §`!f§ extends EventDispatcher implements §'"P§
   {
      
      private static var §]"N§:Vector.<§`!f§> = new Vector.<§`!f§>(0);
       
      
      private var §##i§:Object;
      
      private var §;!c§:Function;
      
      private var §1!o§:String;
      
      private var §8"J§:Vector.<String>;
      
      private var §7e§:Vector.<Number>;
      
      private var §>P§:Vector.<Number>;
      
      private var §^?§:Function;
      
      private var §+!;§:Function;
      
      private var §6#z§:Function;
      
      private var §6"e§:Function;
      
      private var §<l§:Array;
      
      private var §4$@§:Array;
      
      private var §0!C§:Array;
      
      private var §#z§:Array;
      
      private var §6!;§:Number;
      
      private var §4$5§:Number;
      
      private var §?#m§:Number;
      
      private var §9!c§:Boolean;
      
      private var §;"m§:§`!f§;
      
      private var §,!M§:int;
      
      private var §8X§:Number;
      
      private var §7!?§:Boolean;
      
      private var §;n§:int;
      
      public function §`!f§(param1:Object, param2:Number, param3:Object = "linear")
      {
         super();
         this.reset(param1,param2,param3);
      }
      
      static function §-"+§(param1:Object, param2:Number, param3:Object = "linear") : §`!f§
      {
         if(§]"N§.length)
         {
            return §]"N§.pop().reset(param1,param2,param3);
         }
         return new §`!f§(param1,param2,param3);
      }
      
      static function §"$2§(param1:§`!f§) : void
      {
         param1.§^?§ = param1.§+!;§ = param1.§6#z§ = param1.§6"e§ = null;
         param1.§<l§ = param1.§4$@§ = param1.§0!C§ = param1.§#z§ = null;
         param1.§##i§ = null;
         param1.§;!c§ = null;
         param1.removeEventListeners();
         §]"N§.push(param1);
      }
      
      public function reset(param1:Object, param2:Number, param3:Object = "linear") : §`!f§
      {
         this.§##i§ = param1;
         this.§4$5§ = 0;
         this.§6!;§ = Math.max(0.0001,param2);
         this.§?#m§ = this.§8X§ = 0;
         this.§^?§ = this.§+!;§ = this.§6"e§ = null;
         this.§<l§ = this.§4$@§ = this.§#z§ = null;
         this.§9!c§ = this.§7!?§ = false;
         this.§,!M§ = 1;
         this.§;n§ = -1;
         if(param3 is String)
         {
            this.§0#$§ = param3 as String;
         }
         else
         {
            if(!(param3 is Function))
            {
               throw new ArgumentError("Transition must be either a string or a function");
            }
            this.§3!f§ = param3 as Function;
         }
         if(this.§8"J§)
         {
            this.§8"J§.length = 0;
         }
         else
         {
            this.§8"J§ = new Vector.<String>(0);
         }
         if(this.§7e§)
         {
            this.§7e§.length = 0;
         }
         else
         {
            this.§7e§ = new Vector.<Number>(0);
         }
         if(this.§>P§)
         {
            this.§>P§.length = 0;
         }
         else
         {
            this.§>P§ = new Vector.<Number>(0);
         }
         return this;
      }
      
      public function §6"]§(param1:String, param2:Number) : void
      {
         if(this.§##i§ == null)
         {
            return;
         }
         this.§8"J§.push(param1);
         this.§7e§.push(Number.NaN);
         this.§>P§.push(param2);
      }
      
      public function §,#!§(param1:Number) : void
      {
         this.§6"]§("scaleX",param1);
         this.§6"]§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§6"]§("x",param1);
         this.§6"]§("y",param2);
      }
      
      public function §`#+§(param1:Number) : void
      {
         this.§6"]§("alpha",param1);
      }
      
      public function §-"%§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Function = null;
         var _loc15_:Array = null;
         if(param1 == 0 || this.§,!M§ == 1 && this.§4$5§ == this.§6!;§)
         {
            return;
         }
         var _loc3_:Number = this.§4$5§;
         var _loc4_:Number = this.§6!;§ - this.§4$5§;
         var _loc5_:Number = param1 > _loc4_ ? Number(param1 - _loc4_) : Number(0);
         this.§4$5§ = Math.min(this.§6!;§,this.§4$5§ + param1);
         if(this.§4$5§ <= 0)
         {
            return;
         }
         if(this.§;n§ < 0 && _loc3_ <= 0 && this.§4$5§ > 0)
         {
            ++this.§;n§;
            if(this.§^?§ != null)
            {
               this.§^?§.apply(null,this.§<l§);
            }
         }
         var _loc6_:Number = this.§4$5§ / this.§6!;§;
         var _loc7_:Boolean = this.§7!?§ && this.§;n§ % 2 == 1;
         var _loc8_:int = this.§7e§.length;
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            if(isNaN(this.§7e§[_loc2_]))
            {
               this.§7e§[_loc2_] = this.§##i§[this.§8"J§[_loc2_]] as Number;
            }
            _loc9_ = this.§7e§[_loc2_];
            _loc11_ = (_loc10_ = this.§>P§[_loc2_]) - _loc9_;
            _loc12_ = !!_loc7_ ? Number(this.§;!c§(1 - _loc6_)) : Number(this.§;!c§(_loc6_));
            _loc13_ = _loc9_ + _loc12_ * _loc11_;
            if(this.§9!c§)
            {
               _loc13_ = Math.round(_loc13_);
            }
            this.§##i§[this.§8"J§[_loc2_]] = _loc13_;
            _loc2_++;
         }
         if(this.§+!;§ != null)
         {
            this.§+!;§.apply(null,this.§4$@§);
         }
         if(_loc3_ < this.§6!;§ && this.§4$5§ >= this.§6!;§)
         {
            if(this.§,!M§ == 0 || this.§,!M§ > 1)
            {
               this.§4$5§ = -this.§8X§;
               ++this.§;n§;
               if(this.§,!M§ > 1)
               {
                  --this.§,!M§;
               }
               if(this.§6#z§ != null)
               {
                  this.§6#z§.apply(null,this.§0!C§);
               }
            }
            else
            {
               _loc14_ = this.§6"e§;
               _loc15_ = this.§#z§;
               §6"#§(Event.§>#R§);
               if(_loc14_ != null)
               {
                  _loc14_.apply(null,_loc15_);
               }
            }
         }
         if(_loc5_)
         {
            this.§-"%§(_loc5_);
         }
      }
      
      public function get §"$C§() : Boolean
      {
         return this.§4$5§ >= this.§6!;§ && this.§,!M§ == 1;
      }
      
      public function get target() : Object
      {
         return this.§##i§;
      }
      
      public function get §0#$§() : String
      {
         return this.§1!o§;
      }
      
      public function set §0#$§(param1:String) : void
      {
         this.§1!o§ = param1;
         this.§;!c§ = §?!e§.§="T§(param1);
         if(this.§;!c§ == null)
         {
            throw new ArgumentError("Invalid transiton: " + param1);
         }
      }
      
      public function get §3!f§() : Function
      {
         return this.§;!c§;
      }
      
      public function set §3!f§(param1:Function) : void
      {
         this.§1!o§ = "custom";
         this.§;!c§ = param1;
      }
      
      public function get §!E§() : Number
      {
         return this.§6!;§;
      }
      
      public function get §7"A§() : Number
      {
         return this.§4$5§;
      }
      
      public function get delay() : Number
      {
         return this.§?#m§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4$5§ = this.§4$5§ + this.§?#m§ - param1;
         this.§?#m§ = param1;
      }
      
      public function get repeatCount() : int
      {
         return this.§,!M§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§,!M§ = param1;
      }
      
      public function get §%Z§() : Number
      {
         return this.§8X§;
      }
      
      public function set §%Z§(param1:Number) : void
      {
         this.§8X§ = param1;
      }
      
      public function get reverse() : Boolean
      {
         return this.§7!?§;
      }
      
      public function set reverse(param1:Boolean) : void
      {
         this.§7!?§ = param1;
      }
      
      public function get §8V§() : Boolean
      {
         return this.§9!c§;
      }
      
      public function set §8V§(param1:Boolean) : void
      {
         this.§9!c§ = param1;
      }
      
      public function get onStart() : Function
      {
         return this.§^?§;
      }
      
      public function set onStart(param1:Function) : void
      {
         this.§^?§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§+!;§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§+!;§ = param1;
      }
      
      public function get §@S§() : Function
      {
         return this.§6#z§;
      }
      
      public function set §@S§(param1:Function) : void
      {
         this.§6#z§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§6"e§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§6"e§ = param1;
      }
      
      public function get §8$5§() : Array
      {
         return this.§<l§;
      }
      
      public function set §8$5§(param1:Array) : void
      {
         this.§<l§ = param1;
      }
      
      public function get §+#@§() : Array
      {
         return this.§4$@§;
      }
      
      public function set §+#@§(param1:Array) : void
      {
         this.§4$@§ = param1;
      }
      
      public function get §'#g§() : Array
      {
         return this.§0!C§;
      }
      
      public function set §'#g§(param1:Array) : void
      {
         this.§0!C§ = param1;
      }
      
      public function get §try §() : Array
      {
         return this.§#z§;
      }
      
      public function set §try §(param1:Array) : void
      {
         this.§#z§ = param1;
      }
      
      public function get §-!1§() : §`!f§
      {
         return this.§;"m§;
      }
      
      public function set §-!1§(param1:§`!f§) : void
      {
         this.§;"m§ = param1;
      }
   }
}
