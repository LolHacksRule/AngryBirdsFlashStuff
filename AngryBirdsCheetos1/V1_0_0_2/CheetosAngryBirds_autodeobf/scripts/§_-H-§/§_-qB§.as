package §_-H-§
{
   import §_-Kz§.§_-c3§;
   import flash.system.Capabilities;
   
   public class §_-qB§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §_-5z§:String;
      
      private var §_-Rt§:int;
      
      private var §_-fT§:Number;
      
      private var §_-RE§:Number;
      
      protected var §_-2§:Boolean;
      
      protected var §_-rp§:Vector.<§_-i3§>;
      
      protected var §_-rd§:Vector.<§_-Ci§>;
      
      private var §_-gN§:int;
      
      private var §_-Rv§:int;
      
      public function §_-qB§(param1:String)
      {
         this.§_-rp§ = new Vector.<§_-i3§>();
         this.§_-rd§ = new Vector.<§_-Ci§>();
         super();
         this.§_-5z§ = param1;
         this.§_-fT§ = 1;
      }
      
      public static function §_-9M§(param1:String) : §_-qB§
      {
         var _loc2_:§_-qB§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-i3§ = null;
         var _loc9_:§_-Ci§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-qB§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-i3§.§_-9M§(_loc6_))
               {
                  _loc2_.§_-rp§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-Ci§.§_-9M§(_loc7_))
               {
                  _loc2_.§_-rd§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-96§() : Boolean
      {
         return this.§_-2§;
      }
      
      public function get §_-sq§() : String
      {
         return this.§_-5z§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-fT§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-fT§;
      }
      
      protected function get currentStep() : int
      {
         return this.§_-Rt§;
      }
      
      public function §_-Oa§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-2§)
         {
            this.§_-rp§.push(new §_-i3§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-6c§(param1:int) : void
      {
         if(!this.§_-2§)
         {
            if(this.§_-rd§.length > 0)
            {
               if(this.§_-rd§[this.§_-rd§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-rd§.push(new §_-Ci§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-2§ = true;
      }
      
      public function step(param1:§_-c3§) : void
      {
         var _loc2_:§_-i3§ = null;
         var _loc3_:§_-Ci§ = null;
         if(this.§_-rp§.length > this.§_-gN§)
         {
            _loc2_ = this.§_-rp§[this.§_-gN§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§_-99§(_loc2_.x,_loc2_.y,_loc2_.§_-A-§,_loc2_.angle);
               ++this.§_-gN§;
            }
         }
         if(this.§_-rd§.length > this.§_-Rv§)
         {
            _loc3_ = this.§_-rd§[this.§_-Rv§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§_-Rv§;
            }
         }
         ++this.§_-Rt§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-5z§ + DELIM + this.§const§() + DELIM + this.§_-Jy§());
      }
      
      private function §const§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-rp§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rp§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§_-rp§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-Jy§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-rd§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-rd§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§_-rd§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
