package §7"p§
{
   import §>2§.§!6§;
   import §?$<§.§[S§;
   
   public class §2!<§
   {
       
      
      protected var §["d§:Number;
      
      protected var §%#z§:Number;
      
      private var §3#h§:Number;
      
      private var §4"u§:Number;
      
      private var §for§:Number;
      
      private var §#'§:Number;
      
      protected var §9"c§:Number;
      
      private var §+#j§:Number;
      
      protected var §5>§:Number;
      
      private var §3!i§:Number;
      
      private var §!b§:Number;
      
      private var §4"'§:Boolean = true;
      
      private var §-!N§:Number;
      
      private var §9"t§:Number;
      
      public function §2!<§(param1:Number, param2:Number, param3:Number, param4:§[S§, param5:Number = 1)
      {
         super();
         this.§["d§ = param1;
         this.§%#z§ = param2;
         this.§9"c§ = this.§4#>§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§9"c§ += param3;
         }
         this.§+#j§ = this.§4#>§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§4#>§(param4.minVel,param4.maxVel) / 1000 * §!6§.§[#v§;
         this.§3#h§ = Math.cos(this.§9"c§) * _loc6_;
         this.§4"u§ = Math.sin(this.§9"c§) * _loc6_;
         this.§3!i§ = this.§4#>§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§!b§ = this.§4#>§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§5>§ = this.§3!i§;
         this.§for§ = param4.gravityX / 1000000 * §!6§.§[#v§;
         this.§#'§ = param4.gravityY / 1000000 * §!6§.§[#v§;
         this.§9"t§ = param4.lifeTime * 1000;
         this.§-!N§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§4"'§;
      }
      
      public function get §7$;§() : Number
      {
         return this.§-!N§;
      }
      
      public function get §>!,§() : Number
      {
         return this.§9"t§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§3#h§ += this.§for§ * param1;
         this.§4"u§ += this.§#'§ * param1;
         this.§["d§ += this.§3#h§ * param1;
         this.§%#z§ += this.§4"u§ * param1;
         if(this.§-!N§ < this.§9"t§)
         {
            this.§5>§ = this.§3!i§ + (this.§!b§ - this.§3!i§) * (this.§-!N§ / this.§9"t§);
         }
         else
         {
            this.§5>§ = this.§!b§;
         }
         this.§9"c§ += this.§+#j§ * param1;
         this.§-!N§ += param1;
         if(this.§-!N§ >= this.§9"t§)
         {
            this.§4"'§ = false;
         }
         return this.§4"'§;
      }
      
      protected function §4#>§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
