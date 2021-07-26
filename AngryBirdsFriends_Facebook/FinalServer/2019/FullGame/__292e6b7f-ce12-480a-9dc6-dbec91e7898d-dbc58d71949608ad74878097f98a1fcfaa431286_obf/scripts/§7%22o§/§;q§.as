package §7"o§
{
   import §#g§.§8§;
   import §8#K§.§@"M§;
   
   public class §;q§
   {
       
      
      protected var §&$'§:Number;
      
      protected var §<#-§:Number;
      
      private var §8"k§:Number;
      
      private var §extends§:Number;
      
      private var §&"y§:Number;
      
      private var §7"`§:Number;
      
      protected var §"$#§:Number;
      
      private var §^!@§:Number;
      
      protected var §#!1§:Number;
      
      private var §5#l§:Number;
      
      private var §!m§:Number;
      
      private var §!!C§:Boolean = true;
      
      private var §^#'§:Number;
      
      private var §,#$§:Number;
      
      public function §;q§(param1:Number, param2:Number, param3:Number, param4:§@"M§, param5:Number = 1)
      {
         super();
         this.§&$'§ = param1;
         this.§<#-§ = param2;
         this.§"$#§ = this.§?y§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§"$#§ += param3;
         }
         this.§^!@§ = this.§?y§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§?y§(param4.minVel,param4.maxVel) / 1000 * §8#3§.§2K§;
         this.§8"k§ = Math.cos(this.§"$#§) * _loc6_;
         this.§extends§ = Math.sin(this.§"$#§) * _loc6_;
         this.§5#l§ = this.§?y§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§!m§ = this.§?y§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§#!1§ = this.§5#l§;
         this.§&"y§ = param4.gravityX / 1000000 * §8#3§.§2K§;
         this.§7"`§ = param4.gravityY / 1000000 * §8#3§.§2K§;
         this.§,#$§ = param4.lifeTime * 1000;
         this.§^#'§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§!!C§;
      }
      
      public function get §1!j§() : Number
      {
         return this.§^#'§;
      }
      
      public function get §;#T§() : Number
      {
         return this.§,#$§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§8"k§ += this.§&"y§ * param1;
         this.§extends§ += this.§7"`§ * param1;
         this.§&$'§ += this.§8"k§ * param1;
         this.§<#-§ += this.§extends§ * param1;
         if(this.§^#'§ < this.§,#$§)
         {
            this.§#!1§ = this.§5#l§ + (this.§!m§ - this.§5#l§) * (this.§^#'§ / this.§,#$§);
         }
         else
         {
            this.§#!1§ = this.§!m§;
         }
         this.§"$#§ += this.§^!@§ * param1;
         this.§^#'§ += param1;
         if(this.§^#'§ >= this.§,#$§)
         {
            this.§!!C§ = false;
         }
         return this.§!!C§;
      }
      
      protected function §?y§(param1:Number, param2:Number) : Number
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
