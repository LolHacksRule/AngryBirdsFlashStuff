package §&c§
{
   import §#;§.§4!8§;
   import §;q§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §7h§ extends §1!$§
   {
       
      
      private var §&!J§:Number = -1;
      
      private var §+b§:Number = -1;
      
      public function §7h§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§<'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§[!"§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§1V§)
         {
            this.§[!"§(0);
         }
         else if(this.§&!J§ > 0)
         {
            _loc1_ = this.§&!J§ / this.§+b§;
            this.§+b§ = 0;
            this.§&!J§ = this.§+b§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§1V§)
         {
            super.activateSpecialPower(null);
            this.§[!"§();
         }
         return _loc7_;
      }
      
      public function §[!"§(param1:Number = -1) : void
      {
         this.§&!J§ = 0;
         if(param1 == 0)
         {
            this.§+b§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§+b§ = param1;
         }
         else
         {
            this.§+b§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§&!J§ >= 0)
         {
            this.§&!J§ += param1;
            if(this.§&!J§ >= this.§+b§)
            {
               container.addExplosions(§'$§.§[x§,§68§().GetPosition().x,§68§().GetPosition().y);
               this.§&!J§ = -1;
            }
            §?!&§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§1V§ && this.§&!J§ < 0)
         {
            return true;
         }
         if(this.§&!J§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&!J§ > 0)
         {
            return this.§&!J§ / this.§+b§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§&!J§ > 0)
         {
            return this.§+b§ - this.§&!J§;
         }
         return 0;
      }
   }
}
