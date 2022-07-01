package §@"1§
{
   import §'w§.§ !7§;
   
   public class §!<§
   {
      
      protected static const §]"'§:Number = 1000 / 60;
       
      
      protected var §8!i§:Number = 0;
      
      protected var §-T§:Number = 0;
      
      protected var §3!N§:Number = 0;
      
      protected var §9,§:Number = 0;
      
      protected var §%1§:Number = 0;
      
      protected var §?!Z§:Number = 0;
      
      protected var §#u§:Number = 0;
      
      public function §!<§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§3!N§ = param1;
         this.§9,§ = param2;
         this.§?!Z§ = param1;
         this.§#u§ = param2;
         this.§8!i§ = 0;
         this.§-T§ = 0;
         this.§%1§ = param3;
      }
      
      public function §3d§(param1:§ !7§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8!i§ < this.§%1§)
         {
            this.§8!i§ += param2;
            this.§-T§ += this.§3!N§;
            _loc3_ = param2 / §]"'§ * this.§9,§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§-T§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§9,§ -= param2 / this.§%1§ * this.§#u§;
            this.§3!N§ -= param2 / this.§%1§ * this.§?!Z§;
            param1.§!!X§(_loc4_,_loc5_);
            param1.§#!X§();
            return true;
         }
         return false;
      }
   }
}
