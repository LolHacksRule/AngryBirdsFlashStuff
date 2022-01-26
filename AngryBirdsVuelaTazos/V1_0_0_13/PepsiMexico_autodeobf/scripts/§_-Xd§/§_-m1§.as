package §_-Xd§
{
   import §_-FQ§.§_-7W§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-SM§.b2Settings;
   import §_-UX§.Sprite;
   import §_-qW§.b2World;
   
   public class §_-m1§ extends §_-Oy§
   {
       
      
      private var §_-H8§:Boolean = false;
      
      public function §_-m1§(param1:§_-OL§, param2:Sprite, param3:b2World, param4:§_-7W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addDestructionParticles(param1:§_-Tg§) : void
      {
         var _loc2_:String = !!this.§_-H8§ ? §_-qC§.§_-4c§ : §_-qC§.§_-TK§;
         param1.§_-Eo§(_loc2_,§_-Tg§.§_-U1§,§_-qC§.§_-OY§,§_-vv§().GetPosition().x,§_-vv§().GetPosition().y - 1,2000,"",§_-qC§.§_-4V§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 && param4)
         {
            this.§_-H8§ = true;
         }
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§_-vv§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-vv§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§_-vv§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
   }
}
