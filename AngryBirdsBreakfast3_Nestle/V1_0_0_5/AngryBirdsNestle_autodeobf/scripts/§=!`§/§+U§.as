package §=!`§
{
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   
   public class §+U§ extends §6!-§
   {
      
      private static const §',§:int = 2000;
       
      
      private var §,!W§:Number = -1;
      
      private var static:Number = -1;
      
      private var §%!H§:Boolean = false;
      
      public function §+U§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§%!H§;
      }
      
      override public function activateSpecialPower(param1:§'`§, param2:Number, param3:Number) : Boolean
      {
         if(§0#§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§-1§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§'`§, param3:§^^§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§-1§(§',§,param2);
         }
         return _loc5_;
      }
      
      protected function §-1§(param1:Number, param2:§'`§) : void
      {
         if(param1 != 0 && this.static > 0)
         {
            return;
         }
         this.§,!W§ = 0;
         if(param1 == 0)
         {
            this.static = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.static = param1;
         }
         else
         {
            this.static = §',§;
         }
      }
      
      override public function update(param1:Number, param2:§'`§) : void
      {
         super.update(param1,param2);
         if(this.§,!W§ >= 0)
         {
            this.§,!W§ += param1;
            if(this.§,!W§ >= this.static)
            {
               this.§%!H§ = true;
               this.§,!W§ = -1;
               param2.§=P§(§,F§.§+!q§,§^",§().GetPosition().x,§^",§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§,!W§ < 0)
         {
            return true;
         }
         if(this.§,!W§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,!W§ > 0)
         {
            return this.§,!W§ / this.static;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§?,§ || this.static > 0;
      }
   }
}
