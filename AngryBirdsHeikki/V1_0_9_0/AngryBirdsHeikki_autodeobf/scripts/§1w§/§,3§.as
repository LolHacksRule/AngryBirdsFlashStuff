package §1w§
{
   import § d§.§'!"§;
   import flash.system.Capabilities;
   
   public class §,3§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §74§:String;
      
      private var §!!R§:int;
      
      private var §=v§:Number;
      
      private var §"x§:Number;
      
      protected var §-i§:Boolean;
      
      protected var §^!c§:Vector.<§8m§>;
      
      protected var §&!@§:Vector.<§@!X§>;
      
      private var §&X§:int;
      
      private var §[!8§:int;
      
      public function §,3§(param1:String)
      {
         this.§^!c§ = new Vector.<§8m§>();
         this.§&!@§ = new Vector.<§@!X§>();
         super();
         this.§74§ = param1;
         this.§=v§ = 1;
      }
      
      public static function initialize(param1:String) : §,3§
      {
         var _loc2_:§,3§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§8m§ = null;
         var _loc9_:§@!X§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §,3§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §8m§.initialize(_loc6_))
               {
                  _loc2_.§^!c§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §@!X§.initialize(_loc7_))
               {
                  _loc2_.§&!@§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §0m§() : Boolean
      {
         return this.§-i§;
      }
      
      public function get levelName() : String
      {
         return this.§74§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§=v§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§=v§;
      }
      
      protected function get currentStep() : int
      {
         return this.§!!R§;
      }
      
      public function §!Y§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§-i§)
         {
            this.§^!c§.push(new §8m§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §?a§(param1:int) : void
      {
         if(!this.§-i§)
         {
            if(this.§&!@§.length > 0)
            {
               if(this.§&!@§[this.§&!@§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§&!@§.push(new §@!X§(param1));
         }
      }
      
      public function play() : void
      {
         this.§-i§ = true;
      }
      
      public function step(param1:§'!"§) : void
      {
         var _loc2_:§8m§ = null;
         var _loc3_:§@!X§ = null;
         if(this.§^!c§.length > this.§&X§)
         {
            _loc2_ = this.§^!c§[this.§&X§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§;!F§(_loc2_.x,_loc2_.y,_loc2_.§^!'§,_loc2_.angle);
               ++this.§&X§;
            }
         }
         if(this.§&!@§.length > this.§[!8§)
         {
            _loc3_ = this.§&!@§[this.§[!8§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§[!8§;
            }
         }
         ++this.§!!R§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§74§ + DELIM + this.§'<§() + DELIM + this.§6=§());
      }
      
      private function §'<§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§^!c§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!c§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§^!c§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §6=§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!@§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§&!@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
