package §9_§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §[x§.§2^§;
   import §[x§.§`5§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;H§ extends §<F§
   {
       
      
      private var §5g§:Boolean = false;
      
      private var §;S§:Number = 0;
      
      public function §;H§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§>=§) : void
      {
         var _loc2_:String = !!this.§5g§ ? §'b§.§9'§ : §'b§.§28§;
         param1.§-X§(_loc2_,§>=§.§>!5§,§'b§.§`F§,§>b§().GetPosition().x,§>b§().GetPosition().y - 1,2000,"",§'b§.§"_§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§5g§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§>b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§>b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§>b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§;S§ > 0)
         {
            this.§;S§ -= param1;
            §<p§.mTryToScream = §`-§.§`w§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §53§() : void
      {
         this.§;S§ = §`5§.§^E§;
         §<p§.mTryToScream = §`-§.§`w§;
         playScreamingSoundEffect();
      }
   }
}
