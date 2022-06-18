package §&=§
{
   import §0V§.§`!O§;
   import flash.system.Capabilities;
   
   public class §4!K§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §8!+§:String;
      
      private var §<m§:int;
      
      private var §&k§:Number;
      
      private var §4!§:Number;
      
      protected var §"0§:Boolean;
      
      protected var §=@§:Vector.<§5%§>;
      
      protected var §^!J§:Vector.<§,!5§>;
      
      private var §?=§:int;
      
      private var §'H§:int;
      
      public function §4!K§(param1:String)
      {
         this.§=@§ = new Vector.<§5%§>();
         this.§^!J§ = new Vector.<§,!5§>();
         super();
         this.§8!+§ = param1;
         this.§&k§ = 1;
      }
      
      public static function §5M§(param1:String) : §4!K§
      {
         var _loc2_:§4!K§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§5%§ = null;
         var _loc9_:§,!5§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §4!K§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §5%§.§5M§(_loc6_))
               {
                  _loc2_.§=@§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §,!5§.§5M§(_loc7_))
               {
                  _loc2_.§^!J§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §6G§() : Boolean
      {
         return this.§"0§;
      }
      
      public function get §1#§() : String
      {
         return this.§8!+§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§&k§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§&k§;
      }
      
      protected function get currentStep() : int
      {
         return this.§<m§;
      }
      
      public function §77§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§"0§)
         {
            this.§=@§.push(new §5%§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §">§(param1:int) : void
      {
         if(!this.§"0§)
         {
            if(this.§^!J§.length > 0)
            {
               if(this.§^!J§[this.§^!J§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§^!J§.push(new §,!5§(param1));
         }
      }
      
      public function play() : void
      {
         this.§"0§ = true;
      }
      
      public function step(param1:§`!O§) : void
      {
         var _loc2_:§5%§ = null;
         var _loc3_:§,!5§ = null;
         if(this.§=@§.length > this.§?=§)
         {
            _loc2_ = this.§=@§[this.§?=§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§0&§(_loc2_.x,_loc2_.y,_loc2_.§-!X§,_loc2_.angle);
               ++this.§?=§;
            }
         }
         if(this.§^!J§.length > this.§'H§)
         {
            _loc3_ = this.§^!J§[this.§'H§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§'H§;
            }
         }
         ++this.§<m§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§8!+§ + DELIM + this.§!R§() + DELIM + this.§'!_§());
      }
      
      private function §!R§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=@§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§=@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'!_§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§^!J§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!J§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§^!J§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
