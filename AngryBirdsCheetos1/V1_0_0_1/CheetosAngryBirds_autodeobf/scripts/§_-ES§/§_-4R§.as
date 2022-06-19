package §_-ES§
{
   import §_-9J§.§_-mr§;
   import §_-q6§.§_-ZW§;
   import flash.display.MovieClip;
   
   public class §_-4R§ extends §_-L8§
   {
       
      
      public var §_-T§:int;
      
      public var §_-LR§:int;
      
      public var §_-Ll§:int;
      
      public var §_-LE§:int;
      
      public var §_-8A§:Number;
      
      public var §_-0-n§:Number;
      
      public var §_-0-7§:Number;
      
      public var §_-qV§:Number;
      
      public var §_-y6§:Number;
      
      public function §_-4R§(param1:XML, param2:§_-L8§, param3:§_-ZW§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-KO§ = true;
      }
      
      public function §_-Aq§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-Ll§ = param6;
         this.§_-LE§ = param1 * this.§_-Ll§;
         this.§_-y6§ = param7;
         this.§_-0-7§ = param2;
         this.§_-qV§ = param3;
         this.§_-8A§ = param4;
         this.§_-0-n§ = param5;
         this.§_-LR§ = 1;
         if(§_-l0§.length > this.§_-LE§)
         {
            this.§_-LR§ += Math.ceil((§_-l0§.length - this.§_-LE§) / (this.§_-Ll§ * this.§_-y6§));
         }
         this.§_-2§(0);
      }
      
      public function §_-2§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-LR§)
         {
            param1 = this.§_-LR§ - 1;
         }
         this.§_-T§ = param1;
         var _loc2_:int = this.§_-T§ * this.§_-y6§ * this.§_-Ll§;
         var _loc3_:int = _loc2_ + this.§_-LE§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-l0§.length)
         {
            (§_-l0§[_loc4_] as §_-mr§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-0-7§ - this.§_-T§ * this.§_-8A§;
         y = this.§_-qV§ - this.§_-T§ * this.§_-0-n§;
      }
   }
}
