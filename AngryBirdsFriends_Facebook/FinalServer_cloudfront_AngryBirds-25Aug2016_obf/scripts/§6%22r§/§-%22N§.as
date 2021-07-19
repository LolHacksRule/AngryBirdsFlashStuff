package §6"r§
{
   import §'!U§.§>$$§;
   import §<!O§.§'k§;
   import flash.display.MovieClip;
   
   public class §-"N§ extends §0"<§
   {
       
      
      public var §`$!§:int;
      
      public var §?"U§:int;
      
      public var §[#5§:int;
      
      public var §9=§:int;
      
      public var §?"m§:Number;
      
      public var §6"f§:Number;
      
      public var §#"P§:Number;
      
      public var §46§:Number;
      
      public var §0"v§:Number;
      
      public function §-"N§(param1:XML, param2:§0"<§, param3:§'k§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §<o§ = true;
      }
      
      public function §<e§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§[#5§ = param6;
         this.§9=§ = param1 * this.§[#5§;
         this.§0"v§ = param7;
         this.§#"P§ = param2;
         this.§46§ = param3;
         this.§?"m§ = param4;
         this.§6"f§ = param5;
         if(false)
         {
            this.§?"U§ = Math.max(1,Math.ceil(§5&§.length / this.§9=§));
         }
         else
         {
            this.§?"U§ = 1;
            if(§5&§.length > this.§9=§)
            {
               this.§?"U§ += Math.ceil((§5&§.length - this.§9=§) / (this.§[#5§ * this.§0"v§));
            }
         }
         this.§ !d§(0);
      }
      
      public function § !d§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§?"U§)
         {
            param1 = this.§?"U§ - 1;
         }
         this.§`$!§ = param1;
         var _loc2_:int = this.§`$!§ * this.§0"v§ * this.§[#5§;
         var _loc3_:int = _loc2_ + this.§9=§;
         var _loc4_:int = 0;
         while(_loc4_ < §5&§.length)
         {
            (§5&§[_loc4_] as §>$$§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§#"P§ - this.§`$!§ * this.§?"m§;
         y = this.§46§ - this.§`$!§ * this.§6"f§;
      }
   }
}
