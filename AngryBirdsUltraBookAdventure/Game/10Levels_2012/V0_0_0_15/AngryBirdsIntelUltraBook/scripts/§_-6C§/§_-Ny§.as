package §_-6C§
{
   import §_-MN§.§_-rD§;
   import §_-Yl§.§_-5q§;
   import flash.display.MovieClip;
   
   public class §_-Ny§ extends §_-gt§
   {
       
      
      public var §_-TW§:int;
      
      public var §_-ep§:int;
      
      public var §_-06R§:int;
      
      public var §_-Sw§:int;
      
      public var §_-dk§:Number;
      
      public var §_-083§:Number;
      
      public var §_-HS§:Number;
      
      public var §_-LV§:Number;
      
      public var §_-0DO§:Number;
      
      public function §_-Ny§(param1:XML, param2:§_-gt§, param3:§_-5q§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-lQ§ = true;
      }
      
      public function §_-Ha§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-06R§ = param6;
         this.§_-Sw§ = param1 * this.§_-06R§;
         this.§_-0DO§ = param7;
         this.§_-HS§ = param2;
         this.§_-LV§ = param3;
         this.§_-dk§ = param4;
         this.§_-083§ = param5;
         if(false)
         {
            this.§_-ep§ = Math.max(1,Math.ceil(§_-057§.length / this.§_-Sw§));
         }
         else
         {
            this.§_-ep§ = 1;
            if(§_-057§.length > this.§_-Sw§)
            {
               this.§_-ep§ += Math.ceil((§_-057§.length - this.§_-Sw§) / (this.§_-06R§ * this.§_-0DO§));
            }
         }
         this.§_-1u§(0);
      }
      
      public function §_-1u§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-ep§)
         {
            param1 = this.§_-ep§ - 1;
         }
         this.§_-TW§ = param1;
         var _loc2_:int = this.§_-TW§ * this.§_-0DO§ * this.§_-06R§;
         var _loc3_:int = _loc2_ + this.§_-Sw§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-057§.length)
         {
            (§_-057§[_loc4_] as §_-rD§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-HS§ - this.§_-TW§ * this.§_-dk§;
         y = this.§_-LV§ - this.§_-TW§ * this.§_-083§;
      }
   }
}
