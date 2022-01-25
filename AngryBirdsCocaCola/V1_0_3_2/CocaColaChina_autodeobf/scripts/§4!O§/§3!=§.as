package §4!O§
{
   import §5!?§.§>"§;
   import §;t§.Sprite;
   import §=!U§.b2World;
   
   public class §3!=§ extends §9T§
   {
       
      
      private var §^!b§:Number = -1;
      
      private var §,^§:Number = -1;
      
      public function §3!=§(param1:§+K§, param2:Sprite, param3:b2World, param4:§>"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§+K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§6r§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§]!'§)
         {
            this.§6r§(0);
         }
         else if(this.§^!b§ > 0)
         {
            _loc1_ = this.§^!b§ / this.§,^§;
            this.§,^§ = 0;
            this.§^!b§ = this.§,^§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§]!'§)
         {
            super.activateSpecialPower(null);
            this.§6r§();
         }
         return _loc7_;
      }
      
      public function §6r§(param1:Number = -1) : void
      {
         this.§^!b§ = 0;
         if(param1 == 0)
         {
            this.§,^§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§,^§ = param1;
         }
         else
         {
            this.§,^§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§^!b§ >= 0)
         {
            this.§^!b§ += param1;
            if(this.§^!b§ >= this.§,^§)
            {
               container.addExplosions(§1!Q§.§4!+§,§?!7§().GetPosition().x,§?!7§().GetPosition().y);
               this.§^!b§ = -1;
            }
            §]!=§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§]!'§ && this.§^!b§ < 0)
         {
            return true;
         }
         if(this.§^!b§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§^!b§ > 0)
         {
            return this.§^!b§ / this.§,^§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§^!b§ > 0)
         {
            return this.§,^§ - this.§^!b§;
         }
         return 0;
      }
   }
}
