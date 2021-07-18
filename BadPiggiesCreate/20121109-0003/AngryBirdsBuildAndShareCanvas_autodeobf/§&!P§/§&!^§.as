package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §]§.§?h§;
   
   public class §&!^§ extends §9`§
   {
       
      
      private var §7s§:Number = -1;
      
      private var §2y§:Number = -1;
      
      public function §&!^§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§8!k§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§+^§)
         {
            this.§8!k§(0);
         }
         else if(this.§7s§ > 0)
         {
            _loc1_ = this.§7s§ / this.§2y§;
            this.§2y§ = 0;
            this.§7s§ = this.§2y§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§+^§)
         {
            super.activateSpecialPower(null);
            this.§8!k§();
         }
         return _loc7_;
      }
      
      public function §8!k§(param1:Number = -1) : void
      {
         this.§7s§ = 0;
         if(param1 == 0)
         {
            this.§2y§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§2y§ = param1;
         }
         else
         {
            this.§2y§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7s§ >= 0)
         {
            this.§7s§ += param1;
            if(this.§7s§ >= this.§2y§)
            {
               container.addExplosions(§=!Y§.§;+§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§7s§ = -1;
               §?h§.§^I§(false);
            }
            §[r§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§+^§ && this.§7s§ < 0)
         {
            return true;
         }
         if(this.§7s§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7s§ > 0)
         {
            return this.§7s§ / this.§2y§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§7s§ > 0)
         {
            return this.§2y§ - this.§7s§;
         }
         return 0;
      }
   }
}
