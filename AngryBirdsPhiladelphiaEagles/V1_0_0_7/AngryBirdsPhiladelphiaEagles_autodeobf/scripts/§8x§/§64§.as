package §8x§
{
   import §,!F§.§#§;
   import §4G§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §64§ extends § %§
   {
       
      
      private var §07§:Number = -1;
      
      private var §with§:Number = -1;
      
      public function §64§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>A§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§%7§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§%!3§)
         {
            this.§%7§(0);
         }
         else if(this.§07§ > 0)
         {
            _loc1_ = this.§07§ / this.§with§;
            this.§with§ = 0;
            this.§07§ = this.§with§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§%!3§)
         {
            super.activateSpecialPower(null);
            this.§%7§();
         }
         return _loc7_;
      }
      
      public function §%7§(param1:Number = -1) : void
      {
         this.§07§ = 0;
         if(param1 == 0)
         {
            this.§with§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§with§ = param1;
         }
         else
         {
            this.§with§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§07§ >= 0)
         {
            this.§07§ += param1;
            if(this.§07§ >= this.§with§)
            {
               container.addExplosions(§>+§.§2!K§,§]!7§().GetPosition().x,§]!7§().GetPosition().y);
               this.§07§ = -1;
            }
            §`-§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%!3§ && this.§07§ < 0)
         {
            return true;
         }
         if(this.§07§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§07§ > 0)
         {
            return this.§07§ / this.§with§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§07§ > 0)
         {
            return this.§with§ - this.§07§;
         }
         return 0;
      }
   }
}
