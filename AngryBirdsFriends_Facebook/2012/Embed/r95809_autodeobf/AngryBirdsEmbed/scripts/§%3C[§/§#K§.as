package §<[§
{
   import §+!%§.§'!"§;
   import §->§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#K§ extends §<!9§
   {
       
      
      private var §+$§:Number = -1;
      
      private var §3V§:Number = -1;
      
      public function §#K§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6q§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§?y§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§6X§)
         {
            this.§?y§(0);
         }
         else if(this.§+$§ > 0)
         {
            _loc1_ = this.§+$§ / this.§3V§;
            this.§3V§ = 0;
            this.§+$§ = this.§3V§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§6X§)
         {
            super.activateSpecialPower(null);
            this.§?y§();
         }
         return _loc7_;
      }
      
      public function §?y§(param1:Number = -1) : void
      {
         this.§+$§ = 0;
         if(param1 == 0)
         {
            this.§3V§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§3V§ = param1;
         }
         else
         {
            this.§3V§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§+$§ >= 0)
         {
            this.§+$§ += param1;
            if(this.§+$§ >= this.§3V§)
            {
               container.addExplosions(§=t§.§@K§,§27§().GetPosition().x,§27§().GetPosition().y);
               this.§+$§ = -1;
            }
            §'!?§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§6X§ && this.§+$§ < 0)
         {
            return true;
         }
         if(this.§+$§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§+$§ > 0)
         {
            return this.§+$§ / this.§3V§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§+$§ > 0)
         {
            return this.§3V§ - this.§+$§;
         }
         return 0;
      }
   }
}
