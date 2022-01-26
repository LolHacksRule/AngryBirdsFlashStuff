package §7f§
{
   import §"A§.§?3§;
   import §^r§.§ ^§;
   import flash.display.MovieClip;
   
   public class §&9§ extends §?i§
   {
       
      
      public var §#z§:int;
      
      public var §7!3§:int;
      
      public var §46§:int;
      
      public var §#9§:int;
      
      public var §`+§:Number;
      
      public var §&! §:Number;
      
      public var §1E§:Number;
      
      public var §&!5§:Number;
      
      public var §%l§:Number;
      
      public function §&9§(param1:XML, param2:§?i§, param3:§?3§, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         §%x§ = true;
      }
      
      public function §9!,§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.§46§ = param6;
         this.§#9§ = param1 * this.§46§;
         this.§%l§ = param7;
         this.§1E§ = param2;
         this.§&!5§ = param3;
         this.§`+§ = param4;
         this.§&! § = param5;
         if(false)
         {
            this.§7!3§ = Math.max(1,Math.ceil(§!!X§.length / this.§#9§));
         }
         else
         {
            this.§7!3§ = 1;
            if(§!!X§.length > this.§#9§)
            {
               this.§7!3§ += Math.ceil((§!!X§.length - this.§#9§) / (this.§46§ * this.§%l§));
            }
         }
         this.§&!A§(0);
      }
      
      public function §&!A§(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.§7!3§)
         {
            param1 = this.§7!3§ - 1;
         }
         this.§#z§ = param1;
         var _loc2_:int = this.§#z§ * this.§%l§ * this.§46§;
         var _loc3_:int = _loc2_ + this.§#9§;
         var _loc4_:int = 0;
         while(_loc4_ < §!!X§.length)
         {
            (§!!X§[_loc4_] as § ^§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.§1E§ - this.§#z§ * this.§`+§;
         y = this.§&!5§ - this.§#z§ * this.§&! §;
      }
   }
}
