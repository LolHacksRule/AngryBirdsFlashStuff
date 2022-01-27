package §5!q§
{
   import §5i§.§+M§;
   
   public class §["J§
   {
      
      protected static const §;!"§:Number = 1000 / 60;
       
      
      protected var §^"+§:Number = 0;
      
      protected var §?u§:Number = 0;
      
      protected var §@"2§:Number = 0;
      
      protected var §'!@§:Number = 0;
      
      protected var §&!Y§:Number = 0;
      
      protected var §9!7§:Number = 0;
      
      protected var §7a§:Number = 0;
      
      public function §["J§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§@"2§ = param1;
         this.§'!@§ = param2;
         this.§9!7§ = param1;
         this.§7a§ = param2;
         this.§^"+§ = 0;
         this.§?u§ = 0;
         this.§&!Y§ = param3;
      }
      
      public function §3!H§(param1:§+M§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§^"+§ < this.§&!Y§)
         {
            this.§^"+§ += param2;
            this.§?u§ += this.§@"2§;
            _loc3_ = param2 / §;!"§ * this.§'!@§;
            _loc4_ = _loc3_ * Math.sin(Math.PI / 4 + this.§?u§ * 2 * Math.PI);
            _loc5_ = _loc3_ * (Math.random() - 0.5);
            this.§'!@§ -= param2 / this.§&!Y§ * this.§7a§;
            this.§@"2§ -= param2 / this.§&!Y§ * this.§9!7§;
            param1.§,#&§(_loc4_,_loc5_);
            param1.§switch§();
            return true;
         }
         return false;
      }
   }
}
