package §0j§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2L§ extends EventDispatcher implements §,!Z§
   {
       
      
      private var §5!F§:Object;
      
      private var §6!@§:String;
      
      private var §8b§:Vector.<String>;
      
      private var §@;§:Vector.<Number>;
      
      private var §8p§:Vector.<Number>;
      
      private var §`b§:Function;
      
      private var §]8§:Function;
      
      private var §-!1§:Function;
      
      private var §0!X§:Array;
      
      private var §7>§:Array;
      
      private var §+u§:Array;
      
      private var §"3§:Number;
      
      private var §;!$§:Number;
      
      private var §;W§:Number;
      
      private var §7!,§:Boolean;
      
      public function §2L§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§5!F§ = param1;
         this.§;!$§ = 0;
         this.§"3§ = Math.max(0.0001,param2);
         this.§;W§ = 0;
         this.§6!@§ = param3;
         this.§7!,§ = false;
         this.§8b§ = new Vector.<String>(0);
         this.§@;§ = new Vector.<Number>(0);
         this.§8p§ = new Vector.<Number>(0);
      }
      
      public function §!!G§(param1:String, param2:Number) : void
      {
         if(this.§5!F§ == null)
         {
            return;
         }
         this.§8b§.push(param1);
         this.§@;§.push(Number.NaN);
         this.§8p§.push(param2);
      }
      
      public function §^d§(param1:Number) : void
      {
         this.§!!G§("scaleX",param1);
         this.§!!G§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§!!G§("x",param1);
         this.§!!G§("y",param2);
      }
      
      public function §!b§(param1:Number) : void
      {
         this.§!!G§("alpha",param1);
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
         var _loc2_:Number = this.§;!$§;
         this.§;!$§ += param1;
         if(this.§;!$§ < 0 || _loc2_ >= this.§"3§)
         {
            return;
         }
         if(this.§5Z§ != null && _loc2_ <= 0 && this.§;!$§ >= 0)
         {
            this.§5Z§.apply(null,this.§0!X§);
         }
         var _loc3_:Number = Math.min(this.§"3§,this.§;!$§) / this.§"3§;
         var _loc4_:int = this.§@;§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§@;§[_loc5_]))
            {
               this.§@;§[_loc5_] = this.§5!F§[this.§8b§[_loc5_]] as Number;
            }
            _loc6_ = this.§@;§[_loc5_];
            _loc8_ = (_loc7_ = this.§8p§[_loc5_]) - _loc6_;
            _loc9_ = §[f§.§,0§(this.§6!@§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§7!,§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§5!F§[this.§8b§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§?'§ != null)
         {
            this.§?'§.apply(null,this.§7>§);
         }
         if(_loc2_ < this.§"3§ && this.§;!$§ >= this.§"3§)
         {
            dispatchEvent(new Event(Event.§<@§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§+u§);
            }
         }
      }
      
      public function get §;!§() : Boolean
      {
         return this.§;!$§ >= this.§"3§;
      }
      
      public function get target() : Object
      {
         return this.§5!F§;
      }
      
      public function get §2!<§() : String
      {
         return this.§6!@§;
      }
      
      public function get §'"§() : Number
      {
         return this.§"3§;
      }
      
      public function get §>!Y§() : Number
      {
         return this.§;!$§;
      }
      
      public function get delay() : Number
      {
         return this.§;W§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§;!$§ = this.§;!$§ + this.§;W§ - param1;
         this.§;W§ = param1;
      }
      
      public function get §9§() : Boolean
      {
         return this.§7!,§;
      }
      
      public function set §9§(param1:Boolean) : void
      {
         this.§7!,§ = param1;
      }
      
      public function get §5Z§() : Function
      {
         return this.§`b§;
      }
      
      public function set §5Z§(param1:Function) : void
      {
         this.§`b§ = param1;
      }
      
      public function get §?'§() : Function
      {
         return this.§]8§;
      }
      
      public function set §?'§(param1:Function) : void
      {
         this.§]8§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§-!1§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§-!1§ = param1;
      }
      
      public function get §>H§() : Array
      {
         return this.§0!X§;
      }
      
      public function set §>H§(param1:Array) : void
      {
         this.§0!X§ = param1;
      }
      
      public function get §&l§() : Array
      {
         return this.§7>§;
      }
      
      public function set §&l§(param1:Array) : void
      {
         this.§7>§ = param1;
      }
      
      public function get §^§() : Array
      {
         return this.§+u§;
      }
      
      public function set §^§(param1:Array) : void
      {
         this.§+u§ = param1;
      }
   }
}
