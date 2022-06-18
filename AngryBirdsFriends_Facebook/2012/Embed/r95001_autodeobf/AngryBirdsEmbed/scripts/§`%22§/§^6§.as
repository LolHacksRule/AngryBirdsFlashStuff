package §`"§
{
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §9!?§.§,a§;
   import §9!?§.§^]§;
   import §<k§.Sprite;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §^6§ extends § P§
   {
       
      
      private var §`s§:Boolean = false;
      
      private var § b§:Number = 0;
      
      public function §^6§(param1:§?!;§, param2:Sprite, param3:b2World, param4:§^]§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§2x§) : void
      {
         var _loc2_:String = !!this.§`s§ ? §-V§.§@1§ : §-V§.§5G§;
         param1.§]1§(_loc2_,§2x§.§3!6§,§-V§.§%Z§,§]d§().GetPosition().x,§]d§().GetPosition().y - 1,2000,"",§-V§.§&8§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§`s§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§]d§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§]d§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§]d§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§ b§ > 0)
         {
            this.§ b§ -= param1;
            §>b§.mTryToScream = §'q§.§3P§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §[!'§() : void
      {
         this.§ b§ = §,a§.§48§;
         §>b§.mTryToScream = §'q§.§3P§;
         playScreamingSoundEffect();
      }
   }
}
