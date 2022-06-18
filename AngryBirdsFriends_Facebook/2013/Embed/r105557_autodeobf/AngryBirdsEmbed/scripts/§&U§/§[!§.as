package §&U§
{
   import §"!K§.§,U§;
   import §1t§.§@B§;
   import flash.display.MovieClip;
   
   public class §[!§ extends §05§
   {
       
      
      public var §finally§:int;
      
      public var § ?§:int;
      
      public var §4U§:int;
      
      public var §=!!§:int;
      
      public var §4v§:Number;
      
      public var §?!7§:Number;
      
      public var §]t§:Number;
      
      public var §&!A§:Number;
      
      public var §3B§:Number;
      
      public function §[!§(param1:XML, param2:§05§, param3:§,U§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §^!C§ = true;
      }
      
      public function §<1§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§4U§ = param6;
         this.§=!!§ = param1 * this.§4U§;
         this.§3B§ = param7;
         this.§]t§ = param2;
         this.§&!A§ = param3;
         this.§4v§ = param4;
         this.§?!7§ = param5;
         if(false)
         {
            this.§ ?§ = Math.max(1,Math.ceil(§"6§.length / this.§=!!§));
         }
         else
         {
            this.§ ?§ = 1;
            if(§"6§.length > this.§=!!§)
            {
               this.§ ?§ += Math.ceil((§"6§.length - this.§=!!§) / (this.§4U§ * this.§3B§));
            }
         }
         this.§-i§(0);
      }
      
      public function §-i§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§ ?§)
         {
            param1 = this.§ ?§ - 1;
         }
         this.§finally§ = param1;
         var _loc2_:int = this.§finally§ * this.§3B§ * this.§4U§;
         var _loc3_:int = _loc2_ + this.§=!!§;
         var _loc4_:int = 0;
         while(_loc4_ < §"6§.length)
         {
            (§"6§[_loc4_] as §@B§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§]t§ - this.§finally§ * this.§4v§;
         y = this.§&!A§ - this.§finally§ * this.§?!7§;
      }
   }
}
