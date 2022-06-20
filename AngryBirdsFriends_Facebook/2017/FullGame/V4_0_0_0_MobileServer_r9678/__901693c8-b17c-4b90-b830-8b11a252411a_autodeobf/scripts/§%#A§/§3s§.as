package §%#A§
{
   import §8#D§.§#E§;
   import §<"1§.§[!K§;
   import flash.display.MovieClip;
   
   public class §3s§ extends §]!_§
   {
       
      
      public var §%#e§:int;
      
      public var §-!d§:int;
      
      public var §2"@§:int;
      
      public var §##§:int;
      
      public var §0!V§:Number;
      
      public var §5#§:Number;
      
      public var §?!R§:Number;
      
      public var §@#G§:Number;
      
      public var §"!?§:Number;
      
      public function §3s§(param1:XML, param2:§]!_§, param3:§#E§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §'#^§ = true;
      }
      
      public function §0-§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§2"@§ = param6;
         this.§##§ = param1 * this.§2"@§;
         this.§"!?§ = param7;
         this.§?!R§ = param2;
         this.§@#G§ = param3;
         this.§0!V§ = param4;
         this.§5#§ = param5;
         if(false)
         {
            this.§-!d§ = Math.max(1,Math.ceil(§+G§.length / this.§##§));
         }
         else
         {
            this.§-!d§ = 1;
            if(§+G§.length > this.§##§)
            {
               this.§-!d§ += Math.ceil((§+G§.length - this.§##§) / (this.§2"@§ * this.§"!?§));
            }
         }
         this.§##h§(0);
      }
      
      public function §##h§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§-!d§)
         {
            param1 = this.§-!d§ - 1;
         }
         this.§%#e§ = param1;
         var _loc2_:int = this.§%#e§ * this.§"!?§ * this.§2"@§;
         var _loc3_:int = _loc2_ + this.§##§;
         var _loc4_:int = 0;
         while(_loc4_ < §+G§.length)
         {
            (§+G§[_loc4_] as §[!K§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§?!R§ - this.§%#e§ * this.§0!V§;
         y = this.§@#G§ - this.§%#e§ * this.§5#§;
      }
   }
}
