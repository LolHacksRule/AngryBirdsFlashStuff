package §_-z-§
{
   import §_-TG§.§_-00u§;
   import flash.system.Capabilities;
   
   public class §_-sX§
   {
      
      public static const §_-58§:String = "@@";
      
      public static const §_-H5§:String = "@";
       
      
      private var §_-a4§:String;
      
      private var §_-lB§:int;
      
      private var §_-0D2§:Number;
      
      private var §_-063§:Number;
      
      protected var §_-wG§:Boolean;
      
      protected var §_-18§:Vector.<§_-Vw§>;
      
      protected var §_-E-§:Vector.<§_-8w§>;
      
      private var §_-02k§:int;
      
      private var §_-08E§:int;
      
      public function §_-sX§(param1:String)
      {
         this.§_-18§ = new Vector.<§_-Vw§>();
         this.§_-E-§ = new Vector.<§_-8w§>();
         super();
         this.§_-a4§ = param1;
         this.§_-0D2§ = 1;
      }
      
      public static function initialize(param1:String) : §_-sX§
      {
         var _loc2_:§_-sX§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-Vw§ = null;
         var _loc9_:§_-8w§ = null;
         var _loc3_:Array = param1.split(§_-58§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-sX§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§_-H5§);
            _loc5_ = _loc3_[2].split(§_-H5§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-Vw§.initialize(_loc6_))
               {
                  _loc2_.§_-18§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-8w§.initialize(_loc7_))
               {
                  _loc2_.§_-E-§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-3t§() : Boolean
      {
         return this.§_-wG§;
      }
      
      public function get §_-081§() : String
      {
         return this.§_-a4§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-0D2§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-0D2§;
      }
      
      protected function get §_-5s§() : int
      {
         return this.§_-lB§;
      }
      
      public function §_-QL§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-wG§)
         {
            this.§_-18§.push(new §_-Vw§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-R§(param1:int) : void
      {
         if(!this.§_-wG§)
         {
            if(this.§_-E-§.length > 0)
            {
               if(this.§_-E-§[this.§_-E-§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-E-§.push(new §_-8w§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-wG§ = true;
      }
      
      public function step(param1:§_-00u§) : void
      {
         var _loc2_:§_-Vw§ = null;
         var _loc3_:§_-8w§ = null;
         if(this.§_-18§.length > this.§_-02k§)
         {
            _loc2_ = this.§_-18§[this.§_-02k§];
            if(_loc2_.step == this.§_-5s§)
            {
               param1.slingshot.§_-IY§(_loc2_.x,_loc2_.y,_loc2_.§_-02a§,_loc2_.angle);
               ++this.§_-02k§;
            }
         }
         if(this.§_-E-§.length > this.§_-08E§)
         {
            _loc3_ = this.§_-E-§[this.§_-08E§];
            if(_loc3_.step == this.§_-5s§)
            {
               param1.activatePowerup();
               ++this.§_-08E§;
            }
         }
         ++this.§_-lB§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-a4§ + §_-58§ + this.§_-2§() + §_-58§ + this.§_-Sm§());
      }
      
      private function §_-2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-18§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-18§.length)
         {
            _loc1_ += §_-H5§;
            _loc1_ += this.§_-18§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-Sm§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-E-§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-E-§.length)
         {
            _loc1_ += §_-H5§;
            _loc1_ += this.§_-E-§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
