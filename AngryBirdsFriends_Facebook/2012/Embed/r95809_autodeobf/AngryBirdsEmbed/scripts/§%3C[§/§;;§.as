package §<[§
{
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §+!%§.§'!"§;
   import §+!%§.§use§;
   import §->§.Sprite;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;;§ extends §&v§
   {
       
      
      private var §"d§:Boolean = false;
      
      private var §]?§:Number = 0;
      
      public function §;;§(param1:§6q§, param2:Sprite, param3:b2World, param4:§'!"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§#g§) : void
      {
         var _loc2_:String = !!this.§"d§ ? §9!E§.§6S§ : §9!E§.§0u§;
         param1.§#!&§(_loc2_,§#g§.§%!H§,§9!E§.§`V§,§27§().GetPosition().x,§27§().GetPosition().y - 1,2000,"",§9!E§.§>Y§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§"d§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§27§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§27§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§27§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§]?§ > 0)
         {
            this.§]?§ -= param1;
            §2!0§.mTryToScream = §;+§.§@2§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §%-§() : void
      {
         this.§]?§ = §use§.§&!1§;
         §2!0§.mTryToScream = §;+§.§@2§;
         playScreamingSoundEffect();
      }
   }
}
