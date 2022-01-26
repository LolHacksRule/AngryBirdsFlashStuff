package §_-SQ§
{
   import §_-2r§.§_-sn§;
   import flash.system.Capabilities;
   
   public class §break§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §_-BG§:String;
      
      private var §_-0-m§:int;
      
      private var §_-S8§:Number;
      
      private var §_-pE§:Number;
      
      protected var §_-4S§:Boolean;
      
      protected var §_-uw§:Vector.<§_-Wm§>;
      
      protected var §_-8R§:Vector.<§_-jf§>;
      
      private var §_-Vx§:int;
      
      private var §_-iz§:int;
      
      public function §break§(param1:String)
      {
         this.§_-uw§ = new Vector.<§_-Wm§>();
         this.§_-8R§ = new Vector.<§_-jf§>();
         super();
         this.§_-BG§ = param1;
         this.§_-S8§ = 1;
      }
      
      public static function §_-Eh§(param1:String) : §break§
      {
         var _loc2_:§break§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-Wm§ = null;
         var _loc9_:§_-jf§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §break§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-Wm§.§_-Eh§(_loc6_))
               {
                  _loc2_.§_-uw§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-jf§.§_-Eh§(_loc7_))
               {
                  _loc2_.§_-8R§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-5k§() : Boolean
      {
         return this.§_-4S§;
      }
      
      public function get §_-rU§() : String
      {
         return this.§_-BG§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-S8§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-S8§;
      }
      
      protected function get currentStep() : int
      {
         return this.§_-0-m§;
      }
      
      public function §_-Dl§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-4S§)
         {
            this.§_-uw§.push(new §_-Wm§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-XT§(param1:int) : void
      {
         if(!this.§_-4S§)
         {
            if(this.§_-8R§.length > 0)
            {
               if(this.§_-8R§[this.§_-8R§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-8R§.push(new §_-jf§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-4S§ = true;
      }
      
      public function step(param1:§_-sn§) : void
      {
         var _loc2_:§_-Wm§ = null;
         var _loc3_:§_-jf§ = null;
         if(this.§_-uw§.length > this.§_-Vx§)
         {
            _loc2_ = this.§_-uw§[this.§_-Vx§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§_-tQ§(_loc2_.x,_loc2_.y,_loc2_.§_-H1§,_loc2_.angle);
               ++this.§_-Vx§;
            }
         }
         if(this.§_-8R§.length > this.§_-iz§)
         {
            _loc3_ = this.§_-8R§[this.§_-iz§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§_-iz§;
            }
         }
         ++this.§_-0-m§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-BG§ + DELIM + this.§_-IN§() + DELIM + this.§_-Ku§());
      }
      
      private function §_-IN§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-uw§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-uw§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§_-uw§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-Ku§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-8R§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-8R§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§_-8R§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
