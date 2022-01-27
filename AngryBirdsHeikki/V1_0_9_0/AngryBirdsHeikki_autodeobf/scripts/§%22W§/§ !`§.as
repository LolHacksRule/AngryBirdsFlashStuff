package §"W§
{
   import § d§.§'!"§;
   import §#!f§.Sprite;
   import §^!Z§.b2World;
   
   public class § !`§ extends §7!6§
   {
       
      
      private var §3!^§:Number = -1;
      
      private var §7!d§:Number = -1;
      
      public function § !`§(param1:§?!T§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!T§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§6"§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§]!V§)
         {
            this.§6"§(0);
         }
         else if(this.§3!^§ > 0)
         {
            _loc1_ = this.§3!^§ / this.§7!d§;
            this.§7!d§ = 0;
            this.§3!^§ = this.§7!d§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§]!V§)
         {
            super.activateSpecialPower(null);
            this.§6"§();
         }
         return _loc7_;
      }
      
      public function §6"§(param1:Number = -1) : void
      {
         this.§3!^§ = 0;
         if(param1 == 0)
         {
            this.§7!d§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§7!d§ = param1;
         }
         else
         {
            this.§7!d§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§3!^§ >= 0)
         {
            this.§3!^§ += param1;
            if(this.§3!^§ >= this.§7!d§)
            {
               container.addExplosions(§<!#§.§`k§,§"!H§().GetPosition().x,§"!H§().GetPosition().y);
               this.§3!^§ = -1;
            }
            §@h§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§]!V§ && this.§3!^§ < 0)
         {
            return true;
         }
         if(this.§3!^§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§3!^§ > 0)
         {
            return this.§3!^§ / this.§7!d§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§3!^§ > 0)
         {
            return this.§7!d§ - this.§3!^§;
         }
         return 0;
      }
   }
}
