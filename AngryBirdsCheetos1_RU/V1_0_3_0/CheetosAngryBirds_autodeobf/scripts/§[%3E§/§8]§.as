package §[>§
{
   import §4]§.b2World;
   import §9!a§.Sprite;
   import §9T§.§=!^§;
   
   public class §8]§ extends §;J§
   {
       
      
      private var §1q§:Number = -1;
      
      private var §?!-§:Number = -1;
      
      public function §8]§(param1:§'!'§, param2:Sprite, param3:b2World, param4:§=!^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'!'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§=!T§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§`!K§)
         {
            this.§=!T§(0);
         }
         else if(this.§1q§ > 0)
         {
            _loc1_ = this.§1q§ / this.§?!-§;
            this.§?!-§ = 0;
            this.§1q§ = this.§?!-§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§`!K§)
         {
            super.activateSpecialPower(null);
            this.§=!T§();
         }
         return _loc7_;
      }
      
      public function §=!T§(param1:Number = -1) : void
      {
         this.§1q§ = 0;
         if(param1 == 0)
         {
            this.§?!-§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§?!-§ = param1;
         }
         else
         {
            this.§?!-§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§1q§ >= 0)
         {
            this.§1q§ += param1;
            if(this.§1q§ >= this.§?!-§)
            {
               container.addExplosions(§5!$§.§,W§,§7!<§().GetPosition().x,§7!<§().GetPosition().y);
               this.§1q§ = -1;
            }
            §>!G§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§`!K§ && this.§1q§ < 0)
         {
            return true;
         }
         if(this.§1q§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§1q§ > 0)
         {
            return this.§1q§ / this.§?!-§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§1q§ > 0)
         {
            return this.§?!-§ - this.§1q§;
         }
         return 0;
      }
   }
}
