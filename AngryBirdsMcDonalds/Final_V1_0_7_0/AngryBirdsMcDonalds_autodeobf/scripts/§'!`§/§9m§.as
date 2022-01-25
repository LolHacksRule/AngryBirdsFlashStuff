package §'!`§
{
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   
   public class §9m§ extends §3C§
   {
       
      
      private var §3!,§:Number = -1;
      
      private var §9!!§:Number = -1;
      
      public function §9m§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§for§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§%X§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§%!Y§)
         {
            this.§%X§(0);
         }
         else if(this.§3!,§ > 0)
         {
            _loc1_ = this.§3!,§ / this.§9!!§;
            this.§9!!§ = 0;
            this.§3!,§ = this.§9!!§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§%!Y§)
         {
            super.activateSpecialPower(null);
            this.§%X§();
         }
         return _loc7_;
      }
      
      public function §%X§(param1:Number = -1) : void
      {
         this.§3!,§ = 0;
         if(param1 == 0)
         {
            this.§9!!§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§9!!§ = param1;
         }
         else
         {
            this.§9!!§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§3!,§ >= 0)
         {
            this.§3!,§ += param1;
            if(this.§3!,§ >= this.§9!!§)
            {
               container.addExplosions(§6!5§.§%!=§,§&!p§().GetPosition().x,§&!p§().GetPosition().y);
               this.§3!,§ = -1;
            }
            §9H§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%!Y§ && this.§3!,§ < 0)
         {
            return true;
         }
         if(this.§3!,§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§3!,§ > 0)
         {
            return this.§3!,§ / this.§9!!§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§3!,§ > 0)
         {
            return this.§9!!§ - this.§3!,§;
         }
         return 0;
      }
   }
}
