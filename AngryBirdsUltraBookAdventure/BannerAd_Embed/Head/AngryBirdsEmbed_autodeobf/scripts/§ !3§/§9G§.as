package § !3§
{
   import §%-§.Sprite;
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §9G§ extends §=R§
   {
       
      
      private var §4A§:Boolean = false;
      
      private var §?!&§:Number = 0;
      
      public function §9G§(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §32§ = param11;
      }
      
      override public function addDestructionParticles(param1:§5b§) : void
      {
         var _loc2_:String = !!this.§4A§ ? §2S§.§87§ : §2S§.§`%§;
         if(§32§ == "")
         {
            param1.§ t§(_loc2_,§5b§.§?D§,§2S§.§>t§,§9! §().GetPosition().x,§9! §().GetPosition().y - 1,2000,"",§2S§.§+v§);
         }
         else
         {
            param1.§9!§(§32§,_loc2_,§5b§.§?D§,§2S§.§>t§,§9! §().GetPosition().x,§9! §().GetPosition().y - 1,2000,"",§2S§.§+v§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§4A§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§9! §().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9! §().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9! §().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§?!&§ > 0)
         {
            this.§?!&§ -= param1;
            §"0§.mTryToScream = §[4§.§;!E§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §>a§() : void
      {
         this.§?!&§ = §#!;§.§9h§;
         §"0§.mTryToScream = §[4§.§;!E§;
         playScreamingSoundEffect();
      }
   }
}
