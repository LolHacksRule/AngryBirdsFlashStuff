package §;!A§
{
   import §+!d§.§8!=§;
   import §;"$§.§`5§;
   import flash.display.MovieClip;
   
   public class §"s§ extends §;!u§
   {
       
      
      public var §9E§:int;
      
      public var §3"+§:int;
      
      public var §3!@§:int;
      
      public var §8s§:int;
      
      public var §?1§:Number;
      
      public var §[!S§:Number;
      
      public var §^&§:Number;
      
      public var §2!g§:Number;
      
      public var include:Number;
      
      public function §"s§(param1:XML, param2:§;!u§, param3:§`5§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §7!k§ = true;
      }
      
      public function §3!Q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§3!@§ = param6;
         this.§8s§ = param1 * this.§3!@§;
         this.include = param7;
         this.§^&§ = param2;
         this.§2!g§ = param3;
         this.§?1§ = param4;
         this.§[!S§ = param5;
         if(false)
         {
            this.§3"+§ = Math.max(1,Math.ceil(§`6§.length / this.§8s§));
         }
         else
         {
            this.§3"+§ = 1;
            if(§`6§.length > this.§8s§)
            {
               this.§3"+§ += Math.ceil((§`6§.length - this.§8s§) / (this.§3!@§ * this.include));
            }
         }
         this.§0!F§(0);
      }
      
      public function §0!F§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§3"+§)
         {
            param1 = this.§3"+§ - 1;
         }
         this.§9E§ = param1;
         var _loc2_:int = this.§9E§ * this.include * this.§3!@§;
         var _loc3_:int = _loc2_ + this.§8s§;
         var _loc4_:int = 0;
         while(_loc4_ < §`6§.length)
         {
            (§`6§[_loc4_] as §8!=§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§^&§ - this.§9E§ * this.§?1§;
         y = this.§2!g§ - this.§9E§ * this.§[!S§;
      }
   }
}
