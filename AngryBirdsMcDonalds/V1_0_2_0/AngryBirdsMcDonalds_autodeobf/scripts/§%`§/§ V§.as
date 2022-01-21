package §%`§
{
   import §'a§.§0!f§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   
   public class § V§ extends override
   {
       
      
      private var §9l§:Number = -1;
      
      private var §"!?§:Number = -1;
      
      public function § V§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§,!k§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§?!m§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§0C§)
         {
            this.§?!m§(0);
         }
         else if(this.§9l§ > 0)
         {
            _loc1_ = this.§9l§ / this.§"!?§;
            this.§"!?§ = 0;
            this.§9l§ = this.§"!?§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§0C§)
         {
            super.activateSpecialPower(null);
            this.§?!m§();
         }
         return _loc7_;
      }
      
      public function §?!m§(param1:Number = -1) : void
      {
         this.§9l§ = 0;
         if(param1 == 0)
         {
            this.§"!?§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§"!?§ = param1;
         }
         else
         {
            this.§"!?§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§9l§ >= 0)
         {
            this.§9l§ += param1;
            if(this.§9l§ >= this.§"!?§)
            {
               container.addExplosions(§]!I§.§!>§,§%9§().GetPosition().x,§%9§().GetPosition().y);
               this.§9l§ = -1;
            }
            §`&§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§0C§ && this.§9l§ < 0)
         {
            return true;
         }
         if(this.§9l§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§9l§ > 0)
         {
            return this.§9l§ / this.§"!?§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§9l§ > 0)
         {
            return this.§"!?§ - this.§9l§;
         }
         return 0;
      }
   }
}
