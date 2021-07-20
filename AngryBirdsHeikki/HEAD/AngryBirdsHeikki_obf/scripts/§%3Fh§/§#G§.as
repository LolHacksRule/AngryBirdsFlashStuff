package §?h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#G§ extends EventDispatcher implements §3!&§
   {
       
      
      private var §+! §:Object;
      
      private var §,v§:String;
      
      private var §;z§:Vector.<String>;
      
      private var §[!c§:Vector.<Number>;
      
      private var §5v§:Vector.<Number>;
      
      private var §"`§:Function;
      
      private var §5!2§:Function;
      
      private var §=a§:Function;
      
      private var §<"§:Array;
      
      private var §0!6§:Array;
      
      private var §5Z§:Array;
      
      private var §^E§:Number;
      
      private var §'!Z§:Number;
      
      private var § F§:Number;
      
      private var §^5§:Boolean;
      
      public function §#G§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§+! § = param1;
         this.§'!Z§ = 0;
         this.§^E§ = Math.max(0.0001,param2);
         this.§ F§ = 0;
         this.§,v§ = param3;
         this.§^5§ = false;
         this.§;z§ = new Vector.<String>(0);
         this.§[!c§ = new Vector.<Number>(0);
         this.§5v§ = new Vector.<Number>(0);
      }
      
      public function §4!_§(param1:String, param2:Number) : void
      {
         if(this.§+! § == null)
         {
            return;
         }
         this.§;z§.push(param1);
         this.§[!c§.push(Number.NaN);
         this.§5v§.push(param2);
      }
      
      public function dynamic(param1:Number) : void
      {
         this.§4!_§("scaleX",param1);
         this.§4!_§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§4!_§("x",param1);
         this.§4!_§("y",param2);
      }
      
      public function §^A§(param1:Number) : void
      {
         this.§4!_§("alpha",param1);
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
         var _loc2_:Number = this.§'!Z§;
         this.§'!Z§ += param1;
         if(this.§'!Z§ < 0 || _loc2_ >= this.§^E§)
         {
            return;
         }
         if(this.§;!@§ != null && _loc2_ <= 0 && this.§'!Z§ >= 0)
         {
            this.§;!@§.apply(null,this.§<"§);
         }
         var _loc3_:Number = Math.min(this.§^E§,this.§'!Z§) / this.§^E§;
         var _loc4_:int = this.§[!c§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§[!c§[_loc5_]))
            {
               this.§[!c§[_loc5_] = this.§+! §[this.§;z§[_loc5_]] as Number;
            }
            _loc6_ = this.§[!c§[_loc5_];
            _loc8_ = (_loc7_ = this.§5v§[_loc5_]) - _loc6_;
            _loc9_ = §+g§.§^t§(this.§,v§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§^5§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§+! §[this.§;z§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§case§ != null)
         {
            this.§case§.apply(null,this.§0!6§);
         }
         if(_loc2_ < this.§^E§ && this.§'!Z§ >= this.§^E§)
         {
            dispatchEvent(new Event(Event.§5!3§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§5Z§);
            }
         }
      }
      
      public function get §'H§() : Boolean
      {
         return this.§'!Z§ >= this.§^E§;
      }
      
      public function get target() : Object
      {
         return this.§+! §;
      }
      
      public function get §[?§() : String
      {
         return this.§,v§;
      }
      
      public function get §1!M§() : Number
      {
         return this.§^E§;
      }
      
      public function get §-v§() : Number
      {
         return this.§'!Z§;
      }
      
      public function get delay() : Number
      {
         return this.§ F§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'!Z§ = this.§'!Z§ + this.§ F§ - param1;
         this.§ F§ = param1;
      }
      
      public function get §-s§() : Boolean
      {
         return this.§^5§;
      }
      
      public function set §-s§(param1:Boolean) : void
      {
         this.§^5§ = param1;
      }
      
      public function get §;!@§() : Function
      {
         return this.§"`§;
      }
      
      public function set §;!@§(param1:Function) : void
      {
         this.§"`§ = param1;
      }
      
      public function get §case§() : Function
      {
         return this.§5!2§;
      }
      
      public function set §case§(param1:Function) : void
      {
         this.§5!2§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§=a§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§=a§ = param1;
      }
      
      public function get §#i§() : Array
      {
         return this.§<"§;
      }
      
      public function set §#i§(param1:Array) : void
      {
         this.§<"§ = param1;
      }
      
      public function get §`M§() : Array
      {
         return this.§0!6§;
      }
      
      public function set §`M§(param1:Array) : void
      {
         this.§0!6§ = param1;
      }
      
      public function get §<!-§() : Array
      {
         return this.§5Z§;
      }
      
      public function set §<!-§(param1:Array) : void
      {
         this.§5Z§ = param1;
      }
   }
}
