package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §`w§.b2World;
   
   public class §%d§ extends §3L§
   {
       
      
      private var §^!V§:Number = -1;
      
      private var §%!s§:Number = -1;
      
      public function §%d§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§#!y§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§?!?§)
         {
            this.§#!y§(0);
         }
         else if(this.§^!V§ > 0)
         {
            _loc1_ = this.§^!V§ / this.§%!s§;
            this.§%!s§ = 0;
            this.§^!V§ = this.§%!s§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§?!?§)
         {
            super.activateSpecialPower(null);
            this.§#!y§();
         }
         return _loc7_;
      }
      
      public function §#!y§(param1:Number = -1) : void
      {
         this.§^!V§ = 0;
         if(param1 == 0)
         {
            this.§%!s§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§%!s§ = param1;
         }
         else
         {
            this.§%!s§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§^!V§ >= 0)
         {
            this.§^!V§ += param1;
            if(this.§^!V§ >= this.§%!s§)
            {
               §;H§.addExplosions(§=N§.§ w§,§5b§().GetPosition().x,§5b§().GetPosition().y);
               this.§^!V§ = -1;
            }
            §&=§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§?!?§ && this.§^!V§ < 0)
         {
            return true;
         }
         if(this.§^!V§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§^!V§ > 0)
         {
            return this.§^!V§ / this.§%!s§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§^!V§ > 0)
         {
            return this.§%!s§ - this.§^!V§;
         }
         return 0;
      }
   }
}
