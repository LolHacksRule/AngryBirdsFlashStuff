package §;z§
{
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §4!&§.b2World;
   
   public class §<1§ extends §=P§
   {
       
      
      private var §+!G§:Number = -1;
      
      private var §>!B§:Number = -1;
      
      public function §<1§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]!N§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§3!W§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§%Z§)
         {
            this.§3!W§(0);
         }
         else if(this.§+!G§ > 0)
         {
            _loc1_ = this.§+!G§ / this.§>!B§;
            this.§>!B§ = 0;
            this.§+!G§ = this.§>!B§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§%Z§)
         {
            super.activateSpecialPower(null);
            this.§3!W§();
         }
         return _loc7_;
      }
      
      public function §3!W§(param1:Number = -1) : void
      {
         this.§+!G§ = 0;
         if(param1 == 0)
         {
            this.§>!B§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§>!B§ = param1;
         }
         else
         {
            this.§>!B§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§+!G§ >= 0)
         {
            this.§+!G§ += param1;
            if(this.§+!G§ >= this.§>!B§)
            {
               container.addExplosions(§4!#§.§[!A§,§^!V§().GetPosition().x,§^!V§().GetPosition().y);
               this.§+!G§ = -1;
            }
            §8X§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§%Z§ && this.§+!G§ < 0)
         {
            return true;
         }
         if(this.§+!G§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§+!G§ > 0)
         {
            return this.§+!G§ / this.§>!B§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§+!G§ > 0)
         {
            return this.§>!B§ - this.§+!G§;
         }
         return 0;
      }
   }
}
