package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   
   public class § v§ extends §6",§
   {
      
      private static const §;!@§:int = 2000;
       
      
      private var §7`§:Number = -1;
      
      private var §,!,§:Number = -1;
      
      private var §10§:Boolean = false;
      
      public function § v§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§10§;
      }
      
      override public function activateSpecialPower(param1:§?N§, param2:Number, param3:Number) : Boolean
      {
         if(§>!?§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§!`§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§?N§, param3:§;;§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§!`§(§;!@§,param2);
         }
         return _loc5_;
      }
      
      protected function §!`§(param1:Number, param2:§?N§) : void
      {
         if(param1 != 0 && this.§,!,§ > 0)
         {
            return;
         }
         this.§7`§ = 0;
         if(param1 == 0)
         {
            this.§,!,§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§,!,§ = param1;
         }
         else
         {
            this.§,!,§ = §;!@§;
         }
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         super.update(param1,param2);
         if(this.§7`§ >= 0)
         {
            this.§7`§ += param1;
            if(this.§7`§ >= this.§,!,§)
            {
               this.§10§ = true;
               this.§7`§ = -1;
               param2.§`!0§(§]D§.§&!d§,§ 2§().GetPosition().x,§ 2§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§7`§ < 0)
         {
            return true;
         }
         if(this.§7`§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7`§ > 0)
         {
            return this.§7`§ / this.§,!,§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§[!s§ || this.§,!,§ > 0;
      }
   }
}
