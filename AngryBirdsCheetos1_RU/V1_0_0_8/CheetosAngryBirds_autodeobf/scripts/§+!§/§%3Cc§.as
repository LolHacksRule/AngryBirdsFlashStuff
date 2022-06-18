package §+!§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<c§ extends EventDispatcher implements §[!P§
   {
       
      
      private var §+S§:Object;
      
      private var §>^§:String;
      
      private var §-!T§:Vector.<String>;
      
      private var §9P§:Vector.<Number>;
      
      private var §]g§:Vector.<Number>;
      
      private var §`!<§:Function;
      
      private var §6!;§:Function;
      
      private var §<!-§:Function;
      
      private var §>%§:Array;
      
      private var §,v§:Array;
      
      private var §=!A§:Array;
      
      private var §3l§:Number;
      
      private var §%B§:Number;
      
      private var §>_§:Number;
      
      private var §#!C§:Boolean;
      
      public function §<c§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+S§ = param1;
         this.§%B§ = 0;
         this.§3l§ = Math.max(0.0001,param2);
         this.§>_§ = 0;
         this.§>^§ = param3;
         this.§#!C§ = false;
         this.§-!T§ = new Vector.<String>(0);
         this.§9P§ = new Vector.<Number>(0);
         this.§]g§ = new Vector.<Number>(0);
      }
      
      public function §,d§(param1:String, param2:Number) : void
      {
         if(this.§+S§ == null)
         {
            return;
         }
         this.§-!T§.push(param1);
         this.§9P§.push(Number.NaN);
         this.§]g§.push(param2);
      }
      
      public function §`S§(param1:Number) : void
      {
         this.§,d§("scaleX",param1);
         this.§,d§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§,d§("x",param1);
         this.§,d§("y",param2);
      }
      
      public function §8!0§(param1:Number) : void
      {
         this.§,d§("alpha",param1);
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
         var _loc2_:Number = this.§%B§;
         this.§%B§ += param1;
         if(this.§%B§ < 0 || _loc2_ >= this.§3l§)
         {
            return;
         }
         if(this.§9l§ != null && _loc2_ <= 0 && this.§%B§ >= 0)
         {
            this.§9l§.apply(null,this.§>%§);
         }
         var _loc3_:Number = Math.min(this.§3l§,this.§%B§) / this.§3l§;
         var _loc4_:int = this.§9P§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§9P§[_loc5_]))
            {
               this.§9P§[_loc5_] = this.§+S§[this.§-!T§[_loc5_]] as Number;
            }
            _loc6_ = this.§9P§[_loc5_];
            _loc8_ = (_loc7_ = this.§]g§[_loc5_]) - _loc6_;
            _loc9_ = §!8§.§@!3§(this.§>^§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§#!C§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+S§[this.§-!T§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§?!Q§ != null)
         {
            this.§?!Q§.apply(null,this.§,v§);
         }
         if(_loc2_ < this.§3l§ && this.§%B§ >= this.§3l§)
         {
            dispatchEvent(new Event(Event.§<P§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§=!A§);
            }
         }
      }
      
      public function get §6!9§() : Boolean
      {
         return this.§%B§ >= this.§3l§;
      }
      
      public function get target() : Object
      {
         return this.§+S§;
      }
      
      public function get §9y§() : String
      {
         return this.§>^§;
      }
      
      public function get §<!4§() : Number
      {
         return this.§3l§;
      }
      
      public function get §@!S§() : Number
      {
         return this.§%B§;
      }
      
      public function get delay() : Number
      {
         return this.§>_§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§%B§ = this.§%B§ + this.§>_§ - param1;
         this.§>_§ = param1;
      }
      
      public function get §+!L§() : Boolean
      {
         return this.§#!C§;
      }
      
      public function set §+!L§(param1:Boolean) : void
      {
         this.§#!C§ = param1;
      }
      
      public function get §9l§() : Function
      {
         return this.§`!<§;
      }
      
      public function set §9l§(param1:Function) : void
      {
         this.§`!<§ = param1;
      }
      
      public function get §?!Q§() : Function
      {
         return this.§6!;§;
      }
      
      public function set §?!Q§(param1:Function) : void
      {
         this.§6!;§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§<!-§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§<!-§ = param1;
      }
      
      public function get §6T§() : Array
      {
         return this.§>%§;
      }
      
      public function set §6T§(param1:Array) : void
      {
         this.§>%§ = param1;
      }
      
      public function get §%?§() : Array
      {
         return this.§,v§;
      }
      
      public function set §%?§(param1:Array) : void
      {
         this.§,v§ = param1;
      }
      
      public function get §4E§() : Array
      {
         return this.§=!A§;
      }
      
      public function set §4E§(param1:Array) : void
      {
         this.§=!A§ = param1;
      }
   }
}
