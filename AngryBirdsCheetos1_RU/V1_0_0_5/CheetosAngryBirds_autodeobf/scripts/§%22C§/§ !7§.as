package §"C§
{
   import §%b§.§0!Z§;
   import §[W§.b2World;
   import §null §.Sprite;
   
   public class § !7§ extends §'!+§
   {
       
      
      private var §%[§:Number = -1;
      
      private var §2^§:Number = -1;
      
      public function § !7§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§7s§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§?![§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§[p§)
         {
            this.§?![§(0);
         }
         else if(this.§%[§ > 0)
         {
            _loc1_ = this.§%[§ / this.§2^§;
            this.§2^§ = 0;
            this.§%[§ = this.§2^§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§[p§)
         {
            super.activateSpecialPower(null);
            this.§?![§();
         }
         return _loc7_;
      }
      
      public function §?![§(param1:Number = -1) : void
      {
         this.§%[§ = 0;
         if(param1 == 0)
         {
            this.§2^§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§2^§ = param1;
         }
         else
         {
            this.§2^§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§%[§ >= 0)
         {
            this.§%[§ += param1;
            if(this.§%[§ >= this.§2^§)
            {
               container.addExplosions(§]%§.§1w§,§?@§().GetPosition().x,§?@§().GetPosition().y);
               this.§%[§ = -1;
            }
            §!t§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§[p§ && this.§%[§ < 0)
         {
            return true;
         }
         if(this.§%[§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§%[§ > 0)
         {
            return this.§%[§ / this.§2^§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§%[§ > 0)
         {
            return this.§2^§ - this.§%[§;
         }
         return 0;
      }
   }
}
