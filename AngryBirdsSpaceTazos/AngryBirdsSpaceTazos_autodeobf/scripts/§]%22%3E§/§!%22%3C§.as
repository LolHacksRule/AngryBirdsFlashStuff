package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §!"<§ extends § 6§
   {
      
      private static const §0V§:int = 2000;
       
      
      private var §^">§:Number = -1;
      
      private var §?K§:Number = -1;
      
      private var §+t§:Boolean = false;
      
      public function §!"<§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§+t§;
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(§?!d§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§@"%§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§@"%§(§0V§,param2);
         }
         return _loc5_;
      }
      
      protected function §@"%§(param1:Number, param2:§;U§) : void
      {
         this.§^">§ = 0;
         if(param1 == 0)
         {
            this.§?K§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§?K§ = param1;
         }
         else
         {
            this.§?K§ = §0V§;
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(this.§^">§ >= 0)
         {
            this.§^">§ += param1;
            if(this.§^">§ >= this.§?K§)
            {
               this.§+t§ = true;
               this.§^">§ = -1;
               param2.§>"'§(§5&§.§=z§,§^!z§().GetPosition().x,§^!z§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§^">§ < 0)
         {
            return true;
         }
         if(this.§^">§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§^">§ > 0)
         {
            return this.§^">§ / this.§?K§;
         }
         return -1;
      }
   }
}
