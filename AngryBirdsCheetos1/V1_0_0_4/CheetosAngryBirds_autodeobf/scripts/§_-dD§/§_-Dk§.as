package §_-dD§
{
   import §_-0-K§.§_-FL§;
   import flash.system.Capabilities;
   
   public class §_-Dk§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §_-3F§:String;
      
      private var §_-Wy§:int;
      
      private var §_-00z§:Number;
      
      private var §_-zI§:Number;
      
      protected var §_-ng§:Boolean;
      
      protected var §_-0w§:Vector.<§_-Yx§>;
      
      protected var §_-Yv§:Vector.<§extends§>;
      
      private var §_-Uo§:int;
      
      private var §_-Se§:int;
      
      public function §_-Dk§(param1:String)
      {
         this.§_-0w§ = new Vector.<§_-Yx§>();
         this.§_-Yv§ = new Vector.<§extends§>();
         super();
         this.§_-3F§ = param1;
         this.§_-00z§ = 1;
      }
      
      public static function §_-sY§(param1:String) : §_-Dk§
      {
         var _loc2_:§_-Dk§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-Yx§ = null;
         var _loc9_:§extends§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-Dk§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-Yx§.§_-sY§(_loc6_))
               {
                  _loc2_.§_-0w§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §extends§.§_-sY§(_loc7_))
               {
                  _loc2_.§_-Yv§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-Ll§() : Boolean
      {
         return this.§_-ng§;
      }
      
      public function get §_-E4§() : String
      {
         return this.§_-3F§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-00z§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-00z§;
      }
      
      protected function get currentStep() : int
      {
         return this.§_-Wy§;
      }
      
      public function §_-eY§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-ng§)
         {
            this.§_-0w§.push(new §_-Yx§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-Zn§(param1:int) : void
      {
         if(!this.§_-ng§)
         {
            if(this.§_-Yv§.length > 0)
            {
               if(this.§_-Yv§[this.§_-Yv§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-Yv§.push(new §extends§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-ng§ = true;
      }
      
      public function step(param1:§_-FL§) : void
      {
         var _loc2_:§_-Yx§ = null;
         var _loc3_:§extends§ = null;
         if(this.§_-0w§.length > this.§_-Uo§)
         {
            _loc2_ = this.§_-0w§[this.§_-Uo§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§_-h6§(_loc2_.x,_loc2_.y,_loc2_.§_-r1§,_loc2_.angle);
               ++this.§_-Uo§;
            }
         }
         if(this.§_-Yv§.length > this.§_-Se§)
         {
            _loc3_ = this.§_-Yv§[this.§_-Se§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§_-Se§;
            }
         }
         ++this.§_-Wy§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-3F§ + DELIM + this.§_-L9§() + DELIM + this.§_-k3§());
      }
      
      private function §_-L9§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-0w§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-0w§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§_-0w§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-k3§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-Yv§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Yv§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§_-Yv§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
