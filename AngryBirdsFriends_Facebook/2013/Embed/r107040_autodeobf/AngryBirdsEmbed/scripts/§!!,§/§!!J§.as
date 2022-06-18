package §!!,§
{
   import §#!@§.Sprite;
   import §3u§.§7b§;
   import §9s§.§^9§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §!!J§ extends §0!E§
   {
       
      
      private var §"!$§:Number = -1;
      
      private var §>o§:Number = -1;
      
      public function §!!J§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§^!0§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§+!@§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§-!A§)
         {
            this.§+!@§(0);
         }
         else if(this.§"!$§ > 0)
         {
            _loc1_ = this.§"!$§ / this.§>o§;
            this.§>o§ = 0;
            this.§"!$§ = this.§>o§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§-!A§)
         {
            super.activateSpecialPower(null);
            this.§+!@§();
         }
         return _loc7_;
      }
      
      public function §+!@§(param1:Number = -1) : void
      {
         this.§"!$§ = 0;
         if(param1 == 0)
         {
            this.§>o§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§>o§ = param1;
         }
         else
         {
            this.§>o§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§"!$§ >= 0)
         {
            this.§"!$§ += param1;
            if(this.§"!$§ >= this.§>o§)
            {
               container.addExplosions(§-n§.§='§,§ 7§().GetPosition().x,§ 7§().GetPosition().y);
               this.§"!$§ = -1;
               §7b§.§]J§(false);
            }
            §8w§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§-!A§ && this.§"!$§ < 0)
         {
            return true;
         }
         if(this.§"!$§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§"!$§ > 0)
         {
            return this.§"!$§ / this.§>o§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§"!$§ > 0)
         {
            return this.§>o§ - this.§"!$§;
         }
         return 0;
      }
   }
}
