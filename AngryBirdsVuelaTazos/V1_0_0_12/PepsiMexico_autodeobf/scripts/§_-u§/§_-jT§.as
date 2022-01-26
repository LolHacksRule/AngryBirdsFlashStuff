package §_-u§
{
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-EH§.b2World;
   import §_-pF§.Sprite;
   import §_-rp§.§_-c5§;
   import §_-sU§.b2Settings;
   
   public class §_-jT§ extends §_-dK§
   {
       
      
      private var §_-63§:Boolean = false;
      
      public function §_-jT§(param1:§_-Av§, param2:Sprite, param3:b2World, param4:§_-c5§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-t0§) : void
      {
         var _loc2_:String = !!this.§_-63§ ? §_-Aa§.§_-K1§ : §_-Aa§.§_-7T§;
         param1.§_-RE§(_loc2_,§_-t0§.§_-FQ§,§_-Aa§.§_-TF§,§_-t9§().GetPosition().x,§_-t9§().GetPosition().y - 1,2000,"",§_-Aa§.§_-TU§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-63§ = true;
         }
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-t9§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-t9§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-t9§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
   }
}
