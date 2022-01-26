package §_-mj§
{
   import §_-5Y§.§_-yw§;
   import §_-b5§.Sprite;
   import §const§.b2World;
   
   public class §_-ab§ extends §_-8x§
   {
       
      
      private var §_-1I§:Number = -1;
      
      private var §_-CR§:Number = -1;
      
      public function §_-ab§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§_-Fv§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§_-6l§(100);
         return true;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§_-zd§)
         {
            this.§_-6l§(100);
         }
         else if(this.§_-1I§ > 0)
         {
            _loc1_ = this.§_-1I§ / this.§_-CR§;
            this.§_-CR§ = 200;
            this.§_-1I§ = this.§_-CR§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!§_-zd§)
         {
            super.activateSpecialPower(null);
            this.§_-6l§();
         }
         return _loc5_;
      }
      
      public function §_-6l§(param1:Number = -1) : void
      {
         this.§_-1I§ = 0;
         if(param1 >= 0)
         {
            this.§_-CR§ = param1;
         }
         else
         {
            this.§_-CR§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-1I§ >= 0)
         {
            this.§_-1I§ += param1;
            if(this.§_-1I§ >= this.§_-CR§)
            {
               container.addExplosions(§_-ql§.§_-mU§,§_-oR§().GetPosition().x,§_-oR§().GetPosition().y);
               this.§_-1I§ = -1;
            }
            §_-iS§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§_-zd§ && this.§_-1I§ < 0)
         {
            return true;
         }
         if(this.§_-1I§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§_-1I§ > 0)
         {
            return this.§_-1I§ / this.§_-CR§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§_-1I§ > 0)
         {
            return this.§_-CR§ - this.§_-1I§;
         }
         return 0;
      }
   }
}
