package §'h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;k§ extends EventDispatcher implements §=!§
   {
       
      
      private var §6!-§:Object;
      
      private var §5!'§:String;
      
      private var §;!3§:Vector.<String>;
      
      private var §9!;§:Vector.<Number>;
      
      private var §0!4§:Vector.<Number>;
      
      private var §]%§:Function;
      
      private var §'$§:Function;
      
      private var §"!4§:Function;
      
      private var §,&§:Array;
      
      private var §@2§:Array;
      
      private var §;N§:Array;
      
      private var §"S§:Number;
      
      private var §3_§:Number;
      
      private var §0v§:Number;
      
      private var §5a§:Boolean;
      
      public function §;k§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§6!-§ = param1;
         this.§3_§ = 0;
         this.§"S§ = Math.max(0.0001,param2);
         this.§0v§ = 0;
         this.§5!'§ = param3;
         this.§5a§ = false;
         this.§;!3§ = new Vector.<String>(0);
         this.§9!;§ = new Vector.<Number>(0);
         this.§0!4§ = new Vector.<Number>(0);
      }
      
      public function §#P§(param1:String, param2:Number) : void
      {
         if(this.§6!-§ == null)
         {
            return;
         }
         this.§;!3§.push(param1);
         this.§9!;§.push(Number.NaN);
         this.§0!4§.push(param2);
      }
      
      public function §#!J§(param1:Number) : void
      {
         this.§#P§("scaleX",param1);
         this.§#P§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§#P§("x",param1);
         this.§#P§("y",param2);
      }
      
      public function §8!I§(param1:Number) : void
      {
         this.§#P§("alpha",param1);
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
         var _loc2_:Number = this.§3_§;
         this.§3_§ += param1;
         if(this.§3_§ < 0 || _loc2_ >= this.§"S§)
         {
            return;
         }
         if(this.§,s§ != null && _loc2_ <= 0 && this.§3_§ >= 0)
         {
            this.§,s§.apply(null,this.§,&§);
         }
         var _loc3_:Number = Math.min(this.§"S§,this.§3_§) / this.§"S§;
         var _loc4_:int = this.§9!;§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§9!;§[_loc5_]))
            {
               this.§9!;§[_loc5_] = this.§6!-§[this.§;!3§[_loc5_]] as Number;
            }
            _loc6_ = this.§9!;§[_loc5_];
            _loc8_ = (_loc7_ = this.§0!4§[_loc5_]) - _loc6_;
            _loc9_ = §0!,§.§!!?§(this.§5!'§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§5a§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§6!-§[this.§;!3§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§%!@§ != null)
         {
            this.§%!@§.apply(null,this.§@2§);
         }
         if(_loc2_ < this.§"S§ && this.§3_§ >= this.§"S§)
         {
            dispatchEvent(new Event(Event.§9Y§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§;N§);
            }
         }
      }
      
      public function get §2! §() : Boolean
      {
         return this.§3_§ >= this.§"S§;
      }
      
      public function get target() : Object
      {
         return this.§6!-§;
      }
      
      public function get §]!2§() : String
      {
         return this.§5!'§;
      }
      
      public function get §!B§() : Number
      {
         return this.§"S§;
      }
      
      public function get §&!L§() : Number
      {
         return this.§3_§;
      }
      
      public function get delay() : Number
      {
         return this.§0v§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§3_§ = this.§3_§ + this.§0v§ - param1;
         this.§0v§ = param1;
      }
      
      public function get §`!3§() : Boolean
      {
         return this.§5a§;
      }
      
      public function set §`!3§(param1:Boolean) : void
      {
         this.§5a§ = param1;
      }
      
      public function get §,s§() : Function
      {
         return this.§]%§;
      }
      
      public function set §,s§(param1:Function) : void
      {
         this.§]%§ = param1;
      }
      
      public function get §%!@§() : Function
      {
         return this.§'$§;
      }
      
      public function set §%!@§(param1:Function) : void
      {
         this.§'$§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§"!4§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§"!4§ = param1;
      }
      
      public function get §2!'§() : Array
      {
         return this.§,&§;
      }
      
      public function set §2!'§(param1:Array) : void
      {
         this.§,&§ = param1;
      }
      
      public function get §>'§() : Array
      {
         return this.§@2§;
      }
      
      public function set §>'§(param1:Array) : void
      {
         this.§@2§ = param1;
      }
      
      public function get §%,§() : Array
      {
         return this.§;N§;
      }
      
      public function set §%,§(param1:Array) : void
      {
         this.§;N§ = param1;
      }
   }
}
