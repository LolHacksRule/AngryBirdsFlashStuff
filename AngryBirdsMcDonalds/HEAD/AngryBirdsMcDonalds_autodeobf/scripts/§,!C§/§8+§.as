package §,!C§
{
   import §7p§.§%g§;
   import §@-§.§-m§;
   import flash.display.MovieClip;
   
   public class §8+§ extends §-6§
   {
       
      
      public var §^d§:int;
      
      public var §-V§:int;
      
      public var §^!Y§:int;
      
      public var §<b§:int;
      
      public var §8h§:Number;
      
      public var §%!`§:Number;
      
      public var §4J§:Number;
      
      public var §<u§:Number;
      
      public var §6Q§:Number;
      
      public function §8+§(param1:XML, param2:§-6§, param3:§%g§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §4-§ = true;
      }
      
      public function §7t§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§^!Y§ = param6;
         this.§<b§ = param1 * this.§^!Y§;
         this.§6Q§ = param7;
         this.§4J§ = param2;
         this.§<u§ = param3;
         this.§8h§ = param4;
         this.§%!`§ = param5;
         if(false)
         {
            this.§-V§ = Math.max(1,Math.ceil(§@!g§.length / this.§<b§));
         }
         else
         {
            this.§-V§ = 1;
            if(§@!g§.length > this.§<b§)
            {
               this.§-V§ += Math.ceil((§@!g§.length - this.§<b§) / (this.§^!Y§ * this.§6Q§));
            }
         }
         this.§'w§(0);
      }
      
      public function §'w§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§-V§)
         {
            param1 = this.§-V§ - 1;
         }
         this.§^d§ = param1;
         var _loc2_:int = this.§^d§ * this.§6Q§ * this.§^!Y§;
         var _loc3_:int = _loc2_ + this.§<b§;
         var _loc4_:int = 0;
         while(_loc4_ < §@!g§.length)
         {
            (§@!g§[_loc4_] as §-m§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§4J§ - this.§^d§ * this.§8h§;
         y = this.§<u§ - this.§^d§ * this.§%!`§;
      }
   }
}
