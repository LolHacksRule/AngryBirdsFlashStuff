package §5!G§
{
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §@!b§.§@!k§;
   
   public class §3!9§ extends §'!1§
   {
       
      
      private var §9!l§:Number = -1;
      
      private var §75§:Number = -1;
      
      public function §3!9§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8+§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§&!4§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§=!F§)
         {
            this.§&!4§(0);
         }
         else if(this.§9!l§ > 0)
         {
            _loc1_ = this.§9!l§ / this.§75§;
            this.§75§ = 0;
            this.§9!l§ = this.§75§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§=!F§)
         {
            super.activateSpecialPower(null);
            this.§&!4§();
         }
         return _loc7_;
      }
      
      public function §&!4§(param1:Number = -1) : void
      {
         this.§9!l§ = 0;
         if(param1 == 0)
         {
            this.§75§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§75§ = param1;
         }
         else
         {
            this.§75§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§9!l§ >= 0)
         {
            this.§9!l§ += param1;
            if(this.§9!l§ >= this.§75§)
            {
               container.addExplosions(§ !a§.§+!T§,§>j§().GetPosition().x,§>j§().GetPosition().y);
               this.§9!l§ = -1;
            }
            §2R§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§=!F§ && this.§9!l§ < 0)
         {
            return true;
         }
         if(this.§9!l§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§9!l§ > 0)
         {
            return this.§9!l§ / this.§75§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§9!l§ > 0)
         {
            return this.§75§ - this.§9!l§;
         }
         return 0;
      }
   }
}
