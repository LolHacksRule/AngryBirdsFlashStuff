package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   
   public class §,!6§ extends §0d§
   {
       
      
      private var §=!k§:Number = -1;
      
      private var §9b§:Number = -1;
      
      public function §,!6§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§'Y§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§9!J§)
         {
            this.§'Y§(0);
         }
         else if(this.§=!k§ > 0)
         {
            _loc1_ = this.§=!k§ / this.§9b§;
            this.§9b§ = 0;
            this.§=!k§ = this.§9b§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§9!J§)
         {
            super.activateSpecialPower(null);
            this.§'Y§();
         }
         return _loc7_;
      }
      
      public function §'Y§(param1:Number = -1) : void
      {
         this.§=!k§ = 0;
         if(param1 == 0)
         {
            this.§9b§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§9b§ = param1;
         }
         else
         {
            this.§9b§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§=!k§ >= 0)
         {
            this.§=!k§ += param1;
            if(this.§=!k§ >= this.§9b§)
            {
               §]1§.addExplosions(§9#§.§,!>§,§3J§().GetPosition().x,§3J§().GetPosition().y);
               this.§=!k§ = -1;
            }
            §&V§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§9!J§ && this.§=!k§ < 0)
         {
            return true;
         }
         if(this.§=!k§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§=!k§ > 0)
         {
            return this.§=!k§ / this.§9b§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§=!k§ > 0)
         {
            return this.§9b§ - this.§=!k§;
         }
         return 0;
      }
   }
}
