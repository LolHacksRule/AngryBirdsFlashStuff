package §%!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,!b§ extends EventDispatcher implements §1"4§
   {
       
      
      private var §7f§:Object;
      
      private var §`!?§:String;
      
      private var §%!>§:Vector.<String>;
      
      private var §0!f§:Vector.<Number>;
      
      private var §68§:Vector.<Number>;
      
      private var §&?§:Function;
      
      private var §#u§:Function;
      
      private var §@!T§:Function;
      
      private var §!^§:Array;
      
      private var §1!U§:Array;
      
      private var §[^§:Array;
      
      private var § !t§:Number;
      
      private var §!"5§:Number;
      
      private var §@!X§:Number;
      
      private var §7!W§:Boolean;
      
      public function §,!b§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§7f§ = param1;
         this.§!"5§ = 0;
         this.§ !t§ = Math.max(0.0001,param2);
         this.§@!X§ = 0;
         this.§`!?§ = param3;
         this.§7!W§ = false;
         this.§%!>§ = new Vector.<String>(0);
         this.§0!f§ = new Vector.<Number>(0);
         this.§68§ = new Vector.<Number>(0);
      }
      
      public function §7K§(param1:String, param2:Number) : void
      {
         if(this.§7f§ == null)
         {
            return;
         }
         this.§%!>§.push(param1);
         this.§0!f§.push(Number.NaN);
         this.§68§.push(param2);
      }
      
      public function §1e§(param1:Number) : void
      {
         this.§7K§("scaleX",param1);
         this.§7K§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§7K§("x",param1);
         this.§7K§("y",param2);
      }
      
      public function §!s§(param1:Number) : void
      {
         this.§7K§("alpha",param1);
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
         var _loc2_:Number = this.§!"5§;
         this.§!"5§ += param1;
         if(this.§!"5§ < 0 || _loc2_ >= this.§ !t§)
         {
            return;
         }
         if(this.§'"2§ != null && _loc2_ <= 0 && this.§!"5§ >= 0)
         {
            this.§'"2§.apply(null,this.§!^§);
         }
         var _loc3_:Number = Math.min(this.§ !t§,this.§!"5§) / this.§ !t§;
         var _loc4_:int = this.§0!f§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§0!f§[_loc5_]))
            {
               this.§0!f§[_loc5_] = this.§7f§[this.§%!>§[_loc5_]] as Number;
            }
            _loc6_ = this.§0!f§[_loc5_];
            _loc8_ = (_loc7_ = this.§68§[_loc5_]) - _loc6_;
            _loc9_ = §]!@§.§ !j§(this.§`!?§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§7!W§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§7f§[this.§%!>§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§6",§ != null)
         {
            this.§6",§.apply(null,this.§1!U§);
         }
         if(_loc2_ < this.§ !t§ && this.§!"5§ >= this.§ !t§)
         {
            dispatchEvent(new Event(Event.§;J§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§[^§);
            }
         }
      }
      
      public function get §#!V§() : Boolean
      {
         return this.§!"5§ >= this.§ !t§;
      }
      
      public function get target() : Object
      {
         return this.§7f§;
      }
      
      public function get §>X§() : String
      {
         return this.§`!?§;
      }
      
      public function get §'!M§() : Number
      {
         return this.§ !t§;
      }
      
      public function get §%!d§() : Number
      {
         return this.§!"5§;
      }
      
      public function get delay() : Number
      {
         return this.§@!X§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!"5§ = this.§!"5§ + this.§@!X§ - param1;
         this.§@!X§ = param1;
      }
      
      public function get §+,§() : Boolean
      {
         return this.§7!W§;
      }
      
      public function set §+,§(param1:Boolean) : void
      {
         this.§7!W§ = param1;
      }
      
      public function get §'"2§() : Function
      {
         return this.§&?§;
      }
      
      public function set §'"2§(param1:Function) : void
      {
         this.§&?§ = param1;
      }
      
      public function get §6",§() : Function
      {
         return this.§#u§;
      }
      
      public function set §6",§(param1:Function) : void
      {
         this.§#u§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§@!T§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§@!T§ = param1;
      }
      
      public function get §0t§() : Array
      {
         return this.§!^§;
      }
      
      public function set §0t§(param1:Array) : void
      {
         this.§!^§ = param1;
      }
      
      public function get §-!$§() : Array
      {
         return this.§1!U§;
      }
      
      public function set §-!$§(param1:Array) : void
      {
         this.§1!U§ = param1;
      }
      
      public function get §,4§() : Array
      {
         return this.§[^§;
      }
      
      public function set §,4§(param1:Array) : void
      {
         this.§[^§ = param1;
      }
   }
}
