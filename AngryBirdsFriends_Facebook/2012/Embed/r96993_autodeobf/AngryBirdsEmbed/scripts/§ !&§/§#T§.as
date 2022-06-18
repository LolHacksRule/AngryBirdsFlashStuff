package § !&§
{
   import §`i§.§2W§;
   import flash.system.Capabilities;
   
   public class §#T§
   {
      
      public static const §8p§:String = "@@";
      
      public static const §4B§:String = "@";
       
      
      private var §57§:String;
      
      private var §+F§:int;
      
      private var §+j§:Number;
      
      private var §8]§:Number;
      
      protected var §0C§:Boolean;
      
      protected var §!!7§:Vector.<§;-§>;
      
      protected var §9!F§:Vector.<PowerUp>;
      
      private var §#!H§:int;
      
      private var §%@§:int;
      
      public function §#T§(param1:String)
      {
         this.§!!7§ = new Vector.<§;-§>();
         this.§9!F§ = new Vector.<PowerUp>();
         super();
         this.§57§ = param1;
         this.§+j§ = 1;
      }
      
      public static function initialize(param1:String) : §#T§
      {
         var _loc2_:§#T§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§;-§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§8p§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §#T§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§4B§);
            _loc5_ = _loc3_[2].split(§4B§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §;-§.initialize(_loc6_))
               {
                  _loc2_.§!!7§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§9!F§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §[!F§() : Boolean
      {
         return this.§0C§;
      }
      
      public function get §-x§() : String
      {
         return this.§57§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§+j§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§+j§;
      }
      
      protected function get §9!@§() : int
      {
         return this.§+F§;
      }
      
      public function §!<§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§0C§)
         {
            this.§!!7§.push(new §;-§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §=]§(param1:int) : void
      {
         if(!this.§0C§)
         {
            if(this.§9!F§.length > 0)
            {
               if(this.§9!F§[this.§9!F§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§9!F§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§0C§ = true;
      }
      
      public function step(param1:§2W§) : void
      {
         var _loc2_:§;-§ = null;
         var _loc3_:PowerUp = null;
         if(this.§!!7§.length > this.§#!H§)
         {
            _loc2_ = this.§!!7§[this.§#!H§];
            if(_loc2_.step == this.§9!@§)
            {
               param1.slingshot.§"G§(_loc2_.x,_loc2_.y,_loc2_.§2e§,_loc2_.angle);
               ++this.§#!H§;
            }
         }
         if(this.§9!F§.length > this.§%@§)
         {
            _loc3_ = this.§9!F§[this.§%@§];
            if(_loc3_.step == this.§9!@§)
            {
               param1.activatePowerup();
               ++this.§%@§;
            }
         }
         ++this.§+F§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§57§ + §8p§ + this.§[+§() + §8p§ + this.§[^§());
      }
      
      private function §[+§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§!!7§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!7§.length)
         {
            _loc1_ += §4B§;
            _loc1_ += this.§!!7§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §[^§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§9!F§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!F§.length)
         {
            _loc1_ += §4B§;
            _loc1_ += this.§9!F§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
