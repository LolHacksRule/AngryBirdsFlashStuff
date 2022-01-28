package §_-3t§
{
   import §_-Di§.§_-ix§;
   import flash.system.Capabilities;
   
   public class §_-J0§
   {
      
      public static const §_-un§:String = "@@";
      
      public static const §_-vl§:String = "@";
       
      
      private var §_-dl§:String;
      
      private var §_-L§:int;
      
      private var §_-08§:Number;
      
      private var §_-OY§:Number;
      
      protected var §_-AP§:Boolean;
      
      protected var §_-j6§:Vector.<§_-gg§>;
      
      protected var §_-7b§:Vector.<§_-eW§>;
      
      private var §_-Pw§:int;
      
      private var §_-qe§:int;
      
      public function §_-J0§(param1:String)
      {
         this.§_-j6§ = new Vector.<§_-gg§>();
         this.§_-7b§ = new Vector.<§_-eW§>();
         super();
         this.§_-dl§ = param1;
         this.§_-08§ = 1;
      }
      
      public static function §_-xS§(param1:String) : §_-J0§
      {
         var _loc2_:§_-J0§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-gg§ = null;
         var _loc9_:§_-eW§ = null;
         var _loc3_:Array = param1.split(§_-un§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-J0§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§_-vl§);
            _loc5_ = _loc3_[2].split(§_-vl§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-gg§.§_-xS§(_loc6_))
               {
                  _loc2_.§_-j6§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-eW§.§_-xS§(_loc7_))
               {
                  _loc2_.§_-7b§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-jk§() : Boolean
      {
         return this.§_-AP§;
      }
      
      public function get §_-4h§() : String
      {
         return this.§_-dl§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-08§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-08§;
      }
      
      protected function get §_-sL§() : int
      {
         return this.§_-L§;
      }
      
      public function §_-5T§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-AP§)
         {
            this.§_-j6§.push(new §_-gg§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-aA§(param1:int) : void
      {
         if(!this.§_-AP§)
         {
            if(this.§_-7b§.length > 0)
            {
               if(this.§_-7b§[this.§_-7b§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-7b§.push(new §_-eW§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-AP§ = true;
      }
      
      public function step(param1:§_-ix§) : void
      {
         var _loc2_:§_-gg§ = null;
         var _loc3_:§_-eW§ = null;
         if(this.§_-j6§.length > this.§_-Pw§)
         {
            _loc2_ = this.§_-j6§[this.§_-Pw§];
            if(_loc2_.step == this.§_-sL§)
            {
               param1.slingshot.§_-0z§(_loc2_.x,_loc2_.y,_loc2_.§_-w-§,_loc2_.angle);
               ++this.§_-Pw§;
            }
         }
         if(this.§_-7b§.length > this.§_-qe§)
         {
            _loc3_ = this.§_-7b§[this.§_-qe§];
            if(_loc3_.step == this.§_-sL§)
            {
               param1.activatePowerup();
               ++this.§_-qe§;
            }
         }
         ++this.§_-L§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-dl§ + §_-un§ + this.§_-r3§() + §_-un§ + this.§_-BP§());
      }
      
      private function §_-r3§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-j6§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-j6§.length)
         {
            _loc1_ += §_-vl§;
            _loc1_ += this.§_-j6§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-BP§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-7b§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-7b§.length)
         {
            _loc1_ += §_-vl§;
            _loc1_ += this.§_-7b§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
