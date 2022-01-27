package §!t§
{
   import §5F§.§!!A§;
   import §>!7§.§"Q§;
   import flash.display.MovieClip;
   
   public class §90§ extends §;1§
   {
       
      
      public var §0J§:int;
      
      public var §<r§:int;
      
      public var §>!§:int;
      
      public var §;C§:int;
      
      public var § §:Number;
      
      public var §9D§:Number;
      
      public var §?y§:Number;
      
      public var §8g§:Number;
      
      public var §'B§:Number;
      
      public function §90§(param1:XML, param2:§;1§, param3:§"Q§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §4+§ = true;
      }
      
      public function §]0§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§>!§ = param6;
         this.§;C§ = param1 * this.§>!§;
         this.§'B§ = param7;
         this.§?y§ = param2;
         this.§8g§ = param3;
         this.§ § = param4;
         this.§9D§ = param5;
         if(false)
         {
            this.§<r§ = Math.max(1,Math.ceil(§8A§.length / this.§;C§));
         }
         else
         {
            this.§<r§ = 1;
            if(§8A§.length > this.§;C§)
            {
               this.§<r§ += Math.ceil((§8A§.length - this.§;C§) / (this.§>!§ * this.§'B§));
            }
         }
         this.§+!;§(0);
      }
      
      public function §+!;§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§<r§)
         {
            param1 = this.§<r§ - 1;
         }
         this.§0J§ = param1;
         var _loc2_:int = this.§0J§ * this.§'B§ * this.§>!§;
         var _loc3_:int = _loc2_ + this.§;C§;
         var _loc4_:int = 0;
         while(_loc4_ < §8A§.length)
         {
            (§8A§[_loc4_] as §!!A§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§?y§ - this.§0J§ * this.§ §;
         y = this.§8g§ - this.§0J§ * this.§9D§;
      }
   }
}
