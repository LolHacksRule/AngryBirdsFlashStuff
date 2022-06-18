package §#!1§
{
   import §]!6§.Sprite;
   import §`i§.§2W§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §"K§ extends §9!'§
   {
       
      
      private var §7!"§:Number = -1;
      
      private var § "§:Number = -1;
      
      public function §"K§(param1:§;^§, param2:Sprite, param3:b2World, param4:§2W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;^§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§#+§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§9z§)
         {
            this.§#+§(0);
         }
         else if(this.§7!"§ > 0)
         {
            _loc1_ = this.§7!"§ / this.§ "§;
            this.§ "§ = 0;
            this.§7!"§ = this.§ "§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§9z§)
         {
            super.activateSpecialPower(null);
            this.§#+§();
         }
         return _loc7_;
      }
      
      public function §#+§(param1:Number = -1) : void
      {
         this.§7!"§ = 0;
         if(param1 == 0)
         {
            this.§ "§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§ "§ = param1;
         }
         else
         {
            this.§ "§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7!"§ >= 0)
         {
            this.§7!"§ += param1;
            if(this.§7!"§ >= this.§ "§)
            {
               container.addExplosions(§]o§.§&!!§,§!v§().GetPosition().x,§!v§().GetPosition().y);
               this.§7!"§ = -1;
            }
            §5B§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§9z§ && this.§7!"§ < 0)
         {
            return true;
         }
         if(this.§7!"§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7!"§ > 0)
         {
            return this.§7!"§ / this.§ "§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§7!"§ > 0)
         {
            return this.§ "§ - this.§7!"§;
         }
         return 0;
      }
   }
}
