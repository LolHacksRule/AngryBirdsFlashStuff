package §>!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#k§ extends EventDispatcher implements §`B§
   {
       
      
      private var §?!<§:Object;
      
      private var §-!w§:String;
      
      private var §,2§:Vector.<String>;
      
      private var §7U§:Vector.<Number>;
      
      private var §89§:Vector.<Number>;
      
      private var §;4§:Function;
      
      private var §@!n§:Function;
      
      private var §6!s§:Function;
      
      private var §'!U§:Array;
      
      private var §-+§:Array;
      
      private var §#!0§:Array;
      
      private var §,!c§:Number;
      
      private var §7"8§:Number;
      
      private var §9"#§:Number;
      
      private var §^"-§:Boolean;
      
      public function §#k§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§?!<§ = param1;
         this.§7"8§ = 0;
         this.§,!c§ = Math.max(0.0001,param2);
         this.§9"#§ = 0;
         this.§-!w§ = param3;
         this.§^"-§ = false;
         this.§,2§ = new Vector.<String>(0);
         this.§7U§ = new Vector.<Number>(0);
         this.§89§ = new Vector.<Number>(0);
      }
      
      public function §&b§(param1:String, param2:Number) : void
      {
         if(this.§?!<§ == null)
         {
            return;
         }
         this.§,2§.push(param1);
         this.§7U§.push(Number.NaN);
         this.§89§.push(param2);
      }
      
      public function §3!3§(param1:Number) : void
      {
         this.§&b§("scaleX",param1);
         this.§&b§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§&b§("x",param1);
         this.§&b§("y",param2);
      }
      
      public function §&!P§(param1:Number) : void
      {
         this.§&b§("alpha",param1);
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
         var _loc2_:Number = this.§7"8§;
         this.§7"8§ += param1;
         if(this.§7"8§ < 0 || _loc2_ >= this.§,!c§)
         {
            return;
         }
         if(this.§""E§ != null && _loc2_ <= 0 && this.§7"8§ >= 0)
         {
            this.§""E§.apply(null,this.§'!U§);
         }
         var _loc3_:Number = Math.min(this.§,!c§,this.§7"8§) / this.§,!c§;
         var _loc4_:int = this.§7U§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§7U§[_loc5_]))
            {
               this.§7U§[_loc5_] = this.§?!<§[this.§,2§[_loc5_]] as Number;
            }
            _loc6_ = this.§7U§[_loc5_];
            _loc8_ = (_loc7_ = this.§89§[_loc5_]) - _loc6_;
            _loc9_ = §7I§.§<!C§(this.§-!w§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§^"-§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§?!<§[this.§,2§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§<V§ != null)
         {
            this.§<V§.apply(null,this.§-+§);
         }
         if(_loc2_ < this.§,!c§ && this.§7"8§ >= this.§,!c§)
         {
            dispatchEvent(new Event(Event.§^m§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§#!0§);
            }
         }
      }
      
      public function get §6!^§() : Boolean
      {
         return this.§7"8§ >= this.§,!c§;
      }
      
      public function get target() : Object
      {
         return this.§?!<§;
      }
      
      public function get §9",§() : String
      {
         return this.§-!w§;
      }
      
      public function get §#F§() : Number
      {
         return this.§,!c§;
      }
      
      public function get §+V§() : Number
      {
         return this.§7"8§;
      }
      
      public function get delay() : Number
      {
         return this.§9"#§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§7"8§ = this.§7"8§ + this.§9"#§ - param1;
         this.§9"#§ = param1;
      }
      
      public function get §<!'§() : Boolean
      {
         return this.§^"-§;
      }
      
      public function set §<!'§(param1:Boolean) : void
      {
         this.§^"-§ = param1;
      }
      
      public function get §""E§() : Function
      {
         return this.§;4§;
      }
      
      public function set §""E§(param1:Function) : void
      {
         this.§;4§ = param1;
      }
      
      public function get §<V§() : Function
      {
         return this.§@!n§;
      }
      
      public function set §<V§(param1:Function) : void
      {
         this.§@!n§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§6!s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§6!s§ = param1;
      }
      
      public function get §`!N§() : Array
      {
         return this.§'!U§;
      }
      
      public function set §`!N§(param1:Array) : void
      {
         this.§'!U§ = param1;
      }
      
      public function get §]"G§() : Array
      {
         return this.§-+§;
      }
      
      public function set §]"G§(param1:Array) : void
      {
         this.§-+§ = param1;
      }
      
      public function get §1!t§() : Array
      {
         return this.§#!0§;
      }
      
      public function set §1!t§(param1:Array) : void
      {
         this.§#!0§ = param1;
      }
   }
}
