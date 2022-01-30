package §4!#§
{
   import §&!M§.b2World;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   
   public class §=§ extends §@!m§
   {
       
      
      private var §9"9§:Number = -1;
      
      private var §#B§:Number = -1;
      
      public function §=§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§[R§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§0!!§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§3!b§)
         {
            this.§0!!§(0);
         }
         else if(this.§9"9§ > 0)
         {
            _loc1_ = this.§9"9§ / this.§#B§;
            this.§#B§ = 0;
            this.§9"9§ = this.§#B§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§3!b§)
         {
            super.activateSpecialPower(null);
            this.§0!!§();
         }
         return _loc7_;
      }
      
      public function §0!!§(param1:Number = -1) : void
      {
         this.§9"9§ = 0;
         if(param1 == 0)
         {
            this.§#B§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§#B§ = param1;
         }
         else
         {
            this.§#B§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§9"9§ >= 0)
         {
            this.§9"9§ += param1;
            if(this.§9"9§ >= this.§#B§)
            {
               container.addExplosions(§]!v§.§"w§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§9"9§ = -1;
            }
            §'L§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§3!b§ && this.§9"9§ < 0)
         {
            return true;
         }
         if(this.§9"9§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§9"9§ > 0)
         {
            return this.§9"9§ / this.§#B§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§9"9§ > 0)
         {
            return this.§#B§ - this.§9"9§;
         }
         return 0;
      }
   }
}
