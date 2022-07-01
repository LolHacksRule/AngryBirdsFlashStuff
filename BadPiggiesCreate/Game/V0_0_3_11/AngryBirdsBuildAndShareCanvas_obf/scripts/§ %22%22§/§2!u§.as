package § ""§
{
   import §1!Y§.Sprite;
   import §1!v§.§@%§;
   import §7z§.b2World;
   
   public class §2!u§ extends §0"2§
   {
       
      
      private var §,!h§:Number = -1;
      
      private var §2K§:Number = -1;
      
      public function §2!u§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6!u§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§'!@§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§>!d§)
         {
            this.§'!@§(0);
         }
         else if(this.§,!h§ > 0)
         {
            _loc1_ = this.§,!h§ / this.§2K§;
            this.§2K§ = 0;
            this.§,!h§ = this.§2K§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§>!d§)
         {
            super.activateSpecialPower(null);
            this.§'!@§();
         }
         return _loc7_;
      }
      
      public function §'!@§(param1:Number = -1) : void
      {
         this.§,!h§ = 0;
         if(param1 == 0)
         {
            this.§2K§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§2K§ = param1;
         }
         else
         {
            this.§2K§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§,!h§ >= 0)
         {
            this.§,!h§ += param1;
            if(this.§,!h§ >= this.§2K§)
            {
               container.addExplosions(§]x§.§6!g§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§,!h§ = -1;
            }
            §+"1§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§>!d§ && this.§,!h§ < 0)
         {
            return true;
         }
         if(this.§,!h§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,!h§ > 0)
         {
            return this.§,!h§ / this.§2K§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§,!h§ > 0)
         {
            return this.§2K§ - this.§,!h§;
         }
         return 0;
      }
   }
}
