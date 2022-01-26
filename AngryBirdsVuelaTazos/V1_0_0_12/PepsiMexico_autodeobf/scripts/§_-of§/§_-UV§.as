package §_-of§
{
   import §_-8J§.§_-8s§;
   import §_-Ys§.§_-7o§;
   import flash.display.MovieClip;
   
   public class §_-UV§ extends §_-H4§
   {
       
      
      public var override:int;
      
      public var §_-o6§:int;
      
      public var §_-1p§:int;
      
      public var §_-36§:int;
      
      public var §_-Pr§:Number;
      
      public var §_-fT§:Number;
      
      public var §_-Xl§:Number;
      
      public var §_-5C§:Number;
      
      public var §_-me§:Number;
      
      public function §_-UV§(param1:XML, param2:§_-H4§, param3:§_-8s§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-5I§ = true;
      }
      
      public function §_-vg§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-1p§ = param6;
         this.§_-36§ = param1 * this.§_-1p§;
         this.§_-me§ = param7;
         this.§_-Xl§ = param2;
         this.§_-5C§ = param3;
         this.§_-Pr§ = param4;
         this.§_-fT§ = param5;
         this.§_-o6§ = 1;
         if(§_-X5§.length > this.§_-36§)
         {
            this.§_-o6§ += Math.ceil((§_-X5§.length - this.§_-36§) / (this.§_-1p§ * this.§_-me§));
         }
         this.§_-hV§(0);
      }
      
      public function §_-hV§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-o6§)
         {
            param1 = this.§_-o6§ - 1;
         }
         this.override = param1;
         var _loc2_:int = this.override * this.§_-me§ * this.§_-1p§;
         var _loc3_:int = _loc2_ + this.§_-36§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-X5§.length)
         {
            (§_-X5§[_loc4_] as §_-7o§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-Xl§ - this.override * this.§_-Pr§;
         y = this.§_-5C§ - this.override * this.§_-fT§;
      }
   }
}
