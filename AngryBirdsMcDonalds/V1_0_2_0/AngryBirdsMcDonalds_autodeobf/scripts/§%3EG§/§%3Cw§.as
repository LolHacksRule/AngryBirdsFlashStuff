package §>G§
{
   import §"%§.§+!&§;
   import §@`§.§>!S§;
   import flash.display.MovieClip;
   
   public class §<w§ extends §]f§
   {
       
      
      public var §9!`§:int;
      
      public var § !J§:int;
      
      public var §"m§:int;
      
      public var §?1§:int;
      
      public var §8!-§:Number;
      
      public var §?a§:Number;
      
      public var § !P§:Number;
      
      public var §^q§:Number;
      
      public var §5C§:Number;
      
      public function §<w§(param1:XML, param2:§]f§, param3:§>!S§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §9e§ = true;
      }
      
      public function §&!W§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§"m§ = param6;
         this.§?1§ = param1 * this.§"m§;
         this.§5C§ = param7;
         this.§ !P§ = param2;
         this.§^q§ = param3;
         this.§8!-§ = param4;
         this.§?a§ = param5;
         if(false)
         {
            this.§ !J§ = Math.max(1,Math.ceil(§17§.length / this.§?1§));
         }
         else
         {
            this.§ !J§ = 1;
            if(§17§.length > this.§?1§)
            {
               this.§ !J§ += Math.ceil((§17§.length - this.§?1§) / (this.§"m§ * this.§5C§));
            }
         }
         this.§<J§(0);
      }
      
      public function §<J§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§ !J§)
         {
            param1 = this.§ !J§ - 1;
         }
         this.§9!`§ = param1;
         var _loc2_:int = this.§9!`§ * this.§5C§ * this.§"m§;
         var _loc3_:int = _loc2_ + this.§?1§;
         var _loc4_:int = 0;
         while(_loc4_ < §17§.length)
         {
            (§17§[_loc4_] as §+!&§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§ !P§ - this.§9!`§ * this.§8!-§;
         y = this.§^q§ - this.§9!`§ * this.§?a§;
      }
   }
}
