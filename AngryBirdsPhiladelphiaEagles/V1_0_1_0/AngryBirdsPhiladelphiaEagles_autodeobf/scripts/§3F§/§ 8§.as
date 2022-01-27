package §3F§
{
   import §3H§.Sprite;
   import §>2§.§4h§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § 8§ extends §=4§
   {
       
      
      private var §!!D§:Number = -1;
      
      private var §&!0§:Number = -1;
      
      public function § 8§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§0z§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§9!P§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§"i§)
         {
            this.§9!P§(0);
         }
         else if(this.§!!D§ > 0)
         {
            _loc1_ = this.§!!D§ / this.§&!0§;
            this.§&!0§ = 0;
            this.§!!D§ = this.§&!0§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§"i§)
         {
            super.activateSpecialPower(null);
            this.§9!P§();
         }
         return _loc7_;
      }
      
      public function §9!P§(param1:Number = -1) : void
      {
         this.§!!D§ = 0;
         if(param1 == 0)
         {
            this.§&!0§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§&!0§ = param1;
         }
         else
         {
            this.§&!0§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§!!D§ >= 0)
         {
            this.§!!D§ += param1;
            if(this.§!!D§ >= this.§&!0§)
            {
               container.addExplosions(§>D§.§8w§,§?!M§().GetPosition().x,§?!M§().GetPosition().y);
               this.§!!D§ = -1;
            }
            §>C§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§"i§ && this.§!!D§ < 0)
         {
            return true;
         }
         if(this.§!!D§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§!!D§ > 0)
         {
            return this.§!!D§ / this.§&!0§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§!!D§ > 0)
         {
            return this.§&!0§ - this.§!!D§;
         }
         return 0;
      }
   }
}
