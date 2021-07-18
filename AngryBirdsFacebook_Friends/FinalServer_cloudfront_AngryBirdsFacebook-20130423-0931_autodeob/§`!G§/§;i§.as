package §`!G§
{
   import §'!6§.Sprite;
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §;i§ extends §2"L§
   {
       
      
      private var §&"8§:Number = -1;
      
      private var §?!I§:Number = -1;
      
      public function §;i§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§7"-§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§#P§)
         {
            this.§7"-§(0);
         }
         else if(this.§&"8§ > 0)
         {
            _loc1_ = this.§&"8§ / this.§?!I§;
            this.§?!I§ = 0;
            this.§&"8§ = this.§?!I§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§#P§)
         {
            super.activateSpecialPower(null);
            this.§7"-§();
         }
         return _loc7_;
      }
      
      public function §7"-§(param1:Number = -1) : void
      {
         this.§&"8§ = 0;
         if(param1 == 0)
         {
            this.§?!I§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§?!I§ = param1;
         }
         else
         {
            this.§?!I§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§&"8§ >= 0)
         {
            this.§&"8§ += param1;
            if(this.§&"8§ >= this.§?!I§)
            {
               container.addExplosions(§6!M§.§8"L§,getBody().GetPosition().x,getBody().GetPosition().y);
               this.§&"8§ = -1;
               §4!`§.§!e§(false);
            }
            §,d§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§#P§ && this.§&"8§ < 0)
         {
            return true;
         }
         if(this.§&"8§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&"8§ > 0)
         {
            return this.§&"8§ / this.§?!I§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§&"8§ > 0)
         {
            return this.§?!I§ - this.§&"8§;
         }
         return 0;
      }
   }
}
