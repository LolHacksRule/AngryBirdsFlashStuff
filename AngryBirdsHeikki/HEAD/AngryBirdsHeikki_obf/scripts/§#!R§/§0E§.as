package §#!R§
{
   import §9!'§.§0!%§;
   import flash.system.Capabilities;
   
   public class §0E§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §@C§:String;
      
      private var §!3§:int;
      
      private var §8!#§:Number;
      
      private var §2!N§:Number;
      
      protected var §[K§:Boolean;
      
      protected var §]z§:Vector.<§,!M§>;
      
      protected var §+]§:Vector.<§2A§>;
      
      private var §6!A§:int;
      
      private var §1!c§:int;
      
      public function §0E§(param1:String)
      {
         this.§]z§ = new Vector.<§,!M§>();
         this.§+]§ = new Vector.<§2A§>();
         super();
         this.§@C§ = param1;
         this.§8!#§ = 1;
      }
      
      public static function initialize(param1:String) : §0E§
      {
         var _loc2_:§0E§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§,!M§ = null;
         var _loc9_:§2A§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §0E§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §,!M§.initialize(_loc6_))
               {
                  _loc2_.§]z§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §2A§.initialize(_loc7_))
               {
                  _loc2_.§+]§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §4w§() : Boolean
      {
         return this.§[K§;
      }
      
      public function get levelName() : String
      {
         return this.§@C§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8!#§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8!#§;
      }
      
      protected function get currentStep() : int
      {
         return this.§!3§;
      }
      
      public function §7!a§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§[K§)
         {
            this.§]z§.push(new §,!M§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §'!7§(param1:int) : void
      {
         if(!this.§[K§)
         {
            if(this.§+]§.length > 0)
            {
               if(this.§+]§[this.§+]§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§+]§.push(new §2A§(param1));
         }
      }
      
      public function play() : void
      {
         this.§[K§ = true;
      }
      
      public function step(param1:§0!%§) : void
      {
         var _loc2_:§,!M§ = null;
         var _loc3_:§2A§ = null;
         if(this.§]z§.length > this.§6!A§)
         {
            _loc2_ = this.§]z§[this.§6!A§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§"M§(_loc2_.x,_loc2_.y,_loc2_.§3&§,_loc2_.angle);
               ++this.§6!A§;
            }
         }
         if(this.§+]§.length > this.§1!c§)
         {
            _loc3_ = this.§+]§[this.§1!c§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§1!c§;
            }
         }
         ++this.§!3§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§@C§ + DELIM + this.§=,§() + DELIM + this.§ ^§());
      }
      
      private function §=,§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]z§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]z§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§]z§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function § ^§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+]§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+]§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§+]§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
