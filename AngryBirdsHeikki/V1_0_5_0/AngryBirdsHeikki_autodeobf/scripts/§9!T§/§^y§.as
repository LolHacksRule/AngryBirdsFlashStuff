package §9!T§
{
   import §+D§.§5!P§;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §^y§ extends §5g§
   {
       
      
      private var §4Z§:Number = -1;
      
      private var §6!M§:Number = -1;
      
      public function §^y§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§3B§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§,u§)
         {
            this.§3B§(0);
         }
         else if(this.§4Z§ > 0)
         {
            _loc1_ = this.§4Z§ / this.§6!M§;
            this.§6!M§ = 0;
            this.§4Z§ = this.§6!M§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§,u§)
         {
            super.activateSpecialPower(null);
            this.§3B§();
         }
         return _loc7_;
      }
      
      public function §3B§(param1:Number = -1) : void
      {
         this.§4Z§ = 0;
         if(param1 == 0)
         {
            this.§6!M§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§6!M§ = param1;
         }
         else
         {
            this.§6!M§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§4Z§ >= 0)
         {
            this.§4Z§ += param1;
            if(this.§4Z§ >= this.§6!M§)
            {
               container.addExplosions(§7!a§.§1!D§,§<k§().GetPosition().x,§<k§().GetPosition().y);
               this.§4Z§ = -1;
            }
            §0!D§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§,u§ && this.§4Z§ < 0)
         {
            return true;
         }
         if(this.§4Z§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§4Z§ > 0)
         {
            return this.§4Z§ / this.§6!M§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§4Z§ > 0)
         {
            return this.§6!M§ - this.§4Z§;
         }
         return 0;
      }
   }
}
