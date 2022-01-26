package §_-bl§
{
   import §_-2r§.§_-nb§;
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-b4§.b2Settings;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import §try§.b2World;
   
   public class §_-Kg§ extends §_-sZ§
   {
       
      
      private var §_-PW§:Boolean = false;
      
      private var §_-kH§:Number = 0;
      
      public function §_-Kg§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-5J§) : void
      {
         var _loc2_:String = !!this.§_-PW§ ? §_-yB§.§_-9T§ : §_-yB§.§_-i9§;
         param1.addParticle(_loc2_,§_-5J§.§_-2S§,§_-yB§.§_-5§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y - 1,2000,"",§_-yB§.§_-wn§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§_-PW§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-BO§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-BO§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-BO§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§_-kH§ > 0)
         {
            this.§_-kH§ -= param1;
            §_-KI§.mTryToScream = §_-Td§.§_-2u§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §_-ri§() : void
      {
         this.§_-kH§ = §_-nb§.§_-gu§;
         §_-KI§.mTryToScream = §_-Td§.§_-2u§;
         playScreamingSoundEffect();
      }
   }
}
