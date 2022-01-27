package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §&?§ extends §!!H§
   {
      
      private static const §<!p§:int = 2000;
       
      
      private var §&c§:Number = -1;
      
      private var §+"5§:Number = -1;
      
      private var §14§:Boolean = false;
      
      public function §&?§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§14§;
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         if(§8"?§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§]"F§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§]"F§(§<!p§,param2);
         }
         return _loc5_;
      }
      
      protected function §]"F§(param1:Number, param2:§0!s§) : void
      {
         this.§&c§ = 0;
         if(param1 == 0)
         {
            this.§+"5§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§+"5§ = param1;
         }
         else
         {
            this.§+"5§ = §<!p§;
         }
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(this.§&c§ >= 0)
         {
            this.§&c§ += param1;
            if(this.§&c§ >= this.§+"5§)
            {
               this.§14§ = true;
               this.§&c§ = -1;
               param2.§&k§(§8S§.§ t§,§`I§().GetPosition().x,§`I§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§&c§ < 0)
         {
            return true;
         }
         if(this.§&c§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&c§ > 0)
         {
            return this.§&c§ / this.§+"5§;
         }
         return -1;
      }
   }
}
