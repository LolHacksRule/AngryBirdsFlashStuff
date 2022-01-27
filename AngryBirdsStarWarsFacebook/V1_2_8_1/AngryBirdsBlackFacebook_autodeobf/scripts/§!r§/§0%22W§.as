package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §0"W§ extends §;!T§
   {
      
      private static const §!!p§:int = 2000;
       
      
      private var §>V§:Number = -1;
      
      private var §&k§:Number = -1;
      
      private var §-!]§:Boolean = false;
      
      public function §0"W§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§-!]§;
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         if(§[X§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§`b§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§`b§(§!!p§,param2);
         }
         return _loc5_;
      }
      
      protected function §`b§(param1:Number, param2:§'=§) : void
      {
         if(param1 != 0 && this.§&k§ > 0)
         {
            return;
         }
         this.§>V§ = 0;
         if(param1 == 0)
         {
            this.§&k§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§&k§ = param1;
         }
         else
         {
            this.§&k§ = §!!p§;
         }
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(this.§>V§ >= 0)
         {
            this.§>V§ += param1;
            if(this.§>V§ >= this.§&k§)
            {
               this.§-!]§ = true;
               this.§>V§ = -1;
               param2.§6!C§(§3c§.§=3§,§3"s§().GetPosition().x,§3"s§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§>V§ < 0)
         {
            return true;
         }
         if(this.§>V§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§>V§ > 0)
         {
            return this.§>V§ / this.§&k§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §[X§ || this.§&k§ > 0;
      }
   }
}
