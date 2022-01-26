package §_-hf§
{
   import §_-Jx§.§_-dI§;
   import §_-Yh§.§_-fA§;
   import flash.display.MovieClip;
   
   public class §_-RT§ extends §_-WL§
   {
       
      
      public var §_-U4§:int;
      
      public var §_-XH§:int;
      
      public var §_-0j§:int;
      
      public var §_-DX§:int;
      
      public var §_-sD§:Number;
      
      public var §_-8m§:Number;
      
      public var §_-hL§:Number;
      
      public var §_-fP§:Number;
      
      public var §_-Zn§:Number;
      
      public function §_-RT§(param1:XML, param2:§_-WL§, param3:§_-fA§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-If§ = true;
      }
      
      public function §_-pH§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-0j§ = param6;
         this.§_-DX§ = param1 * this.§_-0j§;
         this.§_-Zn§ = param7;
         this.§_-hL§ = param2;
         this.§_-fP§ = param3;
         this.§_-sD§ = param4;
         this.§_-8m§ = param5;
         this.§_-XH§ = 1;
         if(§_-pf§.length > this.§_-DX§)
         {
            this.§_-XH§ += Math.ceil((§_-pf§.length - this.§_-DX§) / (this.§_-0j§ * this.§_-Zn§));
         }
         this.§_-xQ§(0);
      }
      
      public function §_-xQ§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-XH§)
         {
            param1 = this.§_-XH§ - 1;
         }
         this.§_-U4§ = param1;
         var _loc2_:int = this.§_-U4§ * this.§_-Zn§ * this.§_-0j§;
         var _loc3_:int = _loc2_ + this.§_-DX§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-pf§.length)
         {
            (§_-pf§[_loc4_] as §_-dI§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-hL§ - this.§_-U4§ * this.§_-sD§;
         y = this.§_-fP§ - this.§_-U4§ * this.§_-8m§;
      }
   }
}
