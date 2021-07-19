package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §'!R§ extends §^"2§
   {
      
      private static const §9E§:int = 2000;
       
      
      private var §<6§:Number = -1;
      
      private var §#"4§:Number = -1;
      
      private var §-!1§:Boolean = false;
      
      public function §'!R§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§-!1§;
      }
      
      override public function activateSpecialPower(param1:§`!m§, param2:Number, param3:Number) : Boolean
      {
         if(§#!G§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§@p§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§@p§(§9E§,param2);
         }
         return _loc5_;
      }
      
      protected function §@p§(param1:Number, param2:§`!m§) : void
      {
         if(param1 != 0 && this.§#"4§ > 0)
         {
            return;
         }
         this.§<6§ = 0;
         if(param1 == 0)
         {
            this.§#"4§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§#"4§ = param1;
         }
         else
         {
            this.§#"4§ = §9E§;
         }
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         super.update(param1,param2);
         if(this.§<6§ >= 0)
         {
            this.§<6§ += param1;
            if(this.§<6§ >= this.§#"4§)
            {
               this.§-!1§ = true;
               this.§<6§ = -1;
               param2.§<!Q§(§=q§.§?[§,§!!I§().GetPosition().x,§!!I§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§<6§ < 0)
         {
            return true;
         }
         if(this.§<6§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§<6§ > 0)
         {
            return this.§<6§ / this.§#"4§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §#!G§ || this.§#"4§ > 0;
      }
   }
}
