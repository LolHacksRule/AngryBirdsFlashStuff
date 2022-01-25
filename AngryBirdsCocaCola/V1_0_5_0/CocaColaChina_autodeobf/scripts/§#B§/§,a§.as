package §#B§
{
   import § y§.b2World;
   import §2!G§.§2!V§;
   import §<!$§.Sprite;
   
   public class §,a§ extends §!!_§
   {
       
      
      private var §#!E§:Number = -1;
      
      private var § r§:Number = -1;
      
      public function §,a§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§ ! §) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§?<§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§;M§)
         {
            this.§?<§(0);
         }
         else if(this.§#!E§ > 0)
         {
            _loc1_ = this.§#!E§ / this.§ r§;
            this.§ r§ = 0;
            this.§#!E§ = this.§ r§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§;M§)
         {
            super.activateSpecialPower(null);
            this.§?<§();
         }
         return _loc7_;
      }
      
      public function §?<§(param1:Number = -1) : void
      {
         this.§#!E§ = 0;
         if(param1 == 0)
         {
            this.§ r§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§ r§ = param1;
         }
         else
         {
            this.§ r§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§#!E§ >= 0)
         {
            this.§#!E§ += param1;
            if(this.§#!E§ >= this.§ r§)
            {
               container.addExplosions(§ '§.§9S§,§4g§().GetPosition().x,§4g§().GetPosition().y);
               this.§#!E§ = -1;
            }
            §@3§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§;M§ && this.§#!E§ < 0)
         {
            return true;
         }
         if(this.§#!E§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§#!E§ > 0)
         {
            return this.§#!E§ / this.§ r§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§#!E§ > 0)
         {
            return this.§ r§ - this.§#!E§;
         }
         return 0;
      }
   }
}
