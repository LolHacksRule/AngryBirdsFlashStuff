package §finally§
{
   import §"o§.§ M§;
   import §"o§.§,J§;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;=§ extends §>! §
   {
       
      
      private var §3z§:Boolean = false;
      
      private var §1F§:Number = 0;
      
      public function §;=§(param1:§3X§, param2:Sprite, param3:b2World, param4:§ M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§<u§) : void
      {
         var _loc2_:String = !!this.§3z§ ? §`b§.§,m§ : §`b§.§!p§;
         param1.§1C§(_loc2_,§<u§.§>7§,§`b§.§67§,§+!-§().GetPosition().x,§+!-§().GetPosition().y - 1,2000,"",§`b§.§>8§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§3z§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§+!-§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§+!-§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§+!-§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§1F§ > 0)
         {
            this.§1F§ -= param1;
            §8h§.mTryToScream = §`u§.§@S§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function § 2§() : void
      {
         this.§1F§ = §,J§.§7,§;
         §8h§.mTryToScream = §`u§.§@S§;
         playScreamingSoundEffect();
      }
   }
}
