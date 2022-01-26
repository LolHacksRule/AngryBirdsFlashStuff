package §9_§
{
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § p§ extends §4!;§
   {
       
      
      private var §3_§:Number = -1;
      
      private var §"%§:Number = -1;
      
      public function § p§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§8b§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§;$§)
         {
            this.§8b§(0);
         }
         else if(this.§3_§ > 0)
         {
            _loc1_ = this.§3_§ / this.§"%§;
            this.§"%§ = 0;
            this.§3_§ = this.§"%§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§;$§)
         {
            super.activateSpecialPower(null);
            this.§8b§();
         }
         return _loc7_;
      }
      
      public function §8b§(param1:Number = -1) : void
      {
         this.§3_§ = 0;
         if(param1 == 0)
         {
            this.§"%§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§"%§ = param1;
         }
         else
         {
            this.§"%§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§3_§ >= 0)
         {
            this.§3_§ += param1;
            if(this.§3_§ >= this.§"%§)
            {
               container.addExplosions(§7]§.§`!$§,§>b§().GetPosition().x,§>b§().GetPosition().y);
               this.§3_§ = -1;
            }
            §%w§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§;$§ && this.§3_§ < 0)
         {
            return true;
         }
         if(this.§3_§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§3_§ > 0)
         {
            return this.§3_§ / this.§"%§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§3_§ > 0)
         {
            return this.§"%§ - this.§3_§;
         }
         return 0;
      }
   }
}
