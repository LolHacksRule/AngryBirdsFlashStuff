package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=!A§ extends EventDispatcher implements §8!h§
   {
       
      
      private var §0!R§:Object;
      
      private var §3d§:String;
      
      private var §>K§:Vector.<String>;
      
      private var §%&§:Vector.<Number>;
      
      private var §<!S§:Vector.<Number>;
      
      private var §9Z§:Function;
      
      private var §,=§:Function;
      
      private var §@V§:Function;
      
      private var §6E§:Array;
      
      private var §!'§:Array;
      
      private var §9!@§:Array;
      
      private var §[!F§:Number;
      
      private var §0t§:Number;
      
      private var §1!o§:Number;
      
      private var §>!Q§:Boolean;
      
      public function §=!A§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§0!R§ = param1;
         this.§0t§ = 0;
         this.§[!F§ = Math.max(0.0001,param2);
         this.§1!o§ = 0;
         this.§3d§ = param3;
         this.§>!Q§ = false;
         this.§>K§ = new Vector.<String>(0);
         this.§%&§ = new Vector.<Number>(0);
         this.§<!S§ = new Vector.<Number>(0);
      }
      
      public function §<!G§(param1:String, param2:Number) : void
      {
         if(this.§0!R§ == null)
         {
            return;
         }
         this.§>K§.push(param1);
         this.§%&§.push(Number.NaN);
         this.§<!S§.push(param2);
      }
      
      public function §&6§(param1:Number) : void
      {
         this.§<!G§("scaleX",param1);
         this.§<!G§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§<!G§("x",param1);
         this.§<!G§("y",param2);
      }
      
      public function §@f§(param1:Number) : void
      {
         this.§<!G§("alpha",param1);
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
         var _loc2_:Number = this.§0t§;
         this.§0t§ += param1;
         if(this.§0t§ < 0 || _loc2_ >= this.§[!F§)
         {
            return;
         }
         if(this.§]![§ != null && _loc2_ <= 0 && this.§0t§ >= 0)
         {
            this.§]![§.apply(null,this.§6E§);
         }
         var _loc3_:Number = Math.min(this.§[!F§,this.§0t§) / this.§[!F§;
         var _loc4_:int = this.§%&§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§%&§[_loc5_]))
            {
               this.§%&§[_loc5_] = this.§0!R§[this.§>K§[_loc5_]] as Number;
            }
            _loc6_ = this.§%&§[_loc5_];
            _loc8_ = (_loc7_ = this.§<!S§[_loc5_]) - _loc6_;
            _loc9_ = §6!;§.§9!I§(this.§3d§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§>!Q§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§0!R§[this.§>K§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§]!v§ != null)
         {
            this.§]!v§.apply(null,this.§!'§);
         }
         if(_loc2_ < this.§[!F§ && this.§0t§ >= this.§[!F§)
         {
            dispatchEvent(new Event(Event.§]!%§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§9!@§);
            }
         }
      }
      
      public function get §1!Y§() : Boolean
      {
         return this.§0t§ >= this.§[!F§;
      }
      
      public function get target() : Object
      {
         return this.§0!R§;
      }
      
      public function get §?!Q§() : String
      {
         return this.§3d§;
      }
      
      public function get §with§() : Number
      {
         return this.§[!F§;
      }
      
      public function get §%p§() : Number
      {
         return this.§0t§;
      }
      
      public function get delay() : Number
      {
         return this.§1!o§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0t§ = this.§0t§ + this.§1!o§ - param1;
         this.§1!o§ = param1;
      }
      
      public function get §%5§() : Boolean
      {
         return this.§>!Q§;
      }
      
      public function set §%5§(param1:Boolean) : void
      {
         this.§>!Q§ = param1;
      }
      
      public function get §]![§() : Function
      {
         return this.§9Z§;
      }
      
      public function set §]![§(param1:Function) : void
      {
         this.§9Z§ = param1;
      }
      
      public function get §]!v§() : Function
      {
         return this.§,=§;
      }
      
      public function set §]!v§(param1:Function) : void
      {
         this.§,=§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§@V§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§@V§ = param1;
      }
      
      public function get §#p§() : Array
      {
         return this.§6E§;
      }
      
      public function set §#p§(param1:Array) : void
      {
         this.§6E§ = param1;
      }
      
      public function get §5!r§() : Array
      {
         return this.§!'§;
      }
      
      public function set §5!r§(param1:Array) : void
      {
         this.§!'§ = param1;
      }
      
      public function get §[!H§() : Array
      {
         return this.§9!@§;
      }
      
      public function set §[!H§(param1:Array) : void
      {
         this.§9!@§ = param1;
      }
   }
}
