package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   
   public class §#v§ extends §#!v§
   {
      
      private static const §&2§:int = 2000;
       
      
      private var §?!u§:Number = -1;
      
      private var §6!d§:Number = -1;
      
      private var §4!g§:Boolean = false;
      
      public function §#v§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§4!g§;
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(§!!K§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§>!y§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§>!y§(§&2§,param2);
         }
         return _loc5_;
      }
      
      protected function §>!y§(param1:Number, param2:§class§) : void
      {
         this.§?!u§ = 0;
         if(param1 == 0)
         {
            this.§6!d§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§6!d§ = param1;
         }
         else
         {
            this.§6!d§ = §&2§;
         }
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(this.§?!u§ >= 0)
         {
            this.§?!u§ += param1;
            if(this.§?!u§ >= this.§6!d§)
            {
               this.§4!g§ = true;
               this.§?!u§ = -1;
               param2.§%n§(§7!+§.§""G§,§ <§().GetPosition().x,§ <§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§?!u§ < 0)
         {
            return true;
         }
         if(this.§?!u§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§?!u§ > 0)
         {
            return this.§?!u§ / this.§6!d§;
         }
         return -1;
      }
   }
}
