package §4!O§
{
   import §"!R§.b2Settings;
   import §5!?§.§;!T§;
   import §5!?§.§>"§;
   import §;t§.Sprite;
   import §=!U§.b2World;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   
   public class §"!5§ extends §<!Z§
   {
       
      
      private var §!!^§:Boolean = false;
      
      private var §]L§:Number = 0;
      
      public function §"!5§(param1:§+K§, param2:Sprite, param3:b2World, param4:§>"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§=!R§) : void
      {
         var _loc2_:String = !!this.§!!^§ ? §<!J§.§9E§ : §<!J§.§0!E§;
         param1.§'!"§(_loc2_,§=!R§.§4r§,§<!J§.§-E§,§?!7§().GetPosition().x,§?!7§().GetPosition().y - 1,2000,"",§<!J§.§"3§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§!!^§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§?!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§?!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§?!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§]L§ > 0)
         {
            this.§]L§ -= param1;
            §^!M§.mTryToScream = §^e§.§0!a§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §0m§() : void
      {
         this.§]L§ = §;!T§.§;!5§;
         §^!M§.mTryToScream = §^e§.§0!a§;
         playScreamingSoundEffect();
      }
   }
}
