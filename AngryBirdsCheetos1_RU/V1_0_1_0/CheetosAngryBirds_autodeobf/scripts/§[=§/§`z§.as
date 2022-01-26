package §[=§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`z§ extends EventDispatcher implements §`!<§
   {
       
      
      private var §&7§:Object;
      
      private var §&,§:String;
      
      private var §?!T§:Vector.<String>;
      
      private var §"+§:Vector.<Number>;
      
      private var §@§:Vector.<Number>;
      
      private var §?q§:Function;
      
      private var §8!U§:Function;
      
      private var §4!P§:Function;
      
      private var §3b§:Array;
      
      private var §'!9§:Array;
      
      private var §9e§:Array;
      
      private var §+!H§:Number;
      
      private var §[!A§:Number;
      
      private var § ,§:Number;
      
      private var §7<§:Boolean;
      
      public function §`z§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§&7§ = param1;
         this.§[!A§ = 0;
         this.§+!H§ = Math.max(0.0001,param2);
         this.§ ,§ = 0;
         this.§&,§ = param3;
         this.§7<§ = false;
         this.§?!T§ = new Vector.<String>(0);
         this.§"+§ = new Vector.<Number>(0);
         this.§@§ = new Vector.<Number>(0);
      }
      
      public function §+`§(param1:String, param2:Number) : void
      {
         if(this.§&7§ == null)
         {
            return;
         }
         this.§?!T§.push(param1);
         this.§"+§.push(Number.NaN);
         this.§@§.push(param2);
      }
      
      public function §3I§(param1:Number) : void
      {
         this.§+`§("scaleX",param1);
         this.§+`§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§+`§("x",param1);
         this.§+`§("y",param2);
      }
      
      public function §1!?§(param1:Number) : void
      {
         this.§+`§("alpha",param1);
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
         var _loc2_:Number = this.§[!A§;
         this.§[!A§ += param1;
         if(this.§[!A§ < 0 || _loc2_ >= this.§+!H§)
         {
            return;
         }
         if(this.§%1§ != null && _loc2_ <= 0 && this.§[!A§ >= 0)
         {
            this.§%1§.apply(null,this.§3b§);
         }
         var _loc3_:Number = Math.min(this.§+!H§,this.§[!A§) / this.§+!H§;
         var _loc4_:int = this.§"+§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§"+§[_loc5_]))
            {
               this.§"+§[_loc5_] = this.§&7§[this.§?!T§[_loc5_]] as Number;
            }
            _loc6_ = this.§"+§[_loc5_];
            _loc8_ = (_loc7_ = this.§@§[_loc5_]) - _loc6_;
            _loc9_ = §2g§.§4!?§(this.§&,§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§7<§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§&7§[this.§?!T§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§"9§ != null)
         {
            this.§"9§.apply(null,this.§'!9§);
         }
         if(_loc2_ < this.§+!H§ && this.§[!A§ >= this.§+!H§)
         {
            dispatchEvent(new Event(Event.§6w§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§9e§);
            }
         }
      }
      
      public function get §6y§() : Boolean
      {
         return this.§[!A§ >= this.§+!H§;
      }
      
      public function get target() : Object
      {
         return this.§&7§;
      }
      
      public function get set() : String
      {
         return this.§&,§;
      }
      
      public function get §!5§() : Number
      {
         return this.§+!H§;
      }
      
      public function get §&§() : Number
      {
         return this.§[!A§;
      }
      
      public function get delay() : Number
      {
         return this.§ ,§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[!A§ = this.§[!A§ + this.§ ,§ - param1;
         this.§ ,§ = param1;
      }
      
      public function get §!!-§() : Boolean
      {
         return this.§7<§;
      }
      
      public function set §!!-§(param1:Boolean) : void
      {
         this.§7<§ = param1;
      }
      
      public function get §%1§() : Function
      {
         return this.§?q§;
      }
      
      public function set §%1§(param1:Function) : void
      {
         this.§?q§ = param1;
      }
      
      public function get §"9§() : Function
      {
         return this.§8!U§;
      }
      
      public function set §"9§(param1:Function) : void
      {
         this.§8!U§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§4!P§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§4!P§ = param1;
      }
      
      public function get §0$§() : Array
      {
         return this.§3b§;
      }
      
      public function set §0$§(param1:Array) : void
      {
         this.§3b§ = param1;
      }
      
      public function get §=L§() : Array
      {
         return this.§'!9§;
      }
      
      public function set §=L§(param1:Array) : void
      {
         this.§'!9§ = param1;
      }
      
      public function get §`S§() : Array
      {
         return this.§9e§;
      }
      
      public function set §`S§(param1:Array) : void
      {
         this.§9e§ = param1;
      }
   }
}
