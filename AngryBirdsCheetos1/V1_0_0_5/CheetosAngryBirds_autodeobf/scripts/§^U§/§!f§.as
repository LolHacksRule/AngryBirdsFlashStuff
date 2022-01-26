package §^U§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!f§ extends EventDispatcher implements §0j§
   {
       
      
      private var §2L§:Object;
      
      private var §5!F§:String;
      
      private var §6!@§:Vector.<String>;
      
      private var §8b§:Vector.<Number>;
      
      private var §@;§:Vector.<Number>;
      
      private var §8p§:Function;
      
      private var §`b§:Function;
      
      private var §]8§:Function;
      
      private var §-!1§:Array;
      
      private var §0!X§:Array;
      
      private var §7>§:Array;
      
      private var §;!$§:Number;
      
      private var §,c§:Number;
      
      private var §+u§:Number;
      
      private var §;W§:Boolean;
      
      public function §!f§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§2L§ = param1;
         this.§,c§ = 0;
         this.§;!$§ = Math.max(0.0001,param2);
         this.§+u§ = 0;
         this.§5!F§ = param3;
         this.§;W§ = false;
         this.§6!@§ = new Vector.<String>(0);
         this.§8b§ = new Vector.<Number>(0);
         this.§@;§ = new Vector.<Number>(0);
      }
      
      public function §7!,§(param1:String, param2:Number) : void
      {
         if(this.§2L§ == null)
         {
            return;
         }
         this.§6!@§.push(param1);
         this.§8b§.push(Number.NaN);
         this.§@;§.push(param2);
      }
      
      public function §!!G§(param1:Number) : void
      {
         this.§7!,§("scaleX",param1);
         this.§7!,§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§7!,§("x",param1);
         this.§7!,§("y",param2);
      }
      
      public function §^d§(param1:Number) : void
      {
         this.§7!,§("alpha",param1);
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
         var _loc2_:Number = this.§,c§;
         this.§,c§ += param1;
         if(this.§,c§ < 0 || _loc2_ >= this.§;!$§)
         {
            return;
         }
         if(this.§9§ != null && _loc2_ <= 0 && this.§,c§ >= 0)
         {
            this.§9§.apply(null,this.§-!1§);
         }
         var _loc3_:Number = Math.min(this.§;!$§,this.§,c§) / this.§;!$§;
         var _loc4_:int = this.§8b§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§8b§[_loc5_]))
            {
               this.§8b§[_loc5_] = this.§2L§[this.§6!@§[_loc5_]] as Number;
            }
            _loc6_ = this.§8b§[_loc5_];
            _loc8_ = (_loc7_ = this.§@;§[_loc5_]) - _loc6_;
            _loc9_ = §^§.§5!R§(this.§5!F§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§;W§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§2L§[this.§6!@§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§&!K§ != null)
         {
            this.§&!K§.apply(null,this.§0!X§);
         }
         if(_loc2_ < this.§;!$§ && this.§,c§ >= this.§;!$§)
         {
            dispatchEvent(new Event(Event.§>&§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§7>§);
            }
         }
      }
      
      public function get §>R§() : Boolean
      {
         return this.§,c§ >= this.§;!$§;
      }
      
      public function get target() : Object
      {
         return this.§2L§;
      }
      
      public function get §!b§() : String
      {
         return this.§5!F§;
      }
      
      public function get §;!§() : Number
      {
         return this.§;!$§;
      }
      
      public function get §'"§() : Number
      {
         return this.§,c§;
      }
      
      public function get delay() : Number
      {
         return this.§+u§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§,c§ = this.§,c§ + this.§+u§ - param1;
         this.§+u§ = param1;
      }
      
      public function get §2!<§() : Boolean
      {
         return this.§;W§;
      }
      
      public function set §2!<§(param1:Boolean) : void
      {
         this.§;W§ = param1;
      }
      
      public function get §9§() : Function
      {
         return this.§8p§;
      }
      
      public function set §9§(param1:Function) : void
      {
         this.§8p§ = param1;
      }
      
      public function get §&!K§() : Function
      {
         return this.§`b§;
      }
      
      public function set §&!K§(param1:Function) : void
      {
         this.§`b§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§]8§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§]8§ = param1;
      }
      
      public function get §5Z§() : Array
      {
         return this.§-!1§;
      }
      
      public function set §5Z§(param1:Array) : void
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
   }
}
