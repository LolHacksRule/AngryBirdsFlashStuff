package §_-Eg§
{
   import §_-16§.§_-MF§;
   import §_-xL§.§_-1-§;
   import flash.display.MovieClip;
   
   public class §_-Tb§ extends §_-Up§
   {
       
      
      public var §_-XW§:int;
      
      public var §_-Fw§:int;
      
      public var §_-73§:int;
      
      public var §_-uW§:int;
      
      public var §_-VZ§:Number;
      
      public var §_-PP§:Number;
      
      public var §_-qG§:Number;
      
      public var §_-cA§:Number;
      
      public var §_-hl§:Number;
      
      public function §_-Tb§(param1:XML, param2:§_-Up§, param3:§_-1-§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-5J§ = true;
      }
      
      public function §_-Ft§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-73§ = param6;
         this.§_-uW§ = param1 * this.§_-73§;
         this.§_-hl§ = param7;
         this.§_-qG§ = param2;
         this.§_-cA§ = param3;
         this.§_-VZ§ = param4;
         this.§_-PP§ = param5;
         this.§_-Fw§ = 1;
         if(§_-3P§.length > this.§_-uW§)
         {
            this.§_-Fw§ += Math.ceil((§_-3P§.length - this.§_-uW§) / (this.§_-73§ * this.§_-hl§));
         }
         this.§_-GN§(0);
      }
      
      public function §_-GN§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-Fw§)
         {
            param1 = this.§_-Fw§ - 1;
         }
         this.§_-XW§ = param1;
         var _loc2_:int = this.§_-XW§ * this.§_-hl§ * this.§_-73§;
         var _loc3_:int = _loc2_ + this.§_-uW§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-3P§.length)
         {
            (§_-3P§[_loc4_] as §_-MF§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-qG§ - this.§_-XW§ * this.§_-VZ§;
         y = this.§_-cA§ - this.§_-XW§ * this.§_-PP§;
      }
   }
}
