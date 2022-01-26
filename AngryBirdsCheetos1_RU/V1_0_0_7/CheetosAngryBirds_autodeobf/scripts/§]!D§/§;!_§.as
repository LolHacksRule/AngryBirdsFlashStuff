package §]!D§
{
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   
   public class §;!_§ extends §,!@§
   {
       
      
      private var §7!N§:Number = -1;
      
      private var §&!O§:Number = -1;
      
      public function §;!_§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!9§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.dynamic(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§-g§)
         {
            this.dynamic(0);
         }
         else if(this.§7!N§ > 0)
         {
            _loc1_ = this.§7!N§ / this.§&!O§;
            this.§&!O§ = 0;
            this.§7!N§ = this.§&!O§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§-g§)
         {
            super.activateSpecialPower(null);
            this.dynamic();
         }
         return _loc7_;
      }
      
      public function dynamic(param1:Number = -1) : void
      {
         this.§7!N§ = 0;
         if(param1 == 0)
         {
            this.§&!O§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§&!O§ = param1;
         }
         else
         {
            this.§&!O§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7!N§ >= 0)
         {
            this.§7!N§ += param1;
            if(this.§7!N§ >= this.§&!O§)
            {
               container.addExplosions(§"$§.§[!M§,§^!_§().GetPosition().x,§^!_§().GetPosition().y);
               this.§7!N§ = -1;
            }
            §<!§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§-g§ && this.§7!N§ < 0)
         {
            return true;
         }
         if(this.§7!N§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7!N§ > 0)
         {
            return this.§7!N§ / this.§&!O§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§7!N§ > 0)
         {
            return this.§&!O§ - this.§7!N§;
         }
         return 0;
      }
   }
}
