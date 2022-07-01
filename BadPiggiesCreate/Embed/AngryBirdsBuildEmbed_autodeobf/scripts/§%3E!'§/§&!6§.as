package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   
   public class §&!6§ extends §7!U§
   {
       
      
      private var §#!D§:Number = -1;
      
      private var §0f§:Number = -1;
      
      public function §&!6§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§continue§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§6!i§)
         {
            this.§continue§(0);
         }
         else if(this.§#!D§ > 0)
         {
            _loc1_ = this.§#!D§ / this.§0f§;
            this.§0f§ = 0;
            this.§#!D§ = this.§0f§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§6!i§)
         {
            super.activateSpecialPower(null);
            this.§continue§();
         }
         return _loc7_;
      }
      
      public function §continue§(param1:Number = -1) : void
      {
         this.§#!D§ = 0;
         if(param1 == 0)
         {
            this.§0f§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§0f§ = param1;
         }
         else
         {
            this.§0f§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§#!D§ >= 0)
         {
            this.§#!D§ += param1;
            if(this.§#!D§ >= this.§0f§)
            {
               container.addExplosions(§'T§.§'&§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§#!D§ = -1;
            }
            §[W§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§6!i§ && this.§#!D§ < 0)
         {
            return true;
         }
         if(this.§#!D§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§#!D§ > 0)
         {
            return this.§#!D§ / this.§0f§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§#!D§ > 0)
         {
            return this.§0f§ - this.§#!D§;
         }
         return 0;
      }
   }
}
