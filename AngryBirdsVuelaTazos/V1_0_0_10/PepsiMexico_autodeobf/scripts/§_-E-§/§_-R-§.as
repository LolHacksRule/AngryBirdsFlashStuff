package §_-E-§
{
   import §_-PK§.§_-ZR§;
   import §_-Ux§.§_-2E§;
   import flash.display.MovieClip;
   
   public class §_-R-§ extends §_-hw§
   {
       
      
      public var §_-9h§:int;
      
      public var §_-eG§:int;
      
      public var §_-un§:int;
      
      public var §_-84§:int;
      
      public var §_-PS§:Number;
      
      public var §_-C4§:Number;
      
      public var §_-Ca§:Number;
      
      public var §_-n6§:Number;
      
      public var §_-kC§:Number;
      
      public function §_-R-§(param1:XML, param2:§_-hw§, param3:§_-2E§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-Zn§ = true;
      }
      
      public function §_-4P§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-un§ = param6;
         this.§_-84§ = param1 * this.§_-un§;
         this.§_-kC§ = param7;
         this.§_-Ca§ = param2;
         this.§_-n6§ = param3;
         this.§_-PS§ = param4;
         this.§_-C4§ = param5;
         this.§_-eG§ = 1;
         if(§_-Oe§.length > this.§_-84§)
         {
            this.§_-eG§ += Math.ceil((§_-Oe§.length - this.§_-84§) / (this.§_-un§ * this.§_-kC§));
         }
         this.§_-wy§(0);
      }
      
      public function §_-wy§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-eG§)
         {
            param1 = this.§_-eG§ - 1;
         }
         this.§_-9h§ = param1;
         var _loc2_:int = this.§_-9h§ * this.§_-kC§ * this.§_-un§;
         var _loc3_:int = _loc2_ + this.§_-84§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-Oe§.length)
         {
            (§_-Oe§[_loc4_] as §_-ZR§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-Ca§ - this.§_-9h§ * this.§_-PS§;
         y = this.§_-n6§ - this.§_-9h§ * this.§_-C4§;
      }
   }
}
