package §#!P§
{
   import §!!B§.b2World;
   import §3E§.§6w§;
   import §7u§.Sprite;
   
   public class §1f§ extends §`v§
   {
       
      
      private var §7!`§:Number = -1;
      
      private var §;p§:Number = -1;
      
      public function §1f§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§#A§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§"e§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§!N§)
         {
            this.§"e§(0);
         }
         else if(this.§7!`§ > 0)
         {
            _loc1_ = this.§7!`§ / this.§;p§;
            this.§;p§ = 0;
            this.§7!`§ = this.§;p§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§!N§)
         {
            super.activateSpecialPower(null);
            this.§"e§();
         }
         return _loc7_;
      }
      
      public function §"e§(param1:Number = -1) : void
      {
         this.§7!`§ = 0;
         if(param1 == 0)
         {
            this.§;p§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§;p§ = param1;
         }
         else
         {
            this.§;p§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7!`§ >= 0)
         {
            this.§7!`§ += param1;
            if(this.§7!`§ >= this.§;p§)
            {
               container.addExplosions(§@N§.§&g§,§84§().GetPosition().x,§84§().GetPosition().y);
               this.§7!`§ = -1;
            }
            §7!V§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§!N§ && this.§7!`§ < 0)
         {
            return true;
         }
         if(this.§7!`§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7!`§ > 0)
         {
            return this.§7!`§ / this.§;p§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§7!`§ > 0)
         {
            return this.§;p§ - this.§7!`§;
         }
         return 0;
      }
   }
}
