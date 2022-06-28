package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §9E§.Sprite;
   
   public class §,u§ extends §4J§
   {
       
      
      private var §4Y§:Number = -1;
      
      private var §@-§:Number = -1;
      
      public function §,u§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§[?§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§-!R§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§6V§)
         {
            this.§-!R§(0);
         }
         else if(this.§4Y§ > 0)
         {
            _loc1_ = this.§4Y§ / this.§@-§;
            this.§@-§ = 0;
            this.§4Y§ = this.§@-§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§6V§)
         {
            super.activateSpecialPower(null);
            this.§-!R§();
         }
         return _loc7_;
      }
      
      public function §-!R§(param1:Number = -1) : void
      {
         this.§4Y§ = 0;
         if(param1 == 0)
         {
            this.§@-§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§@-§ = param1;
         }
         else
         {
            this.§@-§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§4Y§ >= 0)
         {
            this.§4Y§ += param1;
            if(this.§4Y§ >= this.§@-§)
            {
               §>&§.addExplosions(§1! §.§2!w§,§+$§().GetPosition().x,§+$§().GetPosition().y);
               this.§4Y§ = -1;
            }
            §%m§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§6V§ && this.§4Y§ < 0)
         {
            return true;
         }
         if(this.§4Y§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§4Y§ > 0)
         {
            return this.§4Y§ / this.§@-§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§4Y§ > 0)
         {
            return this.§@-§ - this.§4Y§;
         }
         return 0;
      }
   }
}
