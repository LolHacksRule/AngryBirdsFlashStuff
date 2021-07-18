package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§&!V§;
   import §9N§.§9!%§;
   import §>!@§.b2Settings;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   
   public class §;!T§ extends §!!!§
   {
       
      
      private var §#!X§:Boolean = false;
      
      private var §^C§:Number = 0;
      
      public function §;!T§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§,v§) : void
      {
         var _loc2_:String = !!this.§#!X§ ? §-&§.§[!Y§ : §-&§.§#!T§;
         param1.addParticle(_loc2_,§,v§.§-!;§,§-&§.§3!<§,§`!#§().GetPosition().x,§`!#§().GetPosition().y - 1,2000,"",§-&§.§]!'§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§#!X§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§`!#§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§`!#§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§`!#§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§^C§ > 0)
         {
            this.§^C§ -= param1;
            §%n§.mTryToScream = §'x§.§ H§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §>f§() : void
      {
         this.§^C§ = §&!V§.§1<§;
         §%n§.mTryToScream = §'x§.§ H§;
         playScreamingSoundEffect();
      }
   }
}
