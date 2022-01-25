package §^!$§
{
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §<!L§.b2World;
   
   public class §>!-§ extends §6y§
   {
       
      
      private var §<e§:Number = -1;
      
      private var §'I§:Number = -1;
      
      public function §>!-§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§;!D§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         this.§3C§(0);
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Number = NaN;
         if(!§4c§)
         {
            this.§3C§(0);
         }
         else if(this.§<e§ > 0)
         {
            _loc1_ = this.§<e§ / this.§'I§;
            this.§'I§ = 0;
            this.§<e§ = this.§'I§ * _loc1_;
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!§4c§)
         {
            super.activateSpecialPower(null);
            this.§3C§();
         }
         return _loc7_;
      }
      
      public function §3C§(param1:Number = -1) : void
      {
         this.§<e§ = 0;
         if(param1 == 0)
         {
            this.§'I§ = 0;
            this.update(0);
         }
         else if(param1 > 0)
         {
            this.§'I§ = param1;
         }
         else
         {
            this.§'I§ = 2000;
         }
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§<e§ >= 0)
         {
            this.§<e§ += param1;
            if(this.§<e§ >= this.§'I§)
            {
               container.addExplosions(§;Y§.§3@§,§#!!§().GetPosition().x,§#!!§().GetPosition().y);
               this.§<e§ = -1;
            }
            §;B§ = true;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(§4c§ && this.§<e§ < 0)
         {
            return true;
         }
         if(this.§<e§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§<e§ > 0)
         {
            return this.§<e§ / this.§'I§;
         }
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         if(this.§<e§ > 0)
         {
            return this.§'I§ - this.§<e§;
         }
         return 0;
      }
   }
}
