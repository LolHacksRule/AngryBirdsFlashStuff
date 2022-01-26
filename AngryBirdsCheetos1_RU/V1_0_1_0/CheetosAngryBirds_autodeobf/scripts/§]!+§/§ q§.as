package §]!+§
{
   import §!!V§.§&I§;
   import §&!5§.Sprite;
   import §[x§.b2World;
   
   public class § q§ extends §`H§
   {
       
      
      private var §8]§:Number = -1;
      
      private var §8`§:Number = -1;
      
      public function § q§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§7v§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§#!8§)
         {
            this.§7v§(0);
         }
         else if(this.§8]§ > 0)
         {
            _loc1_ = this.§8]§ / this.§8`§;
            this.§8`§ = 0;
            this.§8]§ = this.§8`§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§#!8§)
         {
            super.activateSpecialPower(null);
            this.§7v§();
         }
         return _loc7_;
      }
      
      public function §7v§(param1:Number = -1) : void
      {
         this.§8]§ = 0;
         if(param1 == 0)
         {
            this.§8`§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§8`§ = param1;
         }
         else
         {
            this.§8`§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§8]§ >= 0)
         {
            this.§8]§ += param1;
            if(this.§8]§ >= this.§8`§)
            {
               container.addExplosions(§<i§.§ !_§,§?A§().GetPosition().x,§?A§().GetPosition().y);
               this.§8]§ = -1;
            }
            §`f§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§#!8§ && this.§8]§ < 0)
         {
            return true;
         }
         if(this.§8]§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§8]§ > 0)
         {
            return this.§8]§ / this.§8`§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§8]§ > 0)
         {
            return this.§8`§ - this.§8]§;
         }
         return 0;
      }
   }
}
