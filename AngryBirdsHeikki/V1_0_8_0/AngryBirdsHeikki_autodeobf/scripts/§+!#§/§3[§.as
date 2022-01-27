package §+!#§
{
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §=!E§.Sprite;
   
   public class §3[§ extends § q§
   {
       
      
      private var §@t§:Number = -1;
      
      private var §"O§:Number = -1;
      
      public function §3[§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§"!6§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§3W§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§#!S§)
         {
            this.§3W§(0);
         }
         else if(this.§@t§ > 0)
         {
            _loc1_ = this.§@t§ / this.§"O§;
            this.§"O§ = 0;
            this.§@t§ = this.§"O§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§#!S§)
         {
            super.activateSpecialPower(null);
            this.§3W§();
         }
         return _loc7_;
      }
      
      public function §3W§(param1:Number = -1) : void
      {
         this.§@t§ = 0;
         if(param1 == 0)
         {
            this.§"O§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§"O§ = param1;
         }
         else
         {
            this.§"O§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§@t§ >= 0)
         {
            this.§@t§ += param1;
            if(this.§@t§ >= this.§"O§)
            {
               container.addExplosions(§8&§.§]Q§,§[!H§().GetPosition().x,§[!H§().GetPosition().y);
               this.§@t§ = -1;
            }
            §3,§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§#!S§ && this.§@t§ < 0)
         {
            return true;
         }
         if(this.§@t§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§@t§ > 0)
         {
            return this.§@t§ / this.§"O§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§@t§ > 0)
         {
            return this.§"O§ - this.§@t§;
         }
         return 0;
      }
   }
}
