package §[2§
{
   import §%b§.§0!Z§;
   import flash.system.Capabilities;
   
   public class §"S§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §?k§:String;
      
      private var § !>§:int;
      
      private var §!!!§:Number;
      
      private var § H§:Number;
      
      protected var §;!I§:Boolean;
      
      protected var §2!R§:Vector.<§-G§>;
      
      protected var §!&§:Vector.<§;!@§>;
      
      private var §7!#§:int;
      
      private var §^u§:int;
      
      public function §"S§(param1:String)
      {
         this.§2!R§ = new Vector.<§-G§>();
         this.§!&§ = new Vector.<§;!@§>();
         super();
         this.§?k§ = param1;
         this.§!!!§ = 1;
      }
      
      public static function §]!^§(param1:String) : §"S§
      {
         var _loc2_:§"S§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§-G§ = null;
         var _loc9_:§;!@§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §"S§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §-G§.§]!^§(_loc6_))
               {
                  _loc2_.§2!R§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §;!@§.§]!^§(_loc7_))
               {
                  _loc2_.§!&§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6!3§() : Boolean
      {
         return this.§;!I§;
      }
      
      public function get §89§() : String
      {
         return this.§?k§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§!!!§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§!!!§;
      }
      
      protected function get currentStep() : int
      {
         return this.§ !>§;
      }
      
      public function §9!U§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§;!I§)
         {
            this.§2!R§.push(new §-G§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §1E§(param1:int) : void
      {
         if(!this.§;!I§)
         {
            if(this.§!&§.length > 0)
            {
               if(this.§!&§[this.§!&§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§!&§.push(new §;!@§(param1));
         }
      }
      
      public function play() : void
      {
         this.§;!I§ = true;
      }
      
      public function step(param1:§0!Z§) : void
      {
         var _loc2_:§-G§ = null;
         var _loc3_:§;!@§ = null;
         if(this.§2!R§.length > this.§7!#§)
         {
            _loc2_ = this.§2!R§[this.§7!#§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§[!R§(_loc2_.x,_loc2_.y,_loc2_.§7v§,_loc2_.angle);
               ++this.§7!#§;
            }
         }
         if(this.§!&§.length > this.§^u§)
         {
            _loc3_ = this.§!&§[this.§^u§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§^u§;
            }
         }
         ++this.§ !>§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§?k§ + DELIM + this.§!!Z§() + DELIM + this.§'!D§());
      }
      
      private function §!!Z§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§2!R§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!R§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§2!R§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'!D§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§!&§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!&§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§!&§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
