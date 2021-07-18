package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §implements§ extends §1!"§
   {
       
      
      private var §,!E§:Number = -1;
      
      private var §[t§:Number = -1;
      
      public function §implements§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§5x§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§ I§)
         {
            this.§5x§(0);
         }
         else if(this.§,!E§ > 0)
         {
            _loc1_ = this.§,!E§ / this.§[t§;
            this.§[t§ = 0;
            this.§,!E§ = this.§[t§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§ I§)
         {
            super.activateSpecialPower(null);
            this.§5x§();
         }
         return _loc7_;
      }
      
      public function §5x§(param1:Number = -1) : void
      {
         this.§,!E§ = 0;
         if(param1 == 0)
         {
            this.§[t§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§[t§ = param1;
         }
         else
         {
            this.§[t§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§,!E§ >= 0)
         {
            this.§,!E§ += param1;
            if(this.§,!E§ >= this.§[t§)
            {
               container.addExplosions(§%0§.§-W§,§`%§().GetPosition().x,§`%§().GetPosition().y);
               this.§,!E§ = -1;
            }
            §;Q§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§ I§ && this.§,!E§ < 0)
         {
            return true;
         }
         if(this.§,!E§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,!E§ > 0)
         {
            return this.§,!E§ / this.§[t§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§,!E§ > 0)
         {
            return this.§[t§ - this.§,!E§;
         }
         return 0;
      }
   }
}
