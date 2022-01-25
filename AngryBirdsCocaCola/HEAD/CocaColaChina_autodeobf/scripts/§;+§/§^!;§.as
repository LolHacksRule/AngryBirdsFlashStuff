package §;+§
{
   import § !K§.Sprite;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §4A§.§96§;
   import §7!C§.b2Settings;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   
   public class §^!;§ extends §&]§
   {
       
      
      private var §%![§:Boolean = false;
      
      private var §'M§:Number = 0;
      
      public function §^!;§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§1D§) : void
      {
         var _loc2_:String = !!this.§%![§ ? §;Z§.§=!L§ : §;Z§.§0C§;
         param1.§#!Q§(_loc2_,§1D§.§%d§,§;Z§.§=!c§,§1!d§().GetPosition().x,§1!d§().GetPosition().y - 1,2000,"",§;Z§.§^]§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§%![§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§1!d§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§1!d§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§1!d§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§'M§ > 0)
         {
            this.§'M§ -= param1;
            §4!%§.mTryToScream = §5!P§.§]5§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §?&§() : void
      {
         this.§'M§ = §96§.§9$§;
         §4!%§.mTryToScream = §5!P§.§]5§;
         playScreamingSoundEffect();
      }
   }
}
