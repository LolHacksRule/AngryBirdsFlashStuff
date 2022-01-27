package §&?§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;!2§ extends EventDispatcher implements §3l§
   {
       
      
      private var §<[§:Object;
      
      private var §6d§:String;
      
      private var §3q§:Vector.<String>;
      
      private var §`2§:Vector.<Number>;
      
      private var §&@§:Vector.<Number>;
      
      private var §,b§:Function;
      
      private var §'!I§:Function;
      
      private var §;"§:Function;
      
      private var §+1§:Array;
      
      private var §6D§:Array;
      
      private var §1>§:Array;
      
      private var §&!9§:Number;
      
      private var §&!!§:Number;
      
      private var §+D§:Number;
      
      private var §#<§:Boolean;
      
      public function §;!2§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§<[§ = param1;
         this.§&!!§ = 0;
         this.§&!9§ = Math.max(0.0001,param2);
         this.§+D§ = 0;
         this.§6d§ = param3;
         this.§#<§ = false;
         this.§3q§ = new Vector.<String>(0);
         this.§`2§ = new Vector.<Number>(0);
         this.§&@§ = new Vector.<Number>(0);
      }
      
      public function include(param1:String, param2:Number) : void
      {
         if(this.§<[§ == null)
         {
            return;
         }
         this.§3q§.push(param1);
         this.§`2§.push(Number.NaN);
         this.§&@§.push(param2);
      }
      
      public function §9!$§(param1:Number) : void
      {
         this.include("scaleX",param1);
         this.include("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.include("x",param1);
         this.include("y",param2);
      }
      
      public function §@B§(param1:Number) : void
      {
         this.include("alpha",param1);
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
         var _loc2_:Number = this.§&!!§;
         this.§&!!§ += param1;
         if(this.§&!!§ < 0 || _loc2_ >= this.§&!9§)
         {
            return;
         }
         if(this.§,3§ != null && _loc2_ <= 0 && this.§&!!§ >= 0)
         {
            this.§,3§.apply(null,this.§+1§);
         }
         var _loc3_:Number = Math.min(this.§&!9§,this.§&!!§) / this.§&!9§;
         var _loc4_:int = this.§`2§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§`2§[_loc5_]))
            {
               this.§`2§[_loc5_] = this.§<[§[this.§3q§[_loc5_]] as Number;
            }
            _loc6_ = this.§`2§[_loc5_];
            _loc8_ = (_loc7_ = this.§&@§[_loc5_]) - _loc6_;
            _loc9_ = §'`§.§<j§(this.§6d§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§#<§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§<[§[this.§3q§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§1m§ != null)
         {
            this.§1m§.apply(null,this.§6D§);
         }
         if(_loc2_ < this.§&!9§ && this.§&!!§ >= this.§&!9§)
         {
            dispatchEvent(new Event(Event.§8! §));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§1>§);
            }
         }
      }
      
      public function get §3j§() : Boolean
      {
         return this.§&!!§ >= this.§&!9§;
      }
      
      public function get target() : Object
      {
         return this.§<[§;
      }
      
      public function get §]Y§() : String
      {
         return this.§6d§;
      }
      
      public function get §>1§() : Number
      {
         return this.§&!9§;
      }
      
      public function get §9;§() : Number
      {
         return this.§&!!§;
      }
      
      public function get delay() : Number
      {
         return this.§+D§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§&!!§ = this.§&!!§ + this.§+D§ - param1;
         this.§+D§ = param1;
      }
      
      public function get §9E§() : Boolean
      {
         return this.§#<§;
      }
      
      public function set §9E§(param1:Boolean) : void
      {
         this.§#<§ = param1;
      }
      
      public function get §,3§() : Function
      {
         return this.§,b§;
      }
      
      public function set §,3§(param1:Function) : void
      {
         this.§,b§ = param1;
      }
      
      public function get §1m§() : Function
      {
         return this.§'!I§;
      }
      
      public function set §1m§(param1:Function) : void
      {
         this.§'!I§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§;"§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§;"§ = param1;
      }
      
      public function get §[m§() : Array
      {
         return this.§+1§;
      }
      
      public function set §[m§(param1:Array) : void
      {
         this.§+1§ = param1;
      }
      
      public function get § !%§() : Array
      {
         return this.§6D§;
      }
      
      public function set § !%§(param1:Array) : void
      {
         this.§6D§ = param1;
      }
      
      public function get §-<§() : Array
      {
         return this.§1>§;
      }
      
      public function set §-<§(param1:Array) : void
      {
         this.§1>§ = param1;
      }
   }
}
