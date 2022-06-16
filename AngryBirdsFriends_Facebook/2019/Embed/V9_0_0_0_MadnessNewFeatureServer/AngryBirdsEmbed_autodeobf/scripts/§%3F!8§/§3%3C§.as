package §?!8§
{
   import §+_§.§7[§;
   import §90§.Sprite;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §3<§ extends §-!1§
   {
       
      
      private var §%X§:Number = -1;
      
      private var §6Q§:Number = -1;
      
      public function §3<§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§#K§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§9b§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§8!2§)
         {
            this.§9b§(0);
         }
         else if(this.§%X§ > 0)
         {
            _loc1_ = this.§%X§ / this.§6Q§;
            this.§6Q§ = 0;
            this.§%X§ = this.§6Q§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§8!2§)
         {
            super.activateSpecialPower(null);
            this.§9b§();
         }
         return _loc7_;
      }
      
      public function §9b§(param1:Number = -1) : void
      {
         this.§%X§ = 0;
         if(param1 == 0)
         {
            this.§6Q§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§6Q§ = param1;
         }
         else
         {
            this.§6Q§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§%X§ >= 0)
         {
            this.§%X§ += param1;
            if(this.§%X§ >= this.§6Q§)
            {
               container.addExplosions(§2-§.§76§,§<!9§().GetPosition().x,§<!9§().GetPosition().y);
               this.§%X§ = -1;
               §7[§.§#!@§(false);
            }
            §=!3§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§8!2§ && this.§%X§ < 0)
         {
            return true;
         }
         if(this.§%X§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§%X§ > 0)
         {
            return this.§%X§ / this.§6Q§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§%X§ > 0)
         {
            return this.§6Q§ - this.§%X§;
         }
         return 0;
      }
   }
}
