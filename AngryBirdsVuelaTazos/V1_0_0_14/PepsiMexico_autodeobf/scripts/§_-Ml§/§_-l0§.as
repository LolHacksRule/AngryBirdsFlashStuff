package §_-Ml§
{
   import §_-5Y§.§_-yw§;
   import flash.system.Capabilities;
   
   public class §_-l0§
   {
      
      private static const §_-nD§:String = "@@";
      
      private static const §_-54§:String = "@";
       
      
      private var §_-ZS§:String;
      
      private var §_-z9§:int;
      
      private var §_-zq§:Number;
      
      private var §_-IJ§:Number;
      
      private var §_-sL§:Boolean;
      
      private var §_-aA§:Vector.<§_-1L§>;
      
      private var §_-pM§:Vector.<§_-Lg§>;
      
      private var §_-df§:int;
      
      private var §_-UA§:int;
      
      public function §_-l0§(param1:String)
      {
         this.§_-aA§ = new Vector.<§_-1L§>();
         this.§_-pM§ = new Vector.<§_-Lg§>();
         super();
         this.§_-ZS§ = param1;
         this.§_-zq§ = 1;
      }
      
      public static function §_-gD§(param1:String) : §_-l0§
      {
         var _loc2_:§_-l0§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-1L§ = null;
         var _loc9_:§_-Lg§ = null;
         var _loc3_:Array = param1.split(§_-nD§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-l0§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§_-54§);
            _loc5_ = _loc3_[2].split(§_-54§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-1L§.§_-gD§(_loc6_))
               {
                  _loc2_.§_-aA§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-Lg§.§_-gD§(_loc7_))
               {
                  _loc2_.§_-pM§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-Os§() : Boolean
      {
         return this.§_-sL§;
      }
      
      public function get §_-od§() : String
      {
         return this.§_-ZS§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-zq§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-zq§;
      }
      
      private function get §_-F6§() : int
      {
         return this.§_-z9§;
      }
      
      public function §_-Mq§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-sL§)
         {
            this.§_-aA§.push(new §_-1L§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-kU§(param1:int) : void
      {
         if(!this.§_-sL§)
         {
            if(this.§_-pM§.length > 0)
            {
               if(this.§_-pM§[this.§_-pM§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-pM§.push(new §_-Lg§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-sL§ = true;
      }
      
      public function step(param1:§_-yw§) : void
      {
         var _loc2_:§_-1L§ = null;
         var _loc3_:§_-Lg§ = null;
         if(this.§_-aA§.length > this.§_-df§)
         {
            _loc2_ = this.§_-aA§[this.§_-df§];
            if(_loc2_.step == this.§_-F6§)
            {
               param1.slingshot.§_-Ab§(_loc2_.x,_loc2_.y,_loc2_.§_-jN§,_loc2_.angle);
               ++this.§_-df§;
            }
         }
         if(this.§_-pM§.length > this.§_-UA§)
         {
            _loc3_ = this.§_-pM§[this.§_-UA§];
            if(_loc3_.step == this.§_-F6§)
            {
               param1.activatePowerup();
               ++this.§_-UA§;
            }
         }
         ++this.§_-z9§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-ZS§ + §_-nD§ + this.§_-qG§() + §_-nD§ + this.§_-ye§());
      }
      
      private function §_-qG§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-aA§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-aA§.length)
         {
            _loc1_ += §_-54§;
            _loc1_ += this.§_-aA§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-ye§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-pM§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-pM§.length)
         {
            _loc1_ += §_-54§;
            _loc1_ += this.§_-pM§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
