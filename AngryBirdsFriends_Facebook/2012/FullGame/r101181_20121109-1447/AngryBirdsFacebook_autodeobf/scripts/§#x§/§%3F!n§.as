package §#x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?!n§ extends EventDispatcher implements §2n§
   {
       
      
      private var § !8§:Object;
      
      private var §-5§:String;
      
      private var §#">§:Vector.<String>;
      
      private var §38§:Vector.<Number>;
      
      private var §-!r§:Vector.<Number>;
      
      private var §@z§:Function;
      
      private var §,!>§:Function;
      
      private var §>!8§:Function;
      
      private var §true§:Array;
      
      private var §^!h§:Array;
      
      private var §@J§:Array;
      
      private var §#!O§:Number;
      
      private var §8"1§:Number;
      
      private var §0!t§:Number;
      
      private var §!!G§:Boolean;
      
      public function §?!n§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§ !8§ = param1;
         this.§8"1§ = 0;
         this.§#!O§ = Math.max(0.0001,param2);
         this.§0!t§ = 0;
         this.§-5§ = param3;
         this.§!!G§ = false;
         this.§#">§ = new Vector.<String>(0);
         this.§38§ = new Vector.<Number>(0);
         this.§-!r§ = new Vector.<Number>(0);
      }
      
      public function §<"-§(param1:String, param2:Number) : void
      {
         if(this.§ !8§ == null)
         {
            return;
         }
         this.§#">§.push(param1);
         this.§38§.push(Number.NaN);
         this.§-!r§.push(param2);
      }
      
      public function §<y§(param1:Number) : void
      {
         this.§<"-§("scaleX",param1);
         this.§<"-§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§<"-§("x",param1);
         this.§<"-§("y",param2);
      }
      
      public function §>H§(param1:Number) : void
      {
         this.§<"-§("alpha",param1);
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
         var _loc2_:Number = this.§8"1§;
         this.§8"1§ += param1;
         if(this.§8"1§ < 0 || _loc2_ >= this.§#!O§)
         {
            return;
         }
         if(this.§9!5§ != null && _loc2_ <= 0 && this.§8"1§ >= 0)
         {
            this.§9!5§.apply(null,this.§true§);
         }
         var _loc3_:Number = Math.min(this.§#!O§,this.§8"1§) / this.§#!O§;
         var _loc4_:int = this.§38§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§38§[_loc5_]))
            {
               this.§38§[_loc5_] = this.§ !8§[this.§#">§[_loc5_]] as Number;
            }
            _loc6_ = this.§38§[_loc5_];
            _loc8_ = (_loc7_ = this.§-!r§[_loc5_]) - _loc6_;
            _loc9_ = §0!M§.§ !E§(this.§-5§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§!!G§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§ !8§[this.§#">§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§["B§ != null)
         {
            this.§["B§.apply(null,this.§^!h§);
         }
         if(_loc2_ < this.§#!O§ && this.§8"1§ >= this.§#!O§)
         {
            dispatchEvent(new Event(Event.§@!e§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§@J§);
            }
         }
      }
      
      public function get §!U§() : Boolean
      {
         return this.§8"1§ >= this.§#!O§;
      }
      
      public function get target() : Object
      {
         return this.§ !8§;
      }
      
      public function get §[1§() : String
      {
         return this.§-5§;
      }
      
      public function get § B§() : Number
      {
         return this.§#!O§;
      }
      
      public function get §^#§() : Number
      {
         return this.§8"1§;
      }
      
      public function get delay() : Number
      {
         return this.§0!t§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§8"1§ = this.§8"1§ + this.§0!t§ - param1;
         this.§0!t§ = param1;
      }
      
      public function get §=b§() : Boolean
      {
         return this.§!!G§;
      }
      
      public function set §=b§(param1:Boolean) : void
      {
         this.§!!G§ = param1;
      }
      
      public function get §9!5§() : Function
      {
         return this.§@z§;
      }
      
      public function set §9!5§(param1:Function) : void
      {
         this.§@z§ = param1;
      }
      
      public function get §["B§() : Function
      {
         return this.§,!>§;
      }
      
      public function set §["B§(param1:Function) : void
      {
         this.§,!>§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§>!8§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§>!8§ = param1;
      }
      
      public function get §'!N§() : Array
      {
         return this.§true§;
      }
      
      public function set §'!N§(param1:Array) : void
      {
         this.§true§ = param1;
      }
      
      public function get §<!I§() : Array
      {
         return this.§^!h§;
      }
      
      public function set §<!I§(param1:Array) : void
      {
         this.§^!h§ = param1;
      }
      
      public function get §?m§() : Array
      {
         return this.§@J§;
      }
      
      public function set §?m§(param1:Array) : void
      {
         this.§@J§ = param1;
      }
   }
}
