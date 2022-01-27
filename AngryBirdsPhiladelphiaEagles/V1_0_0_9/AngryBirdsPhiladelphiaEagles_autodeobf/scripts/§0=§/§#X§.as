package §0=§
{
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#X§ extends §&!Q§
   {
       
      
      private var §0!M§:Number = -1;
      
      private var §6P§:Number = -1;
      
      public function §#X§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6!M§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§&C§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§%#§)
         {
            this.§&C§(0);
         }
         else if(this.§0!M§ > 0)
         {
            _loc1_ = this.§0!M§ / this.§6P§;
            this.§6P§ = 0;
            this.§0!M§ = this.§6P§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§%#§)
         {
            super.activateSpecialPower(null);
            this.§&C§();
         }
         return _loc7_;
      }
      
      public function §&C§(param1:Number = -1) : void
      {
         this.§0!M§ = 0;
         if(param1 == 0)
         {
            this.§6P§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§6P§ = param1;
         }
         else
         {
            this.§6P§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§0!M§ >= 0)
         {
            this.§0!M§ += param1;
            if(this.§0!M§ >= this.§6P§)
            {
               container.addExplosions(§9!E§.§5N§,§;!M§().GetPosition().x,§;!M§().GetPosition().y);
               this.§0!M§ = -1;
            }
            §=!3§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%#§ && this.§0!M§ < 0)
         {
            return true;
         }
         if(this.§0!M§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§0!M§ > 0)
         {
            return this.§0!M§ / this.§6P§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§0!M§ > 0)
         {
            return this.§6P§ - this.§0!M§;
         }
         return 0;
      }
   }
}
