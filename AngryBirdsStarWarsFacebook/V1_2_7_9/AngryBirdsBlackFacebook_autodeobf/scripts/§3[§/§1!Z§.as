package §3[§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §1!Z§ extends EventDispatcher implements §+",§
   {
       
      
      private var §6"c§:Object;
      
      private var §,_§:String;
      
      private var §]"M§:Vector.<String>;
      
      private var §9!I§:Vector.<Number>;
      
      private var §@!m§:Vector.<Number>;
      
      private var §3!^§:Function;
      
      private var §<X§:Function;
      
      private var §6-§:Function;
      
      private var §>"g§:Array;
      
      private var §7"-§:Array;
      
      private var §5"s§:Array;
      
      private var §0w§:Number;
      
      private var §,§:Number;
      
      private var §#n§:Number;
      
      private var § L§:Boolean;
      
      public function §1!Z§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§6"c§ = param1;
         this.§,§ = 0;
         this.§0w§ = Math.max(0.0001,param2);
         this.§#n§ = 0;
         this.§,_§ = param3;
         this.§ L§ = false;
         this.§]"M§ = new Vector.<String>(0);
         this.§9!I§ = new Vector.<Number>(0);
         this.§@!m§ = new Vector.<Number>(0);
      }
      
      public function §]"d§(param1:String, param2:Number) : void
      {
         if(this.§6"c§ == null)
         {
            return;
         }
         this.§]"M§.push(param1);
         this.§9!I§.push(Number.NaN);
         this.§@!m§.push(param2);
      }
      
      public function §,##§(param1:Number) : void
      {
         this.§]"d§("scaleX",param1);
         this.§]"d§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§]"d§("x",param1);
         this.§]"d§("y",param2);
      }
      
      public function §';§(param1:Number) : void
      {
         this.§]"d§("alpha",param1);
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
         var _loc2_:Number = this.§,§;
         this.§,§ += param1;
         if(this.§,§ < 0 || _loc2_ >= this.§0w§)
         {
            return;
         }
         if(this.§<"?§ != null && _loc2_ <= 0 && this.§,§ >= 0)
         {
            this.§<"?§.apply(null,this.§>"g§);
         }
         var _loc3_:Number = Math.min(this.§0w§,this.§,§) / this.§0w§;
         var _loc4_:int = this.§9!I§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§9!I§[_loc5_]))
            {
               this.§9!I§[_loc5_] = this.§6"c§[this.§]"M§[_loc5_]] as Number;
            }
            _loc6_ = this.§9!I§[_loc5_];
            _loc8_ = (_loc7_ = this.§@!m§[_loc5_]) - _loc6_;
            _loc9_ = § E§.§'#+§(this.§,_§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§ L§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§6"c§[this.§]"M§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§0Y§ != null)
         {
            this.§0Y§.apply(null,this.§7"-§);
         }
         if(_loc2_ < this.§0w§ && this.§,§ >= this.§0w§)
         {
            dispatchEvent(new Event(Event.§>!V§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§5"s§);
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.§,§ >= this.§0w§;
      }
      
      public function get target() : Object
      {
         return this.§6"c§;
      }
      
      public function get §!!1§() : String
      {
         return this.§,_§;
      }
      
      public function get §%m§() : Number
      {
         return this.§0w§;
      }
      
      public function get currentTime() : Number
      {
         return this.§,§;
      }
      
      public function get delay() : Number
      {
         return this.§#n§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§,§ = this.§,§ + this.§#n§ - param1;
         this.§#n§ = param1;
      }
      
      public function get §+"V§() : Boolean
      {
         return this.§ L§;
      }
      
      public function set §+"V§(param1:Boolean) : void
      {
         this.§ L§ = param1;
      }
      
      public function get §<"?§() : Function
      {
         return this.§3!^§;
      }
      
      public function set §<"?§(param1:Function) : void
      {
         this.§3!^§ = param1;
      }
      
      public function get §0Y§() : Function
      {
         return this.§<X§;
      }
      
      public function set §0Y§(param1:Function) : void
      {
         this.§<X§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§6-§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§6-§ = param1;
      }
      
      public function get §^"<§() : Array
      {
         return this.§>"g§;
      }
      
      public function set §^"<§(param1:Array) : void
      {
         this.§>"g§ = param1;
      }
      
      public function get §7!V§() : Array
      {
         return this.§7"-§;
      }
      
      public function set §7!V§(param1:Array) : void
      {
         this.§7"-§ = param1;
      }
      
      public function get §1!"§() : Array
      {
         return this.§5"s§;
      }
      
      public function set §1!"§(param1:Array) : void
      {
         this.§5"s§ = param1;
      }
   }
}
