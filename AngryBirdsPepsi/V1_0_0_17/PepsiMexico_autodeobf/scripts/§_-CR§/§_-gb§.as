package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-lh§.b2Settings;
   
   public class §_-gb§ extends §_-kw§
   {
       
      
      private var §_-NL§:Boolean = false;
      
      public function §_-gb§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§_-Gb§) : void
      {
         var _loc2_:String = !!this.§_-NL§ ? §_-UW§.§_-Xt§ : §_-UW§.§_-Q7§;
         param1.§_-JY§(_loc2_,§_-Gb§.§_-oO§,§_-UW§.§_-dd§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y - 1,2000,"",§_-UW§.§_-od§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-NL§ = true;
         }
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-zq§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-zq§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-zq§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
   }
}
