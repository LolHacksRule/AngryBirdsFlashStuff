package §,![§
{
   import §-1§.§3!%§;
   import §9!8§.§0!7§;
   import flash.display.MovieClip;
   
   public class §?!8§ extends §[!S§
   {
       
      
      public var §9!o§:int;
      
      public var §]!0§:int;
      
      public var §`!&§:int;
      
      public var §]T§:int;
      
      public var §%B§:Number;
      
      public var §1O§:Number;
      
      public var §!!n§:Number;
      
      public var §'!A§:Number;
      
      public var §?!D§:Number;
      
      public function §?!8§(param1:XML, param2:§[!S§, param3:§0!7§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §;v§ = true;
      }
      
      public function §7J§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§`!&§ = param6;
         this.§]T§ = param1 * this.§`!&§;
         this.§?!D§ = param7;
         this.§!!n§ = param2;
         this.§'!A§ = param3;
         this.§%B§ = param4;
         this.§1O§ = param5;
         if(false)
         {
            this.§]!0§ = Math.max(1,Math.ceil(§]_§.length / this.§]T§));
         }
         else
         {
            this.§]!0§ = 1;
            if(§]_§.length > this.§]T§)
            {
               this.§]!0§ += Math.ceil((§]_§.length - this.§]T§) / (this.§`!&§ * this.§?!D§));
            }
         }
         this.§;4§(0);
      }
      
      public function §;4§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§]!0§)
         {
            param1 = this.§]!0§ - 1;
         }
         this.§9!o§ = param1;
         var _loc2_:int = this.§9!o§ * this.§?!D§ * this.§`!&§;
         var _loc3_:int = _loc2_ + this.§]T§;
         var _loc4_:int = 0;
         while(_loc4_ < §]_§.length)
         {
            (§]_§[_loc4_] as §3!%§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§!!n§ - this.§9!o§ * this.§%B§;
         y = this.§'!A§ - this.§9!o§ * this.§1O§;
      }
   }
}
