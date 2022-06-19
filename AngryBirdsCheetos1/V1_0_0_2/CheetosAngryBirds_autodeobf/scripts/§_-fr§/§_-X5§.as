package §_-fr§
{
   import §_-43§.b2World;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-kK§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-d6§.b2Settings;
   
   public class §_-X5§ extends §_-2W§
   {
       
      
      private var §_-0-z§:Boolean = false;
      
      private var §_-Ry§:Number = 0;
      
      public function §_-X5§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-Jq§) : void
      {
         var _loc2_:String = !!this.§_-0-z§ ? §_-K-§.§_-QR§ : §_-K-§.§_-dg§;
         param1.addParticle(_loc2_,§_-Jq§.§_-0-§,§_-K-§.§_-2w§,§implements§().GetPosition().x,§implements§().GetPosition().y - 1,2000,"",§_-K-§.§_-eJ§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§_-0-z§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§implements§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§implements§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§implements§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§_-Ry§ > 0)
         {
            this.§_-Ry§ -= param1;
            §_-9G§.mTryToScream = §_-e9§.§_-0-X§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §_-iI§() : void
      {
         this.§_-Ry§ = §_-kK§.§_-Rm§;
         §_-9G§.mTryToScream = §_-e9§.§_-0-X§;
         playScreamingSoundEffect();
      }
   }
}
