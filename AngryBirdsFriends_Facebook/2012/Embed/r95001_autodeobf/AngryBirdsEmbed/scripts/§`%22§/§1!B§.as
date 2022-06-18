package §`"§
{
   import §9!?§.§^]§;
   import §<k§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1!B§ extends §&>§
   {
       
      
      private var §#!$§:Number = -1;
      
      private var §`q§:Number = -1;
      
      public function §1!B§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!;§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§,d§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§->§)
         {
            this.§,d§(0);
         }
         else if(this.§#!$§ > 0)
         {
            _loc1_ = this.§#!$§ / this.§`q§;
            this.§`q§ = 0;
            this.§#!$§ = this.§`q§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§->§)
         {
            super.activateSpecialPower(null);
            this.§,d§();
         }
         return _loc7_;
      }
      
      public function §,d§(param1:Number = -1) : void
      {
         this.§#!$§ = 0;
         if(param1 == 0)
         {
            this.§`q§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§`q§ = param1;
         }
         else
         {
            this.§`q§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§#!$§ >= 0)
         {
            this.§#!$§ += param1;
            if(this.§#!$§ >= this.§`q§)
            {
               container.addExplosions(§1p§.§1[§,§]d§().GetPosition().x,§]d§().GetPosition().y);
               this.§#!$§ = -1;
            }
            §??§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§->§ && this.§#!$§ < 0)
         {
            return true;
         }
         if(this.§#!$§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§#!$§ > 0)
         {
            return this.§#!$§ / this.§`q§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§#!$§ > 0)
         {
            return this.§`q§ - this.§#!$§;
         }
         return 0;
      }
   }
}
