package §finally§
{
   import §"o§.§ M§;
   import §@!=§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §&!G§ extends §5!$§
   {
       
      
      private var §5!%§:Number = -1;
      
      private var §<!$§:Number = -1;
      
      public function §&!G§(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§3X§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§ R§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§?!B§)
         {
            this.§ R§(0);
         }
         else if(this.§5!%§ > 0)
         {
            _loc1_ = this.§5!%§ / this.§<!$§;
            this.§<!$§ = 0;
            this.§5!%§ = this.§<!$§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§?!B§)
         {
            super.activateSpecialPower(null);
            this.§ R§();
         }
         return _loc7_;
      }
      
      public function § R§(param1:Number = -1) : void
      {
         this.§5!%§ = 0;
         if(param1 == 0)
         {
            this.§<!$§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§<!$§ = param1;
         }
         else
         {
            this.§<!$§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§5!%§ >= 0)
         {
            this.§5!%§ += param1;
            if(this.§5!%§ >= this.§<!$§)
            {
               container.addExplosions(§=%§.§"L§,§+!-§().GetPosition().x,§+!-§().GetPosition().y);
               this.§5!%§ = -1;
            }
            §`N§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§?!B§ && this.§5!%§ < 0)
         {
            return true;
         }
         if(this.§5!%§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§5!%§ > 0)
         {
            return this.§5!%§ / this.§<!$§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§5!%§ > 0)
         {
            return this.§<!$§ - this.§5!%§;
         }
         return 0;
      }
   }
}
