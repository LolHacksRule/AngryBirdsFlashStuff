package §2$;§
{
   import §<8§.§6!1§;
   import §[#A§.§+#<§;
   import flash.display.MovieClip;
   
   public class §`#t§ extends §!"e§
   {
       
      
      public var §5F§:int;
      
      public var §<"U§:int;
      
      public var §1s§:int;
      
      public var §,!C§:int;
      
      public var §=#F§:Number;
      
      public var §1"g§:Number;
      
      public var §%#O§:Number;
      
      public var §6!m§:Number;
      
      public var §?"0§:Number;
      
      public function §`#t§(param1:XML, param2:§!"e§, param3:§+#<§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §2#h§ = true;
      }
      
      public function §"!3§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§1s§ = param6;
         this.§,!C§ = param1 * this.§1s§;
         this.§?"0§ = param7;
         this.§%#O§ = param2;
         this.§6!m§ = param3;
         this.§=#F§ = param4;
         this.§1"g§ = param5;
         this.§<"U§ = 1;
         if(§#z§.length > this.§,!C§)
         {
            this.§<"U§ += Math.ceil((§#z§.length - this.§,!C§) / (this.§1s§ * this.§?"0§));
         }
         this.§?#M§(0);
      }
      
      public function §?#M§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§<"U§)
         {
            param1 = this.§<"U§ - 1;
         }
         this.§5F§ = param1;
         var _loc2_:int = this.§5F§ * this.§?"0§ * this.§1s§;
         var _loc3_:int = _loc2_ + this.§,!C§;
         var _loc4_:int = 0;
         while(_loc4_ < §#z§.length)
         {
            (§#z§[_loc4_] as §6!1§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§%#O§ - this.§5F§ * this.§=#F§;
         y = this.§6!m§ - this.§5F§ * this.§1"g§;
      }
   }
}
