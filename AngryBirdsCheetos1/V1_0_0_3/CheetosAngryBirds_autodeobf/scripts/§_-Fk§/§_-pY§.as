package §_-Fk§
{
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-Yj§;
   import §_-00B§.b2World;
   import §_-Jf§.b2Settings;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §case §.Sprite;
   
   public class §_-pY§ extends §_-La§
   {
       
      
      private var §_-jJ§:Boolean = false;
      
      private var §_-6Z§:Number = 0;
      
      public function §_-pY§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-RT§) : void
      {
         var _loc2_:String = !!this.§_-jJ§ ? §_-hQ§.§_-0i§ : §_-hQ§.§_-wo§;
         param1.addParticle(_loc2_,§_-RT§.§_-MU§,§_-hQ§.§_-Wn§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y - 1,2000,"",§_-hQ§.§_-OG§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§_-jJ§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-Zv§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-Zv§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-Zv§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§_-6Z§ > 0)
         {
            this.§_-6Z§ -= param1;
            §_-Rh§.mTryToScream = §_-8E§.§_-b7§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §_-nP§() : void
      {
         this.§_-6Z§ = §_-Yj§.§_-qu§;
         §_-Rh§.mTryToScream = §_-8E§.§_-b7§;
         playScreamingSoundEffect();
      }
   }
}
