package §?"&§
{
   import §7!q§.b2World;
   import §8!E§.§?!X§;
   import §`L§.Sprite;
   
   public class §]!S§ extends §`!k§
   {
       
      
      private var §7!u§:Number = -1;
      
      private var §3!8§:Number = -1;
      
      public function §]!S§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§5b§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§4Z§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§=!3§)
         {
            this.§4Z§(0);
         }
         else if(this.§7!u§ > 0)
         {
            _loc1_ = this.§7!u§ / this.§3!8§;
            this.§3!8§ = 0;
            this.§7!u§ = this.§3!8§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§=!3§)
         {
            super.activateSpecialPower(null);
            this.§4Z§();
         }
         return _loc7_;
      }
      
      public function §4Z§(param1:Number = -1) : void
      {
         this.§7!u§ = 0;
         if(param1 == 0)
         {
            this.§3!8§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§3!8§ = param1;
         }
         else
         {
            this.§3!8§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7!u§ >= 0)
         {
            this.§7!u§ += param1;
            if(this.§7!u§ >= this.§3!8§)
            {
               container.addExplosions(§?!l§.§@"-§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§7!u§ = -1;
            }
            §9!g§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§=!3§ && this.§7!u§ < 0)
         {
            return true;
         }
         if(this.§7!u§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§7!u§ > 0)
         {
            return this.§7!u§ / this.§3!8§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§7!u§ > 0)
         {
            return this.§3!8§ - this.§7!u§;
         }
         return 0;
      }
   }
}
