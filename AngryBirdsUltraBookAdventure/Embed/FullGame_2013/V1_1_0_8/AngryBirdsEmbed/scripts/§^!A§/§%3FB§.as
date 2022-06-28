package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import §>!7§.§@!+§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §?B§ extends §^`§
   {
       
      
      private var §9z§:Number = -1;
      
      private var §9#§:Number = -1;
      
      public function §?B§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§?_§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§[!E§)
         {
            this.§?_§(0);
         }
         else if(this.§9z§ > 0)
         {
            _loc1_ = this.§9z§ / this.§9#§;
            this.§9#§ = 0;
            this.§9z§ = this.§9#§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§[!E§)
         {
            super.activateSpecialPower(null);
            this.§?_§();
         }
         return _loc7_;
      }
      
      public function §?_§(param1:Number = -1) : void
      {
         this.§9z§ = 0;
         if(param1 == 0)
         {
            this.§9#§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§9#§ = param1;
         }
         else
         {
            this.§9#§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§9z§ >= 0)
         {
            this.§9z§ += param1;
            if(this.§9z§ >= this.§9#§)
            {
               container.addExplosions(§[!N§.§]!7§,§'[§().GetPosition().x,§'[§().GetPosition().y);
               this.§9z§ = -1;
               §@!+§.§`Z§(false);
            }
            §[!D§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§[!E§ && this.§9z§ < 0)
         {
            return true;
         }
         if(this.§9z§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§9z§ > 0)
         {
            return this.§9z§ / this.§9#§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§9z§ > 0)
         {
            return this.§9#§ - this.§9z§;
         }
         return 0;
      }
   }
}
