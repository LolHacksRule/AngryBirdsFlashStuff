package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §[P§ extends §8j§
   {
       
      
      private var §=d§:Number = -1;
      
      private var §#!>§:Number = -1;
      
      public function §[P§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§5!0§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§=t§)
         {
            this.§5!0§(0);
         }
         else if(this.§=d§ > 0)
         {
            _loc1_ = this.§=d§ / this.§#!>§;
            this.§#!>§ = 0;
            this.§=d§ = this.§#!>§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§=t§)
         {
            super.activateSpecialPower(null);
            this.§5!0§();
         }
         return _loc7_;
      }
      
      public function §5!0§(param1:Number = -1) : void
      {
         this.§=d§ = 0;
         if(param1 == 0)
         {
            this.§#!>§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§#!>§ = param1;
         }
         else
         {
            this.§#!>§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§=d§ >= 0)
         {
            this.§=d§ += param1;
            if(this.§=d§ >= this.§#!>§)
            {
               container.addExplosions(§5<§.§#n§,§?n§().GetPosition().x,§?n§().GetPosition().y);
               this.§=d§ = -1;
            }
            §>;§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§=t§ && this.§=d§ < 0)
         {
            return true;
         }
         if(this.§=d§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§=d§ > 0)
         {
            return this.§=d§ / this.§#!>§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§=d§ > 0)
         {
            return this.§#!>§ - this.§=d§;
         }
         return 0;
      }
   }
}
