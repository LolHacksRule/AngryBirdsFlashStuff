package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2World;
   
   public class §&,§ extends § !§
   {
      
      private static const §'Z§:int = 2000;
       
      
      private var §&!w§:Number = -1;
      
      private var §;"-§:Number = -1;
      
      private var §1!U§:Boolean = false;
      
      public function §&,§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§1!U§;
      }
      
      override public function activateSpecialPower(param1:§!l§, param2:Number, param3:Number) : Boolean
      {
         if(§&!J§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§[!^§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§!l§, param3:§[-§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§[!^§(§'Z§,param2);
         }
         return _loc5_;
      }
      
      protected function §[!^§(param1:Number, param2:§!l§) : void
      {
         if(param1 != 0 && this.§;"-§ > 0)
         {
            return;
         }
         this.§&!w§ = 0;
         if(param1 == 0)
         {
            this.§;"-§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§;"-§ = param1;
         }
         else
         {
            this.§;"-§ = §'Z§;
         }
      }
      
      override public function update(param1:Number, param2:§!l§) : void
      {
         super.update(param1,param2);
         if(this.§&!w§ >= 0)
         {
            this.§&!w§ += param1;
            if(this.§&!w§ >= this.§;"-§)
            {
               this.§1!U§ = true;
               this.§&!w§ = -1;
               param2.§4!K§(§,m§.§=?§,§9l§().GetPosition().x,§9l§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§&!w§ < 0)
         {
            return true;
         }
         if(this.§&!w§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&!w§ > 0)
         {
            return this.§&!w§ / this.§;"-§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§6"§ || this.§;"-§ > 0;
      }
   }
}
