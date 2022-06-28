package §]!9§
{
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?^§.Sprite;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4A§ extends §1?§
   {
       
      
      private var §?!&§:Boolean = false;
      
      private var §>a§:Number = 0;
      
      public function §4A§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §32§ = param11;
      }
      
      override public function addDestructionParticles(param1:§5b§) : void
      {
         var _loc2_:String = !!this.§?!&§ ? §2S§.§87§ : §2S§.§`%§;
         if(§32§ == "")
         {
            param1.§ t§(_loc2_,§5b§.§?D§,§2S§.§>t§,§%;§().GetPosition().x,§%;§().GetPosition().y - 1,2000,"",§2S§.§+v§);
         }
         else
         {
            param1.§9!§(§32§,_loc2_,§5b§.§?D§,§2S§.§>t§,§%;§().GetPosition().x,§%;§().GetPosition().y - 1,2000,"",§2S§.§+v§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§?!&§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§%;§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§%;§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§%;§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§>a§ > 0)
         {
            this.§>a§ -= param1;
            §2!@§.mTryToScream = §1c§.§1!6§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §1+§() : void
      {
         this.§>a§ = §#!;§.§9h§;
         §2!@§.mTryToScream = §1c§.§1!6§;
         playScreamingSoundEffect();
      }
   }
}
