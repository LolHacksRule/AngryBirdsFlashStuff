package §5!L§
{
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §<L§.§!!G§;
   
   public class §@!%§ extends §1L§
   {
       
      
      private var §0!N§:Number = -1;
      
      private var §4`§:Number = -1;
      
      public function §@!%§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?8§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§>$§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§=!h§)
         {
            this.§>$§(0);
         }
         else if(this.§0!N§ > 0)
         {
            _loc1_ = this.§0!N§ / this.§4`§;
            this.§4`§ = 0;
            this.§0!N§ = this.§4`§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§=!h§)
         {
            super.activateSpecialPower(null);
            this.§>$§();
         }
         return _loc7_;
      }
      
      public function §>$§(param1:Number = -1) : void
      {
         this.§0!N§ = 0;
         if(param1 == 0)
         {
            this.§4`§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§4`§ = param1;
         }
         else
         {
            this.§4`§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§0!N§ >= 0)
         {
            this.§0!N§ += param1;
            if(this.§0!N§ >= this.§4`§)
            {
               container.addExplosions(§6c§.§[I§,§;G§().GetPosition().x,§;G§().GetPosition().y);
               this.§0!N§ = -1;
            }
            §,!Y§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§=!h§ && this.§0!N§ < 0)
         {
            return true;
         }
         if(this.§0!N§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§0!N§ > 0)
         {
            return this.§0!N§ / this.§4`§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§0!N§ > 0)
         {
            return this.§4`§ - this.§0!N§;
         }
         return 0;
      }
   }
}
