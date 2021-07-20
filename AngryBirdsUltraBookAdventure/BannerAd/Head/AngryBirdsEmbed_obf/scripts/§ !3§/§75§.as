package § !3§
{
   import §%-§.Sprite;
   import §%x§.§#;§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §75§ extends §1?§
   {
       
      
      private var §+k§:Number = -1;
      
      private var §`T§:Number = -1;
      
      public function §75§(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]!9§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§?$§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§`'§)
         {
            this.§?$§(0);
         }
         else if(this.§+k§ > 0)
         {
            _loc1_ = this.§+k§ / this.§`T§;
            this.§`T§ = 0;
            this.§+k§ = this.§`T§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§`'§)
         {
            super.activateSpecialPower(null);
            this.§?$§();
         }
         return _loc7_;
      }
      
      public function §?$§(param1:Number = -1) : void
      {
         this.§+k§ = 0;
         if(param1 == 0)
         {
            this.§`T§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§`T§ = param1;
         }
         else
         {
            this.§`T§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§+k§ >= 0)
         {
            this.§+k§ += param1;
            if(this.§+k§ >= this.§`T§)
            {
               container.addExplosions(§,-§.§?7§,§9! §().GetPosition().x,§9! §().GetPosition().y);
               this.§+k§ = -1;
            }
            §9-§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§`'§ && this.§+k§ < 0)
         {
            return true;
         }
         if(this.§+k§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§+k§ > 0)
         {
            return this.§+k§ / this.§`T§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§+k§ > 0)
         {
            return this.§`T§ - this.§+k§;
         }
         return 0;
      }
   }
}
