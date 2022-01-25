package §9!H§
{
   import §5!?§.§>"§;
   import flash.system.Capabilities;
   
   public class §3!7§
   {
      
      public static const §["§:String = "@@";
      
      public static const §%!5§:String = "@";
       
      
      private var §+!N§:String;
      
      private var §6O§:int;
      
      private var §8j§:Number;
      
      private var §>!+§:Number;
      
      protected var §'G§:Boolean;
      
      protected var § 7§:Vector.<§-!c§>;
      
      protected var §=!-§:Vector.<§]+§>;
      
      private var §@!V§:int;
      
      private var §'i§:int;
      
      public function §3!7§(param1:String)
      {
         this.§ 7§ = new Vector.<§-!c§>();
         this.§=!-§ = new Vector.<§]+§>();
         super();
         this.§+!N§ = param1;
         this.§8j§ = 1;
      }
      
      public static function §4"§(param1:String) : §3!7§
      {
         var _loc2_:§3!7§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§-!c§ = null;
         var _loc9_:§]+§ = null;
         var _loc3_:Array = param1.split(§["§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §3!7§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§%!5§);
            _loc5_ = _loc3_[2].split(§%!5§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §-!c§.§4"§(_loc6_))
               {
                  _loc2_.§ 7§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §]+§.§4"§(_loc7_))
               {
                  _loc2_.§=!-§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §?+§() : Boolean
      {
         return this.§'G§;
      }
      
      public function get §2v§() : String
      {
         return this.§+!N§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8j§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8j§;
      }
      
      protected function get §[G§() : int
      {
         return this.§6O§;
      }
      
      public function §^^§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§'G§)
         {
            this.§ 7§.push(new §-!c§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §^g§(param1:int) : void
      {
         if(!this.§'G§)
         {
            if(this.§=!-§.length > 0)
            {
               if(this.§=!-§[this.§=!-§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§=!-§.push(new §]+§(param1));
         }
      }
      
      public function play() : void
      {
         this.§'G§ = true;
      }
      
      public function step(param1:§>"§) : void
      {
         var _loc2_:§-!c§ = null;
         var _loc3_:§]+§ = null;
         if(this.§ 7§.length > this.§@!V§)
         {
            _loc2_ = this.§ 7§[this.§@!V§];
            if(_loc2_.step == this.§[G§)
            {
               param1.slingshot.§[N§(_loc2_.x,_loc2_.y,_loc2_.§]R§,_loc2_.angle);
               ++this.§@!V§;
            }
         }
         if(this.§=!-§.length > this.§'i§)
         {
            _loc3_ = this.§=!-§[this.§'i§];
            if(_loc3_.step == this.§[G§)
            {
               param1.activatePowerup();
               ++this.§'i§;
            }
         }
         ++this.§6O§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§+!N§ + §["§ + this.§ U§() + §["§ + this.§'H§());
      }
      
      private function § U§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§ 7§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ 7§.length)
         {
            _loc1_ += §%!5§;
            _loc1_ += this.§ 7§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'H§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=!-§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!-§.length)
         {
            _loc1_ += §%!5§;
            _loc1_ += this.§=!-§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
