package §3p§
{
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §3l§ extends §4!G§
   {
       
      
      private var §"!f§:Number = -1;
      
      private var §>!'§:Number = -1;
      
      public function §3l§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§2!a§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§2s§)
         {
            this.§2!a§(0);
         }
         else if(this.§"!f§ > 0)
         {
            _loc1_ = this.§"!f§ / this.§>!'§;
            this.§>!'§ = 0;
            this.§"!f§ = this.§>!'§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§2s§)
         {
            super.activateSpecialPower(null);
            this.§2!a§();
         }
         return _loc7_;
      }
      
      public function §2!a§(param1:Number = -1) : void
      {
         this.§"!f§ = 0;
         if(param1 == 0)
         {
            this.§>!'§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§>!'§ = param1;
         }
         else
         {
            this.§>!'§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§"!f§ >= 0)
         {
            this.§"!f§ += param1;
            if(this.§"!f§ >= this.§>!'§)
            {
               container.addExplosions(§#!f§.§[!>§,§9f§().GetPosition().x,§9f§().GetPosition().y);
               this.§"!f§ = -1;
            }
            §"]§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§2s§ && this.§"!f§ < 0)
         {
            return true;
         }
         if(this.§"!f§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§"!f§ > 0)
         {
            return this.§"!f§ / this.§>!'§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§"!f§ > 0)
         {
            return this.§>!'§ - this.§"!f§;
         }
         return 0;
      }
   }
}
