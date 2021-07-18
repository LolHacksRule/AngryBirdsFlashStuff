package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §`a§.Sprite;
   
   public class §]!$§ extends §^!1§
   {
       
      
      private var §70§:Number = -1;
      
      private var §!_§:Number = -1;
      
      public function §]!$§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§=!>§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§]Z§)
         {
            this.§=!>§(0);
         }
         else if(this.§70§ > 0)
         {
            _loc1_ = this.§70§ / this.§!_§;
            this.§!_§ = 0;
            this.§70§ = this.§!_§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§]Z§)
         {
            super.activateSpecialPower(null);
            this.§=!>§();
         }
         return _loc7_;
      }
      
      public function §=!>§(param1:Number = -1) : void
      {
         this.§70§ = 0;
         if(param1 == 0)
         {
            this.§!_§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§!_§ = param1;
         }
         else
         {
            this.§!_§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§70§ >= 0)
         {
            this.§70§ += param1;
            if(this.§70§ >= this.§!_§)
            {
               container.addExplosions(§?L§.§8Z§,§`!#§().GetPosition().x,§`!#§().GetPosition().y);
               this.§70§ = -1;
            }
            §5-§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§]Z§ && this.§70§ < 0)
         {
            return true;
         }
         if(this.§70§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§70§ > 0)
         {
            return this.§70§ / this.§!_§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§70§ > 0)
         {
            return this.§!_§ - this.§70§;
         }
         return 0;
      }
   }
}
