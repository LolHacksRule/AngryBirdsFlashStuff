package §[V§
{
   import §5Y§.§"!4§;
   import §8B§.§3J§;
   import flash.display.MovieClip;
   
   public class §@!!§ extends §=!'§
   {
       
      
      public var §]B§:int;
      
      public var §'J§:int;
      
      public var §0G§:int;
      
      public var §;!<§:int;
      
      public var §3m§:Number;
      
      public var §#D§:Number;
      
      public var §9"§:Number;
      
      public var §8!2§:Number;
      
      public var §#O§:Number;
      
      public function §@!!§(param1:XML, param2:§=!'§, param3:§"!4§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §?3§ = true;
      }
      
      public function §;>§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§0G§ = param6;
         this.§;!<§ = param1 * this.§0G§;
         this.§#O§ = param7;
         this.§9"§ = param2;
         this.§8!2§ = param3;
         this.§3m§ = param4;
         this.§#D§ = param5;
         this.§'J§ = 1;
         if(§7A§.length > this.§;!<§)
         {
            this.§'J§ += Math.ceil((§7A§.length - this.§;!<§) / (this.§0G§ * this.§#O§));
         }
         this.§[!9§(0);
      }
      
      public function §[!9§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§'J§)
         {
            param1 = this.§'J§ - 1;
         }
         this.§]B§ = param1;
         var _loc2_:int = this.§]B§ * this.§#O§ * this.§0G§;
         var _loc3_:int = _loc2_ + this.§;!<§;
         var _loc4_:int = 0;
         while(_loc4_ < §7A§.length)
         {
            (§7A§[_loc4_] as §3J§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§9"§ - this.§]B§ * this.§3m§;
         y = this.§8!2§ - this.§]B§ * this.§#D§;
      }
   }
}
