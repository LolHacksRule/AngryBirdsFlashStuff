package §?!§
{
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   
   public class §8!_§ extends §]!%§
   {
       
      
      private var §1E§:Number = -1;
      
      private var §"[§:Number = -1;
      
      public function §8!_§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§>!4§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§^!l§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§'!$§)
         {
            this.§^!l§(0);
         }
         else if(this.§1E§ > 0)
         {
            _loc1_ = this.§1E§ / this.§"[§;
            this.§"[§ = 0;
            this.§1E§ = this.§"[§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§'!$§)
         {
            super.activateSpecialPower(null);
            this.§^!l§();
         }
         return _loc7_;
      }
      
      public function §^!l§(param1:Number = -1) : void
      {
         this.§1E§ = 0;
         if(param1 == 0)
         {
            this.§"[§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§"[§ = param1;
         }
         else
         {
            this.§"[§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§1E§ >= 0)
         {
            this.§1E§ += param1;
            if(this.§1E§ >= this.§"[§)
            {
               container.addExplosions(§5!$§.§<%§,§2!!§().GetPosition().x,§2!!§().GetPosition().y);
               this.§1E§ = -1;
            }
            §,!Z§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§'!$§ && this.§1E§ < 0)
         {
            return true;
         }
         if(this.§1E§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§1E§ > 0)
         {
            return this.§1E§ / this.§"[§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§1E§ > 0)
         {
            return this.§"[§ - this.§1E§;
         }
         return 0;
      }
   }
}
