package §^X§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6b§ extends EventDispatcher implements §5!D§
   {
       
      
      private var §#B§:Object;
      
      private var § !2§:String;
      
      private var §3!+§:Vector.<String>;
      
      private var §`f§:Vector.<Number>;
      
      private var §"F§:Vector.<Number>;
      
      private var §7!?§:Function;
      
      private var §"&§:Function;
      
      private var §"3§:Function;
      
      private var §<B§:Array;
      
      private var §>n§:Array;
      
      private var §9U§:Array;
      
      private var §#c§:Number;
      
      private var §@Q§:Number;
      
      private var §0! §:Number;
      
      private var §2&§:Boolean;
      
      public function §6b§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§#B§ = param1;
         this.§@Q§ = 0;
         this.§#c§ = Math.max(0.0001,param2);
         this.§0! § = 0;
         this.§ !2§ = param3;
         this.§2&§ = false;
         this.§3!+§ = new Vector.<String>(0);
         this.§`f§ = new Vector.<Number>(0);
         this.§"F§ = new Vector.<Number>(0);
      }
      
      public function §,!F§(param1:String, param2:Number) : void
      {
         if(this.§#B§ == null)
         {
            return;
         }
         this.§3!+§.push(param1);
         this.§`f§.push(Number.NaN);
         this.§"F§.push(param2);
      }
      
      public function §3x§(param1:Number) : void
      {
         this.§,!F§("scaleX",param1);
         this.§,!F§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§,!F§("x",param1);
         this.§,!F§("y",param2);
      }
      
      public function §use §(param1:Number) : void
      {
         this.§,!F§("alpha",param1);
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
         var _loc2_:Number = this.§@Q§;
         this.§@Q§ += param1;
         if(this.§@Q§ < 0 || _loc2_ >= this.§#c§)
         {
            return;
         }
         if(this.§5f§ != null && _loc2_ <= 0 && this.§@Q§ >= 0)
         {
            this.§5f§.apply(null,this.§<B§);
         }
         var _loc3_:Number = Math.min(this.§#c§,this.§@Q§) / this.§#c§;
         var _loc4_:int = this.§`f§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§`f§[_loc5_]))
            {
               this.§`f§[_loc5_] = this.§#B§[this.§3!+§[_loc5_]] as Number;
            }
            _loc6_ = this.§`f§[_loc5_];
            _loc8_ = (_loc7_ = this.§"F§[_loc5_]) - _loc6_;
            _loc9_ = §-]§.§=!,§(this.§ !2§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§2&§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§#B§[this.§3!+§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§!A§ != null)
         {
            this.§!A§.apply(null,this.§>n§);
         }
         if(_loc2_ < this.§#c§ && this.§@Q§ >= this.§#c§)
         {
            dispatchEvent(new Event(Event.§^#§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§9U§);
            }
         }
      }
      
      public function get §&+§() : Boolean
      {
         return this.§@Q§ >= this.§#c§;
      }
      
      public function get target() : Object
      {
         return this.§#B§;
      }
      
      public function get §+V§() : String
      {
         return this.§ !2§;
      }
      
      public function get §2S§() : Number
      {
         return this.§#c§;
      }
      
      public function get currentTime() : Number
      {
         return this.§@Q§;
      }
      
      public function get delay() : Number
      {
         return this.§0! §;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@Q§ = this.§@Q§ + this.§0! § - param1;
         this.§0! § = param1;
      }
      
      public function get §5!9§() : Boolean
      {
         return this.§2&§;
      }
      
      public function set §5!9§(param1:Boolean) : void
      {
         this.§2&§ = param1;
      }
      
      public function get §5f§() : Function
      {
         return this.§7!?§;
      }
      
      public function set §5f§(param1:Function) : void
      {
         this.§7!?§ = param1;
      }
      
      public function get §!A§() : Function
      {
         return this.§"&§;
      }
      
      public function set §!A§(param1:Function) : void
      {
         this.§"&§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§"3§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§"3§ = param1;
      }
      
      public function get §!8§() : Array
      {
         return this.§<B§;
      }
      
      public function set §!8§(param1:Array) : void
      {
         this.§<B§ = param1;
      }
      
      public function get § O§() : Array
      {
         return this.§>n§;
      }
      
      public function set § O§(param1:Array) : void
      {
         this.§>n§ = param1;
      }
      
      public function get §=4§() : Array
      {
         return this.§9U§;
      }
      
      public function set §=4§(param1:Array) : void
      {
         this.§9U§ = param1;
      }
   }
}
