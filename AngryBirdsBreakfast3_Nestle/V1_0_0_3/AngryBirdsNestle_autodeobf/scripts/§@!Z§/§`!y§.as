package §@!Z§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`!y§ extends EventDispatcher implements § '§
   {
       
      
      private var §6"'§:Object;
      
      private var §8"§:String;
      
      private var §7"#§:Vector.<String>;
      
      private var §!!$§:Vector.<Number>;
      
      private var §[!Z§:Vector.<Number>;
      
      private var §@L§:Function;
      
      private var §56§:Function;
      
      private var § !o§:Function;
      
      private var §<H§:Array;
      
      private var §0U§:Array;
      
      private var §]l§:Array;
      
      private var §%,§:Number;
      
      private var §@c§:Number;
      
      private var § !1§:Number;
      
      private var §49§:Boolean;
      
      public function §`!y§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§6"'§ = param1;
         this.§@c§ = 0;
         this.§%,§ = Math.max(0.0001,param2);
         this.§ !1§ = 0;
         this.§8"§ = param3;
         this.§49§ = false;
         this.§7"#§ = new Vector.<String>(0);
         this.§!!$§ = new Vector.<Number>(0);
         this.§[!Z§ = new Vector.<Number>(0);
      }
      
      public function §4W§(param1:String, param2:Number) : void
      {
         if(this.§6"'§ == null)
         {
            return;
         }
         this.§7"#§.push(param1);
         this.§!!$§.push(Number.NaN);
         this.§[!Z§.push(param2);
      }
      
      public function §@"3§(param1:Number) : void
      {
         this.§4W§("scaleX",param1);
         this.§4W§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§4W§("x",param1);
         this.§4W§("y",param2);
      }
      
      public function §4"$§(param1:Number) : void
      {
         this.§4W§("alpha",param1);
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
         var _loc2_:Number = this.§@c§;
         this.§@c§ += param1;
         if(this.§@c§ < 0 || _loc2_ >= this.§%,§)
         {
            return;
         }
         if(this.§=r§ != null && _loc2_ <= 0 && this.§@c§ >= 0)
         {
            this.§=r§.apply(null,this.§<H§);
         }
         var _loc3_:Number = Math.min(this.§%,§,this.§@c§) / this.§%,§;
         var _loc4_:int = this.§!!$§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§!!$§[_loc5_]))
            {
               this.§!!$§[_loc5_] = this.§6"'§[this.§7"#§[_loc5_]] as Number;
            }
            _loc6_ = this.§!!$§[_loc5_];
            _loc8_ = (_loc7_ = this.§[!Z§[_loc5_]) - _loc6_;
            _loc9_ = §=!@§.§'!Y§(this.§8"§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§49§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§6"'§[this.§7"#§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§;R§ != null)
         {
            this.§;R§.apply(null,this.§0U§);
         }
         if(_loc2_ < this.§%,§ && this.§@c§ >= this.§%,§)
         {
            dispatchEvent(new Event(Event.§&`§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§]l§);
            }
         }
      }
      
      public function get §8!S§() : Boolean
      {
         return this.§@c§ >= this.§%,§;
      }
      
      public function get target() : Object
      {
         return this.§6"'§;
      }
      
      public function get §&y§() : String
      {
         return this.§8"§;
      }
      
      public function get §+!v§() : Number
      {
         return this.§%,§;
      }
      
      public function get §^!&§() : Number
      {
         return this.§@c§;
      }
      
      public function get delay() : Number
      {
         return this.§ !1§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@c§ = this.§@c§ + this.§ !1§ - param1;
         this.§ !1§ = param1;
      }
      
      public function get §0!Q§() : Boolean
      {
         return this.§49§;
      }
      
      public function set §0!Q§(param1:Boolean) : void
      {
         this.§49§ = param1;
      }
      
      public function get §=r§() : Function
      {
         return this.§@L§;
      }
      
      public function set §=r§(param1:Function) : void
      {
         this.§@L§ = param1;
      }
      
      public function get §;R§() : Function
      {
         return this.§56§;
      }
      
      public function set §;R§(param1:Function) : void
      {
         this.§56§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§ !o§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§ !o§ = param1;
      }
      
      public function get §`!T§() : Array
      {
         return this.§<H§;
      }
      
      public function set §`!T§(param1:Array) : void
      {
         this.§<H§ = param1;
      }
      
      public function get §=@§() : Array
      {
         return this.§0U§;
      }
      
      public function set §=@§(param1:Array) : void
      {
         this.§0U§ = param1;
      }
      
      public function get §<!#§() : Array
      {
         return this.§]l§;
      }
      
      public function set §<!#§(param1:Array) : void
      {
         this.§]l§ = param1;
      }
   }
}
