package §9"%§
{
   import §1!$§.Sprite;
   import §3![§.§^"1§;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §`!'§ extends § H§
   {
       
      
      private var §3w§:Number = -1;
      
      private var §4",§:Number = -1;
      
      public function §`!'§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§[I§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§-!a§)
         {
            this.§[I§(0);
         }
         else if(this.§3w§ > 0)
         {
            _loc1_ = this.§3w§ / this.§4",§;
            this.§4",§ = 0;
            this.§3w§ = this.§4",§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§-!a§)
         {
            super.activateSpecialPower(null);
            this.§[I§();
         }
         return _loc7_;
      }
      
      public function §[I§(param1:Number = -1) : void
      {
         this.§3w§ = 0;
         if(param1 == 0)
         {
            this.§4",§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§4",§ = param1;
         }
         else
         {
            this.§4",§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§3w§ >= 0)
         {
            this.§3w§ += param1;
            if(this.§3w§ >= this.§4",§)
            {
               §%4§.addExplosions(§^!x§.§;!§,§=!y§().GetPosition().x,§=!y§().GetPosition().y);
               this.§3w§ = -1;
               §^"1§.§1!g§(false);
            }
            §'!Z§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§-!a§ && this.§3w§ < 0)
         {
            return true;
         }
         if(this.§3w§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§3w§ > 0)
         {
            return this.§3w§ / this.§4",§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§3w§ > 0)
         {
            return this.§4",§ - this.§3w§;
         }
         return 0;
      }
   }
}
