package §_-TW§
{
   import §_-QM§.§_-Ns§;
   import §_-xN§.§_-fA§;
   import flash.display.MovieClip;
   
   public class §_-8S§ extends §_-qq§
   {
       
      
      public var §_-Bm§:int;
      
      public var §_-w8§:int;
      
      public var §_-WO§:int;
      
      public var §_-Be§:int;
      
      public var §_-LZ§:Number;
      
      public var §_-Xu§:Number;
      
      public var §_-G4§:Number;
      
      public var §_-eL§:Number;
      
      public var §_-ry§:Number;
      
      public function §_-8S§(param1:XML, param2:§_-qq§, param3:§_-Ns§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §_-E4§ = true;
      }
      
      public function §_-Z0§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§_-WO§ = param6;
         this.§_-Be§ = param1 * this.§_-WO§;
         this.§_-ry§ = param7;
         this.§_-G4§ = param2;
         this.§_-eL§ = param3;
         this.§_-LZ§ = param4;
         this.§_-Xu§ = param5;
         this.§_-w8§ = 1;
         if(§_-rp§.length > this.§_-Be§)
         {
            this.§_-w8§ += Math.ceil((§_-rp§.length - this.§_-Be§) / (this.§_-WO§ * this.§_-ry§));
         }
         this.§_-dt§(0);
      }
      
      public function §_-dt§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§_-w8§)
         {
            param1 = this.§_-w8§ - 1;
         }
         this.§_-Bm§ = param1;
         var _loc2_:int = this.§_-Bm§ * this.§_-ry§ * this.§_-WO§;
         var _loc3_:int = _loc2_ + this.§_-Be§;
         var _loc4_:int = 0;
         while(_loc4_ < §_-rp§.length)
         {
            (§_-rp§[_loc4_] as §_-fA§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§_-G4§ - this.§_-Bm§ * this.§_-LZ§;
         y = this.§_-eL§ - this.§_-Bm§ * this.§_-Xu§;
      }
   }
}
