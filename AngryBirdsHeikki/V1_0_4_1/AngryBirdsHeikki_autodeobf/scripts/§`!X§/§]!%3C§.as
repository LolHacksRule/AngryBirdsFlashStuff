package §`!X§
{
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §^!7§.§^A§;
   
   public class §]!<§ extends §>K§
   {
       
      
      private var §9!,§:Number = -1;
      
      private var §>L§:Number = -1;
      
      public function §]!<§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§@!^§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§!,§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§'!8§)
         {
            this.§!,§(0);
         }
         else if(this.§9!,§ > 0)
         {
            _loc1_ = this.§9!,§ / this.§>L§;
            this.§>L§ = 0;
            this.§9!,§ = this.§>L§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§'!8§)
         {
            super.activateSpecialPower(null);
            this.§!,§();
         }
         return _loc7_;
      }
      
      public function §!,§(param1:Number = -1) : void
      {
         this.§9!,§ = 0;
         if(param1 == 0)
         {
            this.§>L§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§>L§ = param1;
         }
         else
         {
            this.§>L§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§9!,§ >= 0)
         {
            this.§9!,§ += param1;
            if(this.§9!,§ >= this.§>L§)
            {
               container.addExplosions(§0+§.§;w§,§1!E§().GetPosition().x,§1!E§().GetPosition().y);
               this.§9!,§ = -1;
            }
            §<>§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§'!8§ && this.§9!,§ < 0)
         {
            return true;
         }
         if(this.§9!,§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§9!,§ > 0)
         {
            return this.§9!,§ / this.§>L§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§9!,§ > 0)
         {
            return this.§>L§ - this.§9!,§;
         }
         return 0;
      }
   }
}
