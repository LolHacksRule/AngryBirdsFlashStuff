package §'_§
{
   import § !k§.b2World;
   import §3,§.§[!;§;
   import §]&§.Sprite;
   
   public class §2j§ extends §5!P§
   {
       
      
      private var §&!s§:Number = -1;
      
      private var §1U§:Number = -1;
      
      public function §2j§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§=!&§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§5Q§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§ p§)
         {
            this.§5Q§(0);
         }
         else if(this.§&!s§ > 0)
         {
            _loc1_ = this.§&!s§ / this.§1U§;
            this.§1U§ = 0;
            this.§&!s§ = this.§1U§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§ p§)
         {
            super.activateSpecialPower(null);
            this.§5Q§();
         }
         return _loc7_;
      }
      
      public function §5Q§(param1:Number = -1) : void
      {
         this.§&!s§ = 0;
         if(param1 == 0)
         {
            this.§1U§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§1U§ = param1;
         }
         else
         {
            this.§1U§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§&!s§ >= 0)
         {
            this.§&!s§ += param1;
            if(this.§&!s§ >= this.§1U§)
            {
               §7!>§.addExplosions(§7!E§.§4"&§,§2"7§().GetPosition().x,§2"7§().GetPosition().y);
               this.§&!s§ = -1;
            }
            §6"%§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§ p§ && this.§&!s§ < 0)
         {
            return true;
         }
         if(this.§&!s§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&!s§ > 0)
         {
            return this.§&!s§ / this.§1U§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§&!s§ > 0)
         {
            return this.§1U§ - this.§&!s§;
         }
         return 0;
      }
   }
}
