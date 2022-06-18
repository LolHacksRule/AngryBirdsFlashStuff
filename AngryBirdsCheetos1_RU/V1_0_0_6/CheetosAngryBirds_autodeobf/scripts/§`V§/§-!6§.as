package §`V§
{
   import §8!`§.§4J§;
   import flash.system.Capabilities;
   
   public class §-!6§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §7!M§:String;
      
      private var §=N§:int;
      
      private var §8W§:Number;
      
      private var §5!&§:Number;
      
      protected var §>B§:Boolean;
      
      protected var §!J§:Vector.<§&!<§>;
      
      protected var § 7§:Vector.<§-!S§>;
      
      private var §%j§:int;
      
      private var §8&§:int;
      
      public function §-!6§(param1:String)
      {
         this.§!J§ = new Vector.<§&!<§>();
         this.§ 7§ = new Vector.<§-!S§>();
         super();
         this.§7!M§ = param1;
         this.§8W§ = 1;
      }
      
      public static function §-W§(param1:String) : §-!6§
      {
         var _loc2_:§-!6§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§&!<§ = null;
         var _loc9_:§-!S§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §-!6§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §&!<§.§-W§(_loc6_))
               {
                  _loc2_.§!J§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §-!S§.§-W§(_loc7_))
               {
                  _loc2_.§ 7§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §'!S§() : Boolean
      {
         return this.§>B§;
      }
      
      public function get include() : String
      {
         return this.§7!M§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8W§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8W§;
      }
      
      protected function get currentStep() : int
      {
         return this.§=N§;
      }
      
      public function §7L§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§>B§)
         {
            this.§!J§.push(new §&!<§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §extends§(param1:int) : void
      {
         if(!this.§>B§)
         {
            if(this.§ 7§.length > 0)
            {
               if(this.§ 7§[this.§ 7§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§ 7§.push(new §-!S§(param1));
         }
      }
      
      public function play() : void
      {
         this.§>B§ = true;
      }
      
      public function step(param1:§4J§) : void
      {
         var _loc2_:§&!<§ = null;
         var _loc3_:§-!S§ = null;
         if(this.§!J§.length > this.§%j§)
         {
            _loc2_ = this.§!J§[this.§%j§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§=!!§(_loc2_.x,_loc2_.y,_loc2_.§[u§,_loc2_.angle);
               ++this.§%j§;
            }
         }
         if(this.§ 7§.length > this.§8&§)
         {
            _loc3_ = this.§ 7§[this.§8&§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§8&§;
            }
         }
         ++this.§=N§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§7!M§ + DELIM + this.§?!W§() + DELIM + this.§'P§());
      }
      
      private function §?!W§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§!J§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!J§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§!J§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§ 7§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ 7§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§ 7§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
