package §^$§
{
   import §3E§.§6w§;
   import flash.system.Capabilities;
   
   public class §^!B§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §9!!§:String;
      
      private var §`!,§:int;
      
      private var §0k§:Number;
      
      private var §5+§:Number;
      
      protected var §,E§:Boolean;
      
      protected var §<!J§:Vector.<§-!%§>;
      
      protected var §#!Z§:Vector.<§]9§>;
      
      private var §17§:int;
      
      private var §]0§:int;
      
      public function §^!B§(param1:String)
      {
         this.§<!J§ = new Vector.<§-!%§>();
         this.§#!Z§ = new Vector.<§]9§>();
         super();
         this.§9!!§ = param1;
         this.§0k§ = 1;
      }
      
      public static function §8j§(param1:String) : §^!B§
      {
         var _loc2_:§^!B§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§-!%§ = null;
         var _loc9_:§]9§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §^!B§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §-!%§.§8j§(_loc6_))
               {
                  _loc2_.§<!J§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §]9§.§8j§(_loc7_))
               {
                  _loc2_.§#!Z§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §]!_§() : Boolean
      {
         return this.§,E§;
      }
      
      public function get §6!E§() : String
      {
         return this.§9!!§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§0k§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§0k§;
      }
      
      protected function get currentStep() : int
      {
         return this.§`!,§;
      }
      
      public function §]!F§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§,E§)
         {
            this.§<!J§.push(new §-!%§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §'Z§(param1:int) : void
      {
         if(!this.§,E§)
         {
            if(this.§#!Z§.length > 0)
            {
               if(this.§#!Z§[this.§#!Z§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§#!Z§.push(new §]9§(param1));
         }
      }
      
      public function play() : void
      {
         this.§,E§ = true;
      }
      
      public function step(param1:§6w§) : void
      {
         var _loc2_:§-!%§ = null;
         var _loc3_:§]9§ = null;
         if(this.§<!J§.length > this.§17§)
         {
            _loc2_ = this.§<!J§[this.§17§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§9!K§(_loc2_.x,_loc2_.y,_loc2_.§"N§,_loc2_.angle);
               ++this.§17§;
            }
         }
         if(this.§#!Z§.length > this.§]0§)
         {
            _loc3_ = this.§#!Z§[this.§]0§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§]0§;
            }
         }
         ++this.§`!,§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§9!!§ + DELIM + this.§import§() + DELIM + this.§with§());
      }
      
      private function §import§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§<!J§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!J§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§<!J§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §with§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#!Z§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!Z§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§#!Z§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
