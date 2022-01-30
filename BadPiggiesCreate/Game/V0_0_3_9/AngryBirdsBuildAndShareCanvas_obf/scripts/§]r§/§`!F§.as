package §]r§
{
   import §7q§.Sprite;
   import §=9§.b2World;
   import §=b§.§-!K§;
   
   public class §`!F§ extends §<!$§
   {
       
      
      private var §@!o§:Number = -1;
      
      private var §`A§:Number = -1;
      
      public function §`!F§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§2"%§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§2q§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§!!K§)
         {
            this.§2q§(0);
         }
         else if(this.§@!o§ > 0)
         {
            _loc1_ = this.§@!o§ / this.§`A§;
            this.§`A§ = 0;
            this.§@!o§ = this.§`A§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§!!K§)
         {
            super.activateSpecialPower(null);
            this.§2q§();
         }
         return _loc7_;
      }
      
      public function §2q§(param1:Number = -1) : void
      {
         this.§@!o§ = 0;
         if(param1 == 0)
         {
            this.§`A§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§`A§ = param1;
         }
         else
         {
            this.§`A§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§@!o§ >= 0)
         {
            this.§@!o§ += param1;
            if(this.§@!o§ >= this.§`A§)
            {
               container.addExplosions(§8T§.§!%§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§@!o§ = -1;
            }
            §^"0§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§!!K§ && this.§@!o§ < 0)
         {
            return true;
         }
         if(this.§@!o§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§@!o§ > 0)
         {
            return this.§@!o§ / this.§`A§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§@!o§ > 0)
         {
            return this.§`A§ - this.§@!o§;
         }
         return 0;
      }
   }
}
