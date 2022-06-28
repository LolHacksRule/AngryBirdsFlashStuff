package §^n§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Tween extends EventDispatcher implements §"!>§
   {
       
      
      private var §7@§:Object;
      
      private var §8!-§:String;
      
      private var §>0§:Vector.<String>;
      
      private var §`!i§:Vector.<Number>;
      
      private var §8!T§:Vector.<Number>;
      
      private var § !^§:Function;
      
      private var §2!M§:Function;
      
      private var §3!K§:Function;
      
      private var §,!I§:Array;
      
      private var §-T§:Array;
      
      private var §`K§:Array;
      
      private var §!v§:Number;
      
      private var §!!2§:Number;
      
      private var §^!5§:Number;
      
      private var § ^§:Boolean;
      
      public function Tween(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§7@§ = param1;
         this.§!!2§ = 0;
         this.§!v§ = Math.max(0.0001,param2);
         this.§^!5§ = 0;
         this.§8!-§ = param3;
         this.§ ^§ = false;
         this.§>0§ = new Vector.<String>(0);
         this.§`!i§ = new Vector.<Number>(0);
         this.§8!T§ = new Vector.<Number>(0);
      }
      
      public function animate(param1:String, param2:Number) : void
      {
         if(this.§7@§ == null)
         {
            return;
         }
         this.§>0§.push(param1);
         this.§`!i§.push(Number.NaN);
         this.§8!T§.push(param2);
      }
      
      public function §7!L§(param1:Number) : void
      {
         this.animate("scaleX",param1);
         this.animate("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.animate("x",param1);
         this.animate("y",param2);
      }
      
      public function §^;§(param1:Number) : void
      {
         this.animate("alpha",param1);
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
         var _loc2_:Number = this.§!!2§;
         this.§!!2§ += param1;
         if(this.§!!2§ < 0 || _loc2_ >= this.§!v§)
         {
            return;
         }
         if(this.§9<§ != null && _loc2_ <= 0 && this.§!!2§ >= 0)
         {
            this.§9<§.apply(null,this.§,!I§);
         }
         var _loc3_:Number = Math.min(this.§!v§,this.§!!2§) / this.§!v§;
         var _loc4_:int = this.§`!i§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§`!i§[_loc5_]))
            {
               this.§`!i§[_loc5_] = this.§7@§[this.§>0§[_loc5_]] as Number;
            }
            _loc6_ = this.§`!i§[_loc5_];
            _loc7_ = this.§8!T§[_loc5_];
            _loc8_ = _loc7_ - _loc6_;
            _loc9_ = Transitions.§5T§(this.§8!-§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§ ^§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§7@§[this.§>0§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§&B§ != null)
         {
            this.§&B§.apply(null,this.§-T§);
         }
         if(_loc2_ < this.§!v§ && this.§!!2§ >= this.§!v§)
         {
            dispatchEvent(new Event(Event.§ Z§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§`K§);
            }
         }
      }
      
      public function get §8!V§() : Boolean
      {
         return this.§!!2§ >= this.§!v§;
      }
      
      public function get target() : Object
      {
         return this.§7@§;
      }
      
      public function get §!`§() : String
      {
         return this.§8!-§;
      }
      
      public function get §%!2§() : Number
      {
         return this.§!v§;
      }
      
      public function get §,b§() : Number
      {
         return this.§!!2§;
      }
      
      public function get delay() : Number
      {
         return this.§^!5§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!!2§ = this.§!!2§ + this.§^!5§ - param1;
         this.§^!5§ = param1;
      }
      
      public function get § !c§() : Boolean
      {
         return this.§ ^§;
      }
      
      public function set § !c§(param1:Boolean) : void
      {
         this.§ ^§ = param1;
      }
      
      public function get §9<§() : Function
      {
         return this.§ !^§;
      }
      
      public function set §9<§(param1:Function) : void
      {
         this.§ !^§ = param1;
      }
      
      public function get §&B§() : Function
      {
         return this.§2!M§;
      }
      
      public function set §&B§(param1:Function) : void
      {
         this.§2!M§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§3!K§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§3!K§ = param1;
      }
      
      public function get §9n§() : Array
      {
         return this.§,!I§;
      }
      
      public function set §9n§(param1:Array) : void
      {
         this.§,!I§ = param1;
      }
      
      public function get §3!]§() : Array
      {
         return this.§-T§;
      }
      
      public function set §3!]§(param1:Array) : void
      {
         this.§-T§ = param1;
      }
      
      public function get §,z§() : Array
      {
         return this.§`K§;
      }
      
      public function set §,z§(param1:Array) : void
      {
         this.§`K§ = param1;
      }
   }
}
