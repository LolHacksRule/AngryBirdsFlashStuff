package §^$1§
{
   import §+!C§.§!!S§;
   import §7"&§.§?"B§;
   
   public class §7" §
   {
       
      
      protected var §?!l§:Number;
      
      protected var §`"T§:Number;
      
      private var §&W§:Number;
      
      private var §&"G§:Number;
      
      private var §"o§:Number;
      
      private var §9"7§:Number;
      
      protected var §;"A§:Number;
      
      private var §6!;§:Number;
      
      protected var § "A§:Number;
      
      private var §&"q§:Number;
      
      private var §'"p§:Number;
      
      private var §9"o§:Boolean = true;
      
      private var §9!o§:Number;
      
      private var §3!!§:Number;
      
      public function §7" §(param1:Number, param2:Number, param3:Number, param4:§?"B§, param5:Number = 1)
      {
         super();
         this.§?!l§ = param1;
         this.§`"T§ = param2;
         this.§;"A§ = this.§5#'§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§;"A§ += param3;
         }
         this.§6!;§ = this.§5#'§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§5#'§(param4.minVel,param4.maxVel) / 1000 * §!!S§.§,"3§;
         this.§&W§ = Math.cos(this.§;"A§) * _loc6_;
         this.§&"G§ = Math.sin(this.§;"A§) * _loc6_;
         this.§&"q§ = this.§5#'§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§'"p§ = this.§5#'§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§ "A§ = this.§&"q§;
         this.§"o§ = param4.gravityX / 1000000 * §!!S§.§,"3§;
         this.§9"7§ = param4.gravityY / 1000000 * §!!S§.§,"3§;
         this.§3!!§ = param4.lifeTime * 1000;
         this.§9!o§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§9"o§;
      }
      
      public function get §`"b§() : Number
      {
         return this.§9!o§;
      }
      
      public function get §&#,§() : Number
      {
         return this.§3!!§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§&W§ += this.§"o§ * param1;
         this.§&"G§ += this.§9"7§ * param1;
         this.§?!l§ += this.§&W§ * param1;
         this.§`"T§ += this.§&"G§ * param1;
         if(this.§9!o§ < this.§3!!§)
         {
            this.§ "A§ = this.§&"q§ + (this.§'"p§ - this.§&"q§) * (this.§9!o§ / this.§3!!§);
         }
         else
         {
            this.§ "A§ = this.§'"p§;
         }
         this.§;"A§ += this.§6!;§ * param1;
         this.§9!o§ += param1;
         if(this.§9!o§ >= this.§3!!§)
         {
            this.§9"o§ = false;
         }
         return this.§9"o§;
      }
      
      protected function §5#'§(param1:Number, param2:Number) : Number
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
