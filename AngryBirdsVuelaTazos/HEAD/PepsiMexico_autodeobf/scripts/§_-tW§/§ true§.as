package §_-tW§
{
   import §_-Di§.§_-ix§;
   import §_-Di§.§_-nT§;
   import §_-SE§.Sprite;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-rz§.b2Settings;
   import §_-vk§.b2World;
   
   public class § true§ extends §_-dM§
   {
       
      
      private var §_-Dr§:Boolean = false;
      
      private var §_-ui§:Number = 0;
      
      public function § true§(param1:§_-S5§, param2:Sprite, param3:b2World, param4:§_-ix§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-wT§) : void
      {
         var _loc2_:String = !!this.§_-Dr§ ? §_-ds§.§_-wx§ : §_-ds§.§_-o2§;
         param1.§_-Kw§(_loc2_,§_-wT§.§_-Kz§,§_-ds§.§_-gq§,§_-UF§().GetPosition().x,§_-UF§().GetPosition().y - 1,2000,"",§_-ds§.§_-Vo§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-Dr§ = true;
         }
         return _loc6_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-UF§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-UF§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-UF§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§_-ui§ > 0)
         {
            this.§_-ui§ -= param1;
            §_-bV§.mTryToScream = §_-wS§.§_-Ma§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §_-mB§() : void
      {
         this.§_-ui§ = §_-nT§.§_-oz§;
         §_-bV§.mTryToScream = §_-wS§.§_-Ma§;
         playScreamingSoundEffect();
      }
   }
}
