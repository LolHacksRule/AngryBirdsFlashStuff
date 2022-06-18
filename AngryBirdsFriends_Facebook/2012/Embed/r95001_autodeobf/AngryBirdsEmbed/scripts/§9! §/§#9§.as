package §9! §
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#9§ extends EventDispatcher implements §,!3§
   {
       
      
      private var §+v§:Object;
      
      private var §]!!§:String;
      
      private var §&e§:Vector.<String>;
      
      private var §0c§:Vector.<Number>;
      
      private var §^Q§:Vector.<Number>;
      
      private var §=!8§:Function;
      
      private var §for §:Function;
      
      private var §7f§:Function;
      
      private var §1!5§:Array;
      
      private var §&J§:Array;
      
      private var §"!$§:Array;
      
      private var §5k§:Number;
      
      private var §+`§:Number;
      
      private var §1O§:Number;
      
      private var §+!G§:Boolean;
      
      public function §#9§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+v§ = param1;
         this.§+`§ = 0;
         this.§5k§ = Math.max(0.0001,param2);
         this.§1O§ = 0;
         this.§]!!§ = param3;
         this.§+!G§ = false;
         this.§&e§ = new Vector.<String>(0);
         this.§0c§ = new Vector.<Number>(0);
         this.§^Q§ = new Vector.<Number>(0);
      }
      
      public function §3!@§(param1:String, param2:Number) : void
      {
         if(this.§+v§ == null)
         {
            return;
         }
         this.§&e§.push(param1);
         this.§0c§.push(Number.NaN);
         this.§^Q§.push(param2);
      }
      
      public function §+!!§(param1:Number) : void
      {
         this.§3!@§("scaleX",param1);
         this.§3!@§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§3!@§("x",param1);
         this.§3!@§("y",param2);
      }
      
      public function §@I§(param1:Number) : void
      {
         this.§3!@§("alpha",param1);
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
         var _loc2_:Number = this.§+`§;
         this.§+`§ += param1;
         if(this.§+`§ < 0 || _loc2_ >= this.§5k§)
         {
            return;
         }
         if(this.§4!A§ != null && _loc2_ <= 0 && this.§+`§ >= 0)
         {
            this.§4!A§.apply(null,this.§1!5§);
         }
         var _loc3_:Number = Math.min(this.§5k§,this.§+`§) / this.§5k§;
         var _loc4_:int = this.§0c§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§0c§[_loc5_]))
            {
               this.§0c§[_loc5_] = this.§+v§[this.§&e§[_loc5_]] as Number;
            }
            _loc6_ = this.§0c§[_loc5_];
            _loc8_ = (_loc7_ = this.§^Q§[_loc5_]) - _loc6_;
            _loc9_ = §,!=§.§;<§(this.§]!!§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§+!G§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+v§[this.§&e§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§'V§ != null)
         {
            this.§'V§.apply(null,this.§&J§);
         }
         if(_loc2_ < this.§5k§ && this.§+`§ >= this.§5k§)
         {
            dispatchEvent(new Event(Event.§!!8§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§"!$§);
            }
         }
      }
      
      public function get §38§() : Boolean
      {
         return this.§+`§ >= this.§5k§;
      }
      
      public function get target() : Object
      {
         return this.§+v§;
      }
      
      public function get §@>§() : String
      {
         return this.§]!!§;
      }
      
      public function get §4U§() : Number
      {
         return this.§5k§;
      }
      
      public function get currentTime() : Number
      {
         return this.§+`§;
      }
      
      public function get delay() : Number
      {
         return this.§1O§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+`§ = this.§+`§ + this.§1O§ - param1;
         this.§1O§ = param1;
      }
      
      public function get §>!!§() : Boolean
      {
         return this.§+!G§;
      }
      
      public function set §>!!§(param1:Boolean) : void
      {
         this.§+!G§ = param1;
      }
      
      public function get §4!A§() : Function
      {
         return this.§=!8§;
      }
      
      public function set §4!A§(param1:Function) : void
      {
         this.§=!8§ = param1;
      }
      
      public function get §'V§() : Function
      {
         return this.§for §;
      }
      
      public function set §'V§(param1:Function) : void
      {
         this.§for § = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§7f§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§7f§ = param1;
      }
      
      public function get § !@§() : Array
      {
         return this.§1!5§;
      }
      
      public function set § !@§(param1:Array) : void
      {
         this.§1!5§ = param1;
      }
      
      public function get §,j§() : Array
      {
         return this.§&J§;
      }
      
      public function set §,j§(param1:Array) : void
      {
         this.§&J§ = param1;
      }
      
      public function get §-^§() : Array
      {
         return this.§"!$§;
      }
      
      public function set §-^§(param1:Array) : void
      {
         this.§"!$§ = param1;
      }
   }
}
