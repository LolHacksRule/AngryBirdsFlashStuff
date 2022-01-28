package §_-Ll§
{
   import §_-7V§.§_-C§;
   import §_-Qn§.§_-bo§;
   import flash.display.MovieClip;
   
   public class §_-wR§ extends §_-4G§
   {
       
      
      public var §_-Px§:int;
      
      public var §_-nc§:int;
      
      public var §_-Xb§:int;
      
      public var §_-5k§:int;
      
      public var §_-Yw§:Number;
      
      public var §_-aK§:Number;
      
      public var §_-Xg§:Number;
      
      public var §_-Uh§:Number;
      
      public var §_-UE§:Number;
      
      public function §_-wR§(param1:XML, param2:§_-4G§, param3:§_-bo§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-Fd§ = true;
      }
      
      public function §_-f9§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-Xb§ = param6;
         this.§_-5k§ = param1 * this.§_-Xb§;
         this.§_-UE§ = param7;
         this.§_-Xg§ = param2;
         this.§_-Uh§ = param3;
         this.§_-Yw§ = param4;
         this.§_-aK§ = param5;
         this.§_-nc§ = 1;
         if(§_-dD§.length > this.§_-5k§)
         {
            this.§_-nc§ += Math.ceil((§_-dD§.length - this.§_-5k§) / (this.§_-Xb§ * this.§_-UE§));
         }
         this.§_-xv§(0);
      }
      
      public function §_-xv§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-nc§)
         {
            param1 = this.§_-nc§ - 1;
         }
         this.§_-Px§ = param1;
         var _loc2_:int = this.§_-Px§ * this.§_-UE§ * this.§_-Xb§;
         var _loc3_:int = _loc2_ + this.§_-5k§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-dD§.length)
         {
            (§_-dD§[_loc4_] as §_-C§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-Xg§ - this.§_-Px§ * this.§_-Yw§;
         y = this.§_-Uh§ - this.§_-Px§ * this.§_-aK§;
      }
   }
}
