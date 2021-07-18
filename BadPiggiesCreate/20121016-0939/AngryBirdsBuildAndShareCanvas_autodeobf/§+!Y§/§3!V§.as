package §+!Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3!V§ extends EventDispatcher implements §7!@§
   {
       
      
      private var §;D§:Object;
      
      private var §&=§:String;
      
      private var §8U§:Vector.<String>;
      
      private var §&!I§:Vector.<Number>;
      
      private var §;v§:Vector.<Number>;
      
      private var §+!"§:Function;
      
      private var §[!Y§:Function;
      
      private var §&6§:Function;
      
      private var §%k§:Array;
      
      private var §;W§:Array;
      
      private var § 8§:Array;
      
      private var §@!f§:Number;
      
      private var §%"-§:Number;
      
      private var §0!<§:Number;
      
      private var §>b§:Boolean;
      
      public function §3!V§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§;D§ = param1;
         this.§%"-§ = 0;
         this.§@!f§ = Math.max(0.0001,param2);
         this.§0!<§ = 0;
         this.§&=§ = param3;
         this.§>b§ = false;
         this.§8U§ = new Vector.<String>(0);
         this.§&!I§ = new Vector.<Number>(0);
         this.§;v§ = new Vector.<Number>(0);
      }
      
      public function §`!>§(param1:String, param2:Number) : void
      {
         if(this.§;D§ == null)
         {
            return;
         }
         this.§8U§.push(param1);
         this.§&!I§.push(Number.NaN);
         this.§;v§.push(param2);
      }
      
      public function §&!m§(param1:Number) : void
      {
         this.§`!>§("scaleX",param1);
         this.§`!>§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§`!>§("x",param1);
         this.§`!>§("y",param2);
      }
      
      public function §&X§(param1:Number) : void
      {
         this.§`!>§("alpha",param1);
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
         var _loc2_:Number = this.§%"-§;
         this.§%"-§ += param1;
         if(this.§%"-§ < 0 || _loc2_ >= this.§@!f§)
         {
            return;
         }
         if(this.§!!p§ != null && _loc2_ <= 0 && this.§%"-§ >= 0)
         {
            this.§!!p§.apply(null,this.§%k§);
         }
         var _loc3_:Number = Math.min(this.§@!f§,this.§%"-§) / this.§@!f§;
         var _loc4_:int = this.§&!I§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§&!I§[_loc5_]))
            {
               this.§&!I§[_loc5_] = this.§;D§[this.§8U§[_loc5_]] as Number;
            }
            _loc6_ = this.§&!I§[_loc5_];
            _loc8_ = (_loc7_ = this.§;v§[_loc5_]) - _loc6_;
            _loc9_ = §2l§.§ g§(this.§&=§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§>b§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§;D§[this.§8U§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.onUpdate != null)
         {
            this.onUpdate.apply(null,this.§;W§);
         }
         if(_loc2_ < this.§@!f§ && this.§%"-§ >= this.§@!f§)
         {
            dispatchEvent(new Event(Event.§^8§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§ 8§);
            }
         }
      }
      
      public function get §8-§() : Boolean
      {
         return this.§%"-§ >= this.§@!f§;
      }
      
      public function get target() : Object
      {
         return this.§;D§;
      }
      
      public function get §8!6§() : String
      {
         return this.§&=§;
      }
      
      public function get §!P§() : Number
      {
         return this.§@!f§;
      }
      
      public function get §@!=§() : Number
      {
         return this.§%"-§;
      }
      
      public function get delay() : Number
      {
         return this.§0!<§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§%"-§ = this.§%"-§ + this.§0!<§ - param1;
         this.§0!<§ = param1;
      }
      
      public function get §'!0§() : Boolean
      {
         return this.§>b§;
      }
      
      public function set §'!0§(param1:Boolean) : void
      {
         this.§>b§ = param1;
      }
      
      public function get §!!p§() : Function
      {
         return this.§+!"§;
      }
      
      public function set §!!p§(param1:Function) : void
      {
         this.§+!"§ = param1;
      }
      
      public function get onUpdate() : Function
      {
         return this.§[!Y§;
      }
      
      public function set onUpdate(param1:Function) : void
      {
         this.§[!Y§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§&6§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§&6§ = param1;
      }
      
      public function get §9!=§() : Array
      {
         return this.§%k§;
      }
      
      public function set §9!=§(param1:Array) : void
      {
         this.§%k§ = param1;
      }
      
      public function get §%Z§() : Array
      {
         return this.§;W§;
      }
      
      public function set §%Z§(param1:Array) : void
      {
         this.§;W§ = param1;
      }
      
      public function get §'!O§() : Array
      {
         return this.§ 8§;
      }
      
      public function set §'!O§(param1:Array) : void
      {
         this.§ 8§ = param1;
      }
   }
}
