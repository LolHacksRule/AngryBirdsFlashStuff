package §-B§
{
   import §#M§.§^0§;
   import §;n§.§&G§;
   import flash.display.MovieClip;
   
   public class §7x§ extends §?!j§
   {
       
      
      public var §2!l§:int;
      
      public var §!!%§:int;
      
      public var §[!t§:int;
      
      public var §'"K§:int;
      
      public var §^"+§:Number;
      
      public var §7#§:Number;
      
      public var § &§:Number;
      
      public var §0!j§:Number;
      
      public var §+"3§:Number;
      
      public function §7x§(param1:XML, param2:§?!j§, param3:§^0§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §8%§ = true;
      }
      
      public function §^!r§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§[!t§ = param6;
         this.§'"K§ = param1 * this.§[!t§;
         this.§+"3§ = param7;
         this.§ &§ = param2;
         this.§0!j§ = param3;
         this.§^"+§ = param4;
         this.§7#§ = param5;
         if(false)
         {
            this.§!!%§ = Math.max(1,Math.ceil(§!!&§.length / this.§'"K§));
         }
         else
         {
            this.§!!%§ = 1;
            if(§!!&§.length > this.§'"K§)
            {
               this.§!!%§ += Math.ceil((§!!&§.length - this.§'"K§) / (this.§[!t§ * this.§+"3§));
            }
         }
         this.§%!v§(0);
      }
      
      public function §%!v§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§!!%§)
         {
            param1 = this.§!!%§ - 1;
         }
         this.§2!l§ = param1;
         var _loc2_:int = this.§2!l§ * this.§+"3§ * this.§[!t§;
         var _loc3_:int = _loc2_ + this.§'"K§;
         var _loc4_:int = 0;
         while(_loc4_ < §!!&§.length)
         {
            (§!!&§[_loc4_] as §&G§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§ &§ - this.§2!l§ * this.§^"+§;
         y = this.§0!j§ - this.§2!l§ * this.§7#§;
      }
   }
}
