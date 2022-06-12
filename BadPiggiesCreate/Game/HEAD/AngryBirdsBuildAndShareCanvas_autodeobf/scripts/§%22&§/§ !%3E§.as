package §"&§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § !>§ extends EventDispatcher implements §=q§
   {
       
      
      private var §&d§:Object;
      
      private var §throw§:String;
      
      private var §[!x§:Vector.<String>;
      
      private var §9f§:Vector.<Number>;
      
      private var §%!v§:Vector.<Number>;
      
      private var §2!E§:Function;
      
      private var §<!"§:Function;
      
      private var §,h§:Function;
      
      private var §<@§:Array;
      
      private var §9!o§:Array;
      
      private var § !z§:Array;
      
      private var §+"?§:Number;
      
      private var §7r§:Number;
      
      private var §&l§:Number;
      
      private var §4z§:Boolean;
      
      public function § !>§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&d§ = param1;
         this.§7r§ = 0;
         this.§+"?§ = Math.max(0.0001,param2);
         this.§&l§ = 0;
         this.§throw§ = param3;
         this.§4z§ = false;
         this.§[!x§ = new Vector.<String>(0);
         this.§9f§ = new Vector.<Number>(0);
         this.§%!v§ = new Vector.<Number>(0);
      }
      
      public function § !q§(param1:String, param2:Number) : void
      {
         if(this.§&d§ == null)
         {
            return;
         }
         this.§[!x§.push(param1);
         this.§9f§.push(Number.NaN);
         this.§%!v§.push(param2);
      }
      
      public function §!d§(param1:Number) : void
      {
         this.§ !q§("scaleX",param1);
         this.§ !q§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§ !q§("x",param1);
         this.§ !q§("y",param2);
      }
      
      public function §%!2§(param1:Number) : void
      {
         this.§ !q§("alpha",param1);
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
         var _loc2_:Number = this.§7r§;
         this.§7r§ += param1;
         if(this.§7r§ < 0 || _loc2_ >= this.§+"?§)
         {
            return;
         }
         if(this.§'!B§ != null && _loc2_ <= 0 && this.§7r§ >= 0)
         {
            this.§'!B§.apply(null,this.§<@§);
         }
         var _loc3_:Number = Math.min(this.§+"?§,this.§7r§) / this.§+"?§;
         var _loc4_:int = this.§9f§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§9f§[_loc5_]))
            {
               this.§9f§[_loc5_] = this.§&d§[this.§[!x§[_loc5_]] as Number;
            }
            _loc6_ = this.§9f§[_loc5_];
            _loc8_ = (_loc7_ = this.§%!v§[_loc5_]) - _loc6_;
            _loc9_ = §8!>§.§^!U§(this.§throw§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§4z§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&d§[this.§[!x§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§9!o§);
         }
         if(_loc2_ < this.§+"?§ && this.§7r§ >= this.§+"?§)
         {
            dispatchEvent(new Event(Event.§'m§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§ !z§);
            }
         }
      }
      
      public function get §3r§() : Boolean
      {
         return this.§7r§ >= this.§+"?§;
      }
      
      public function get target() : Object
      {
         return this.§&d§;
      }
      
      public function get §]H§() : String
      {
         return this.§throw§;
      }
      
      public function get §4!4§() : Number
      {
         return this.§+"?§;
      }
      
      public function get §=""§() : Number
      {
         return this.§7r§;
      }
      
      public function get delay() : Number
      {
         return this.§&l§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§7r§ = this.§7r§ + this.§&l§ - param1;
         this.§&l§ = param1;
      }
      
      public function get §?!2§() : Boolean
      {
         return this.§4z§;
      }
      
      public function set §?!2§(param1:Boolean) : void
      {
         this.§4z§ = param1;
      }
      
      public function get §'!B§() : Function
      {
         return this.§2!E§;
      }
      
      public function set §'!B§(param1:Function) : void
      {
         this.§2!E§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§<!"§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§<!"§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§,h§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§,h§ = param1;
      }
      
      public function get §"'§() : Array
      {
         return this.§<@§;
      }
      
      public function set §"'§(param1:Array) : void
      {
         this.§<@§ = param1;
      }
      
      public function get §=s§() : Array
      {
         return this.§9!o§;
      }
      
      public function set §=s§(param1:Array) : void
      {
         this.§9!o§ = param1;
      }
      
      public function get §3!a§() : Array
      {
         return this.§ !z§;
      }
      
      public function set §3!a§(param1:Array) : void
      {
         this.§ !z§ = param1;
      }
   }
}
