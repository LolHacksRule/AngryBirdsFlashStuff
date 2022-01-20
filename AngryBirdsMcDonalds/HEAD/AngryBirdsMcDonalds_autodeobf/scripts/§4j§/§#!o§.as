package §4j§
{
   import § !J§.§%M§;
   import §-h§.§ use§;
   import §8T§.b2World;
   import §`!n§.Sprite;
   
   public class §#!o§ extends §@!K§
   {
       
      
      private var §#S§:Number = -1;
      
      private var §8!%§:Number = -1;
      
      public function §#!o§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§0K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§-!]§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§8![§)
         {
            this.§-!]§(0);
         }
         else if(this.§#S§ > 0)
         {
            _loc1_ = this.§#S§ / this.§8!%§;
            this.§8!%§ = 0;
            this.§#S§ = this.§8!%§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§8![§)
         {
            super.activateSpecialPower(null);
            this.§-!]§();
         }
         return _loc7_;
      }
      
      public function §-!]§(param1:Number = -1) : void
      {
         this.§#S§ = 0;
         if(param1 == 0)
         {
            this.§8!%§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§8!%§ = param1;
         }
         else
         {
            this.§8!%§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§#S§ >= 0)
         {
            this.§#S§ += param1;
            if(this.§#S§ >= this.§8!%§)
            {
               container.addExplosions(§%!?§.§9T§,§3H§().GetPosition().x,§3H§().GetPosition().y);
               this.§#S§ = -1;
               § use§.§]![§(false);
            }
            §-8§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8![§ && this.§#S§ < 0)
         {
            return true;
         }
         if(this.§#S§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§#S§ > 0)
         {
            return this.§#S§ / this.§8!%§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§#S§ > 0)
         {
            return this.§8!%§ - this.§#S§;
         }
         return 0;
      }
   }
}
