package §2T§
{
   import §7J§.§07§;
   import §?H§.§+!B§;
   import flash.display.MovieClip;
   
   public class §[!§ extends §&M§
   {
       
      
      public var §6q§:int;
      
      public var §3!1§:int;
      
      public var §=3§:int;
      
      public var §&F§:int;
      
      public var §+!A§:Number;
      
      public var §4h§:Number;
      
      public var §+O§:Number;
      
      public var §"3§:Number;
      
      public var §]!3§:Number;
      
      public function §[!§(param1:XML, param2:§&M§, param3:§+!B§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §',§ = true;
      }
      
      public function §8R§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§=3§ = param6;
         this.§&F§ = param1 * this.§=3§;
         this.§]!3§ = param7;
         this.§+O§ = param2;
         this.§"3§ = param3;
         this.§+!A§ = param4;
         this.§4h§ = param5;
         if(false)
         {
            this.§3!1§ = Math.max(1,Math.ceil(§]§.length / this.§&F§));
         }
         else
         {
            this.§3!1§ = 1;
            if(§]§.length > this.§&F§)
            {
               this.§3!1§ += Math.ceil((§]§.length - this.§&F§) / (this.§=3§ * this.§]!3§));
            }
         }
         this.§0L§(0);
      }
      
      public function §0L§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3!1§)
         {
            param1 = this.§3!1§ - 1;
         }
         this.§6q§ = param1;
         var _loc2_:int = this.§6q§ * this.§]!3§ * this.§=3§;
         var _loc3_:int = _loc2_ + this.§&F§;
         var _loc4_:int = 0;
         while(_loc4_ < §]§.length)
         {
            (§]§[_loc4_] as §07§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§+O§ - this.§6q§ * this.§+!A§;
         y = this.§"3§ - this.§6q§ * this.§4h§;
      }
   }
}
