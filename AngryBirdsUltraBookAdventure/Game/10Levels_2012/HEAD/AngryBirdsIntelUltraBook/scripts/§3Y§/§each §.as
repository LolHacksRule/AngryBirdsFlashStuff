package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?A§.LevelMain;
   
   public class §each § extends §[r§
   {
       
      
      private var §@#§:Number = -1;
      
      private var § 3§:Number = -1;
      
      public function §each §(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§<%§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§6!9§)
         {
            this.§<%§(0);
         }
         else if(this.§@#§ > 0)
         {
            _loc1_ = this.§@#§ / this.§ 3§;
            this.§ 3§ = 0;
            this.§@#§ = this.§ 3§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§6!9§)
         {
            super.activateSpecialPower(null);
            this.§<%§();
         }
         return _loc7_;
      }
      
      public function §<%§(param1:Number = -1) : void
      {
         this.§@#§ = 0;
         if(param1 == 0)
         {
            this.§ 3§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§ 3§ = param1;
         }
         else
         {
            this.§ 3§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§@#§ >= 0)
         {
            this.§@#§ += param1;
            if(this.§@#§ >= this.§ 3§)
            {
               container.addExplosions(§^!6§.§7#§,§8!N§().GetPosition().x,§8!N§().GetPosition().y);
               this.§@#§ = -1;
            }
            §&&§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§6!9§ && this.§@#§ < 0)
         {
            return true;
         }
         if(this.§@#§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§@#§ > 0)
         {
            return this.§@#§ / this.§ 3§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§@#§ > 0)
         {
            return this.§ 3§ - this.§@#§;
         }
         return 0;
      }
   }
}
