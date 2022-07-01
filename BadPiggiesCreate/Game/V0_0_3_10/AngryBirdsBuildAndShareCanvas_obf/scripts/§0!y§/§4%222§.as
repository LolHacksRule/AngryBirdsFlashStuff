package §0!y§
{
   import §4!s§.§%I§;
   import flash.system.Capabilities;
   
   public class §4"2§
   {
      
      public static const §3n§:String = "@@";
      
      public static const §!!4§:String = "@";
       
      
      private var §7!V§:String;
      
      private var §6h§:int;
      
      private var §-R§:Number;
      
      private var §;k§:Number;
      
      protected var §5!c§:Boolean;
      
      protected var §?N§:Vector.<§const§>;
      
      protected var §57§:Vector.<§4!7§>;
      
      private var §@![§:int;
      
      private var §5I§:int;
      
      public function §4"2§(param1:String)
      {
         this.§?N§ = new Vector.<§const§>();
         this.§57§ = new Vector.<§4!7§>();
         super();
         this.§7!V§ = param1;
         this.§-R§ = 1;
      }
      
      public static function initialize(param1:String) : §4"2§
      {
         var _loc2_:§4"2§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§const§ = null;
         var _loc9_:§4!7§ = null;
         var _loc3_:Array = param1.split(§3n§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §4"2§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§!!4§);
            _loc5_ = _loc3_[2].split(§!!4§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §const§.initialize(_loc6_))
               {
                  _loc2_.§?N§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §4!7§.initialize(_loc7_))
               {
                  _loc2_.§57§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §#N§() : Boolean
      {
         return this.§5!c§;
      }
      
      public function get §1d§() : String
      {
         return this.§7!V§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§-R§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§-R§;
      }
      
      protected function get §8"§() : int
      {
         return this.§6h§;
      }
      
      public function §2!"§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§5!c§)
         {
            this.§?N§.push(new §const§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §%k§(param1:int) : void
      {
         if(!this.§5!c§)
         {
            if(this.§57§.length > 0)
            {
               if(this.§57§[this.§57§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§57§.push(new §4!7§(param1));
         }
      }
      
      public function play() : void
      {
         this.§5!c§ = true;
      }
      
      public function step(param1:§%I§) : void
      {
         var _loc2_:§const§ = null;
         var _loc3_:§4!7§ = null;
         if(this.§?N§.length > this.§@![§)
         {
            _loc2_ = this.§?N§[this.§@![§];
            if(_loc2_.step == this.§8"§)
            {
               param1.slingshot.§0!a§(_loc2_.x,_loc2_.y,_loc2_.§5!u§,_loc2_.angle);
               ++this.§@![§;
            }
         }
         if(this.§57§.length > this.§5I§)
         {
            _loc3_ = this.§57§[this.§5I§];
            if(_loc3_.step == this.§8"§)
            {
               param1.activatePowerup();
               ++this.§5I§;
            }
         }
         ++this.§6h§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§7!V§ + §3n§ + this.§]R§() + §3n§ + this.§[J§());
      }
      
      private function §]R§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§?N§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?N§.length)
         {
            _loc1_ += §!!4§;
            _loc1_ += this.§?N§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §[J§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§57§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§57§.length)
         {
            _loc1_ += §!!4§;
            _loc1_ += this.§57§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
