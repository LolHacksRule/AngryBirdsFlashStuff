package §#v§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §;]§.b2Settings;
   import §?!0§.b2World;
   import §?'§.§1V§;
   import §?'§.§9N§;
   
   public class §=!>§ extends §`q§
   {
       
      
      private var §;!T§:Boolean = false;
      
      private var §#!X§:Number = 0;
      
      public function §=!>§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§7!W§) : void
      {
         var _loc2_:String = !!this.§;!T§ ? §?f§.§#!T§ : §?f§.§9'§;
         param1.addParticle(_loc2_,§7!W§.§'>§,§?f§.§ ,§,§#a§().GetPosition().x,§#a§().GetPosition().y - 1,2000,"",§?f§.§3>§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§;!T§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§#a§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§#a§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§#a§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§#!X§ > 0)
         {
            this.§#!X§ -= param1;
            §5-§.mTryToScream = §"d§.§1!&§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §^C§() : void
      {
         this.§#!X§ = §1V§.§=!Y§;
         §5-§.mTryToScream = §"d§.§1!&§;
         playScreamingSoundEffect();
      }
   }
}
