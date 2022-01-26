package §_-F1§
{
   import §_-6r§.§_-Tk§;
   import §_-Ur§.§_-ru§;
   import flash.display.MovieClip;
   
   public class §_-Os§ extends §_-k4§
   {
       
      
      public var §_-uw§:int;
      
      public var §_-ZJ§:int;
      
      public var §_-fD§:int;
      
      public var §_-kk§:int;
      
      public var §_-fK§:Number;
      
      public var §_-Vw§:Number;
      
      public var §_-It§:Number;
      
      public var §_-9h§:Number;
      
      public var §_-dc§:Number;
      
      public function §_-Os§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-Q4§ = true;
      }
      
      public function §_-xe§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-fD§ = param6;
         this.§_-kk§ = param1 * this.§_-fD§;
         this.§_-dc§ = param7;
         this.§_-It§ = param2;
         this.§_-9h§ = param3;
         this.§_-fK§ = param4;
         this.§_-Vw§ = param5;
         this.§_-ZJ§ = 1;
         if(§_-yZ§.length > this.§_-kk§)
         {
            this.§_-ZJ§ += Math.ceil((§_-yZ§.length - this.§_-kk§) / (this.§_-fD§ * this.§_-dc§));
         }
         this.§_-t6§(0);
      }
      
      public function §_-t6§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-ZJ§)
         {
            param1 = this.§_-ZJ§ - 1;
         }
         this.§_-uw§ = param1;
         var _loc2_:int = this.§_-uw§ * this.§_-dc§ * this.§_-fD§;
         var _loc3_:int = _loc2_ + this.§_-kk§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-yZ§.length)
         {
            (§_-yZ§[_loc4_] as §_-Tk§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-It§ - this.§_-uw§ * this.§_-fK§;
         y = this.§_-9h§ - this.§_-uw§ * this.§_-Vw§;
      }
   }
}
