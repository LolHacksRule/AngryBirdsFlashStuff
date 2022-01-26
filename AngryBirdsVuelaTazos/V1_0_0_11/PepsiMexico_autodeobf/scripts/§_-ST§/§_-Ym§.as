package §_-ST§
{
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-WW§.b2World;
   import §_-ez§.§_-Ay§;
   import §_-iO§.b2Settings;
   import §_-vO§.Sprite;
   
   public class §_-Ym§ extends §_-YQ§
   {
       
      
      private var §_-lS§:Boolean = false;
      
      public function §_-Ym§(param1:§_-oF§, param2:Sprite, param3:b2World, param4:§_-Ay§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-dI§) : void
      {
         var _loc2_:String = !!this.§_-lS§ ? §_-gu§.§_-Y2§ : §_-gu§.§_-gS§;
         param1.§_-2b§(_loc2_,§_-dI§.§_-Hw§,§_-gu§.§_-Al§,§_-Nu§().GetPosition().x,§_-Nu§().GetPosition().y - 1,2000,"",§_-gu§.§_-G5§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-lS§ = true;
         }
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-Nu§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-Nu§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-Nu§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
   }
}
