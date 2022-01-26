package §_-58§
{
   import §_-1p§.§_-K9§;
   import §_-J-§.§_-9C§;
   import flash.display.MovieClip;
   
   public class §_-Tc§ extends §_-WC§
   {
       
      
      public var §_-z8§:int;
      
      public var §_-LO§:int;
      
      public var §_-12§:int;
      
      public var §_-6C§:int;
      
      public var §_-Sq§:Number;
      
      public var §_-ZV§:Number;
      
      public var §_-0N§:Number;
      
      public var §_-4K§:Number;
      
      public var §_-ZC§:Number;
      
      public function §_-Tc§(param1:XML, param2:§_-WC§, param3:§_-K9§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-nJ§ = true;
      }
      
      public function §_-mg§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-12§ = param6;
         this.§_-6C§ = param1 * this.§_-12§;
         this.§_-ZC§ = param7;
         this.§_-0N§ = param2;
         this.§_-4K§ = param3;
         this.§_-Sq§ = param4;
         this.§_-ZV§ = param5;
         this.§_-LO§ = 1;
         if(§_-7u§.length > this.§_-6C§)
         {
            this.§_-LO§ += Math.ceil((§_-7u§.length - this.§_-6C§) / (this.§_-12§ * this.§_-ZC§));
         }
         this.§_-yJ§(0);
      }
      
      public function §_-yJ§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-LO§)
         {
            param1 = this.§_-LO§ - 1;
         }
         this.§_-z8§ = param1;
         var _loc2_:int = this.§_-z8§ * this.§_-ZC§ * this.§_-12§;
         var _loc3_:int = _loc2_ + this.§_-6C§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-7u§.length)
         {
            (§_-7u§[_loc4_] as §_-9C§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-0N§ - this.§_-z8§ * this.§_-Sq§;
         y = this.§_-4K§ - this.§_-z8§ * this.§_-ZV§;
      }
   }
}
