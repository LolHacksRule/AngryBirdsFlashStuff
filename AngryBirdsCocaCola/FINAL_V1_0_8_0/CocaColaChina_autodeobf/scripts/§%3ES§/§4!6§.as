package §>S§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §4!6§ extends EventDispatcher implements §",§
   {
       
      
      private var §+Q§:Object;
      
      private var §,!^§:String;
      
      private var §7^§:Vector.<String>;
      
      private var §'-§:Vector.<Number>;
      
      private var § '§:Vector.<Number>;
      
      private var §&h§:Function;
      
      private var §=!N§:Function;
      
      private var §0V§:Function;
      
      private var §0!&§:Array;
      
      private var §5!?§:Array;
      
      private var §^!M§:Array;
      
      private var §4!^§:Number;
      
      private var §;!e§:Number;
      
      private var §@H§:Number;
      
      private var §^Y§:Boolean;
      
      public function §4!6§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+Q§ = param1;
         this.§;!e§ = 0;
         this.§4!^§ = Math.max(0.0001,param2);
         this.§@H§ = 0;
         this.§,!^§ = param3;
         this.§^Y§ = false;
         this.§7^§ = new Vector.<String>(0);
         this.§'-§ = new Vector.<Number>(0);
         this.§ '§ = new Vector.<Number>(0);
      }
      
      public function §4[§(param1:String, param2:Number) : void
      {
         if(this.§+Q§ == null)
         {
            return;
         }
         this.§7^§.push(param1);
         this.§'-§.push(Number.NaN);
         this.§ '§.push(param2);
      }
      
      public function §1E§(param1:Number) : void
      {
         this.§4[§("scaleX",param1);
         this.§4[§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§4[§("x",param1);
         this.§4[§("y",param2);
      }
      
      public function §=f§(param1:Number) : void
      {
         this.§4[§("alpha",param1);
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
         var _loc2_:Number = this.§;!e§;
         this.§;!e§ += param1;
         if(this.§;!e§ < 0 || _loc2_ >= this.§4!^§)
         {
            return;
         }
         if(this.§,x§ != null && _loc2_ <= 0 && this.§;!e§ >= 0)
         {
            this.§,x§.apply(null,this.§0!&§);
         }
         var _loc3_:Number = Math.min(this.§4!^§,this.§;!e§) / this.§4!^§;
         var _loc4_:int = this.§'-§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§'-§[_loc5_]))
            {
               this.§'-§[_loc5_] = this.§+Q§[this.§7^§[_loc5_]] as Number;
            }
            _loc6_ = this.§'-§[_loc5_];
            _loc8_ = (_loc7_ = this.§ '§[_loc5_]) - _loc6_;
            _loc9_ = §8V§.§"r§(this.§,!^§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§^Y§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+Q§[this.§7^§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§%>§ != null)
         {
            this.§%>§.apply(null,this.§5!?§);
         }
         if(_loc2_ < this.§4!^§ && this.§;!e§ >= this.§4!^§)
         {
            dispatchEvent(new Event(Event.§`c§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§^!M§);
            }
         }
      }
      
      public function get §;F§() : Boolean
      {
         return this.§;!e§ >= this.§4!^§;
      }
      
      public function get target() : Object
      {
         return this.§+Q§;
      }
      
      public function get §1u§() : String
      {
         return this.§,!^§;
      }
      
      public function get §##§() : Number
      {
         return this.§4!^§;
      }
      
      public function get §[0§() : Number
      {
         return this.§;!e§;
      }
      
      public function get delay() : Number
      {
         return this.§@H§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§;!e§ = this.§;!e§ + this.§@H§ - param1;
         this.§@H§ = param1;
      }
      
      public function get §<!T§() : Boolean
      {
         return this.§^Y§;
      }
      
      public function set §<!T§(param1:Boolean) : void
      {
         this.§^Y§ = param1;
      }
      
      public function get §,x§() : Function
      {
         return this.§&h§;
      }
      
      public function set §,x§(param1:Function) : void
      {
         this.§&h§ = param1;
      }
      
      public function get §%>§() : Function
      {
         return this.§=!N§;
      }
      
      public function set §%>§(param1:Function) : void
      {
         this.§=!N§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§0V§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§0V§ = param1;
      }
      
      public function get §<!@§() : Array
      {
         return this.§0!&§;
      }
      
      public function set §<!@§(param1:Array) : void
      {
         this.§0!&§ = param1;
      }
      
      public function get §1S§() : Array
      {
         return this.§5!?§;
      }
      
      public function set §1S§(param1:Array) : void
      {
         this.§5!?§ = param1;
      }
      
      public function get §8k§() : Array
      {
         return this.§^!M§;
      }
      
      public function set §8k§(param1:Array) : void
      {
         this.§^!M§ = param1;
      }
   }
}
