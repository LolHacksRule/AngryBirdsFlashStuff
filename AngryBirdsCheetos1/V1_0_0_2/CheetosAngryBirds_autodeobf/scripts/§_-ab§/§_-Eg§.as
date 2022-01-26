package §_-ab§
{
   import §_-A§.§_-Hw§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   
   public class §_-Eg§ extends §_-IP§
   {
       
      
      public var §_-jt§:int;
      
      public var §_-K4§:int;
      
      public var §_-Fg§:int;
      
      public var §_-xv§:int;
      
      public var §_-1b§:Number;
      
      public var §_-ex§:Number;
      
      public var §_-D3§:Number;
      
      public var §_-fn§:Number;
      
      public var §_-bE§:Number;
      
      public function §_-Eg§(param1:XML, param2:§_-IP§, param3:§_-S6§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-2M§ = true;
      }
      
      public function §_-j5§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-Fg§ = param6;
         this.§_-xv§ = param1 * this.§_-Fg§;
         this.§_-bE§ = param7;
         this.§_-D3§ = param2;
         this.§_-fn§ = param3;
         this.§_-1b§ = param4;
         this.§_-ex§ = param5;
         this.§_-K4§ = 1;
         if(§_-uU§.length > this.§_-xv§)
         {
            this.§_-K4§ += Math.ceil((§_-uU§.length - this.§_-xv§) / (this.§_-Fg§ * this.§_-bE§));
         }
         this.§_-lw§(0);
      }
      
      public function §_-lw§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-K4§)
         {
            param1 = this.§_-K4§ - 1;
         }
         this.§_-jt§ = param1;
         var _loc2_:int = this.§_-jt§ * this.§_-bE§ * this.§_-Fg§;
         var _loc3_:int = _loc2_ + this.§_-xv§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-uU§.length)
         {
            (§_-uU§[_loc4_] as §_-Hw§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-D3§ - this.§_-jt§ * this.§_-1b§;
         y = this.§_-fn§ - this.§_-jt§ * this.§_-ex§;
      }
   }
}
