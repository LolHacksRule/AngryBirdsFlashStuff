package §6!B§
{
   import §"!I§.§^!2§;
   import flash.system.Capabilities;
   
   public class §8u§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §6!e§:String;
      
      private var §1!%§:int;
      
      private var §4r§:Number;
      
      private var §+K§:Number;
      
      protected var §true§:Boolean;
      
      protected var §"!T§:Vector.<§?O§>;
      
      protected var §'t§:Vector.<§0[§>;
      
      private var §?!K§:int;
      
      private var §2D§:int;
      
      public function §8u§(param1:String)
      {
         this.§"!T§ = new Vector.<§?O§>();
         this.§'t§ = new Vector.<§0[§>();
         super();
         this.§6!e§ = param1;
         this.§4r§ = 1;
      }
      
      public static function initialize(param1:String) : §8u§
      {
         var _loc2_:§8u§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§?O§ = null;
         var _loc9_:§0[§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §8u§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §?O§.initialize(_loc6_))
               {
                  _loc2_.§"!T§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §0[§.initialize(_loc7_))
               {
                  _loc2_.§'t§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §&A§() : Boolean
      {
         return this.§true§;
      }
      
      public function get levelName() : String
      {
         return this.§6!e§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4r§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§4r§;
      }
      
      protected function get currentStep() : int
      {
         return this.§1!%§;
      }
      
      public function §+!b§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§true§)
         {
            this.§"!T§.push(new §?O§(param1,param2,param3,param4,param5));
         }
      }
      
      public function § !_§(param1:int) : void
      {
         if(!this.§true§)
         {
            if(this.§'t§.length > 0)
            {
               if(this.§'t§[this.§'t§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§'t§.push(new §0[§(param1));
         }
      }
      
      public function play() : void
      {
         this.§true§ = true;
      }
      
      public function step(param1:§^!2§) : void
      {
         var _loc2_:§?O§ = null;
         var _loc3_:§0[§ = null;
         if(this.§"!T§.length > this.§?!K§)
         {
            _loc2_ = this.§"!T§[this.§?!K§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§8q§(_loc2_.x,_loc2_.y,_loc2_.§9!I§,_loc2_.angle);
               ++this.§?!K§;
            }
         }
         if(this.§'t§.length > this.§2D§)
         {
            _loc3_ = this.§'t§[this.§2D§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§2D§;
            }
         }
         ++this.§1!%§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§6!e§ + DELIM + this.§'r§() + DELIM + this.§!!P§());
      }
      
      private function §'r§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§"!T§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!T§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§"!T§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §!!P§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'t§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'t§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§'t§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
