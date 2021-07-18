package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   
   public class §7Y§ extends §`!O§
   {
       
      
      private var §><§:Number = -1;
      
      private var §6!]§:Number = -1;
      
      public function §7Y§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§9R§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§!!M§)
         {
            this.§9R§(0);
         }
         else if(this.§><§ > 0)
         {
            _loc1_ = this.§><§ / this.§6!]§;
            this.§6!]§ = 0;
            this.§><§ = this.§6!]§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§!!M§)
         {
            super.activateSpecialPower(null);
            this.§9R§();
         }
         return _loc7_;
      }
      
      public function §9R§(param1:Number = -1) : void
      {
         this.§><§ = 0;
         if(param1 == 0)
         {
            this.§6!]§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§6!]§ = param1;
         }
         else
         {
            this.§6!]§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§><§ >= 0)
         {
            this.§><§ += param1;
            if(this.§><§ >= this.§6!]§)
            {
               container.addExplosions(§2!5§.§"9§,§0c§().GetPosition().x,§0c§().GetPosition().y);
               this.§><§ = -1;
            }
            §"!^§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§!!M§ && this.§><§ < 0)
         {
            return true;
         }
         if(this.§><§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§><§ > 0)
         {
            return this.§><§ / this.§6!]§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§><§ > 0)
         {
            return this.§6!]§ - this.§><§;
         }
         return 0;
      }
   }
}
