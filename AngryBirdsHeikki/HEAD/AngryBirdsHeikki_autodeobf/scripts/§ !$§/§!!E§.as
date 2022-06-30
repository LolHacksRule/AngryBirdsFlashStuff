package § !$§
{
   import §+d§.b2World;
   import §,!V§.§<!?§;
   import §6!;§.Sprite;
   import §9!'§.§0!%§;
   
   public class §!!E§ extends §2!J§
   {
       
      
      private var §,f§:Number = -1;
      
      private var §<!2§:Number = -1;
      
      public function §!!E§(param1:§7!!§, param2:Sprite, param3:b2World, param4:§0!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§7!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§95§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§?!>§)
         {
            this.§95§(0);
         }
         else if(this.§,f§ > 0)
         {
            _loc1_ = this.§,f§ / this.§<!2§;
            this.§<!2§ = 0;
            this.§,f§ = this.§<!2§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§?!>§)
         {
            super.activateSpecialPower(null);
            this.§95§();
         }
         return _loc7_;
      }
      
      public function §95§(param1:Number = -1) : void
      {
         this.§,f§ = 0;
         if(param1 == 0)
         {
            this.§<!2§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§<!2§ = param1;
         }
         else
         {
            this.§<!2§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§,f§ >= 0)
         {
            this.§,f§ += param1;
            if(this.§,f§ >= this.§<!2§)
            {
               container.addExplosions(§4!<§.§=!D§,§]!2§().GetPosition().x,§]!2§().GetPosition().y);
               this.§,f§ = -1;
               §<!?§.§"!N§(false);
            }
            §%?§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§?!>§ && this.§,f§ < 0)
         {
            return true;
         }
         if(this.§,f§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,f§ > 0)
         {
            return this.§,f§ / this.§<!2§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§,f§ > 0)
         {
            return this.§<!2§ - this.§,f§;
         }
         return 0;
      }
   }
}
