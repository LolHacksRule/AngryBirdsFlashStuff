package §_-mj§
{
   import §_-5Y§.§_-yw§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-b5§.Sprite;
   import §_-bW§.b2Settings;
   import §const§.b2World;
   
   public class §_-3C§ extends §_-OW§
   {
       
      
      private var §_-K9§:Boolean = false;
      
      public function §_-3C§(param1:§_-Fv§, param2:Sprite, param3:b2World, param4:§_-yw§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-hK§) : void
      {
         var _loc2_:String = !!this.§_-K9§ ? §_-C-§.§_-My§ : §_-C-§.§_-Op§;
         param1.§_-pB§(_loc2_,§_-hK§.§_-I1§,§_-C-§.§_-mP§,§_-oR§().GetPosition().x,§_-oR§().GetPosition().y - 1,2000,"",§_-C-§.§_-j6§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-K9§ = true;
         }
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-oR§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-oR§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-oR§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
   }
}
