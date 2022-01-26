package §#v§
{
   import §!!R§.Sprite;
   import §?!0§.b2World;
   import §?'§.§9N§;
   
   public class §'`§ extends §!!!§
   {
       
      
      private var §]!$§:Number = -1;
      
      private var §70§:Number = -1;
      
      public function §'`§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§!_§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§@A§)
         {
            this.§!_§(0);
         }
         else if(this.§]!$§ > 0)
         {
            _loc1_ = this.§]!$§ / this.§70§;
            this.§70§ = 0;
            this.§]!$§ = this.§70§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§@A§)
         {
            super.activateSpecialPower(null);
            this.§!_§();
         }
         return _loc7_;
      }
      
      public function §!_§(param1:Number = -1) : void
      {
         this.§]!$§ = 0;
         if(param1 == 0)
         {
            this.§70§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§70§ = param1;
         }
         else
         {
            this.§70§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§]!$§ >= 0)
         {
            this.§]!$§ += param1;
            if(this.§]!$§ >= this.§70§)
            {
               container.addExplosions(§!v§.§6!1§,§#a§().GetPosition().x,§#a§().GetPosition().y);
               this.§]!$§ = -1;
            }
            §9K§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§@A§ && this.§]!$§ < 0)
         {
            return true;
         }
         if(this.§]!$§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§]!$§ > 0)
         {
            return this.§]!$§ / this.§70§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§]!$§ > 0)
         {
            return this.§70§ - this.§]!$§;
         }
         return 0;
      }
   }
}
