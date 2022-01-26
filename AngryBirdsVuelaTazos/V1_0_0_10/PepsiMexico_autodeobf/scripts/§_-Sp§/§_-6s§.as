package §_-Sp§
{
   import §_-0y§.§_-B3§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-rg§.b2World;
   import §_-se§.Sprite;
   import §_-uS§.b2Settings;
   
   public class §_-6s§ extends §_-C2§
   {
       
      
      private var §_-mJ§:Boolean = false;
      
      public function §_-6s§(param1:§_-D4§, param2:Sprite, param3:b2World, param4:§_-B3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-Kd§) : void
      {
         var _loc2_:String = !!this.§_-mJ§ ? §_-w7§.§_-Yt§ : §_-w7§.§_-WS§;
         param1.§_-4V§(_loc2_,§_-Kd§.§_-vR§,§_-w7§.§_-ve§,§_-dZ§().GetPosition().x,§_-dZ§().GetPosition().y - 1,2000,"",§_-w7§.§_-iL§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-mJ§ = true;
         }
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-dZ§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-dZ§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-dZ§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
   }
}
