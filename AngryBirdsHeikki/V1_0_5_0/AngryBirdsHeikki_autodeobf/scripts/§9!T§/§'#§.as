package §9!T§
{
   import §+D§.§5!P§;
   import §+D§.§9!4§;
   import §3'§.b2Settings;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §'#§ extends §-!B§
   {
       
      
      private var §90§:Boolean = false;
      
      private var §0!E§:Number = 0;
      
      public function §'#§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §=W§ = param11;
      }
      
      override public function addDestructionParticles(param1:§[,§) : void
      {
         var _loc2_:String = !!this.§90§ ? §^!U§.§'!d§ : §^!U§.§^!#§;
         if(§=W§ == "")
         {
            param1.addParticle(_loc2_,§[,§.§'k§,§^!U§.§>!Y§,§<k§().GetPosition().x,§<k§().GetPosition().y - 1,2000,"",§^!U§.§#!%§);
         }
         else
         {
            param1.§!!b§(§=W§,_loc2_,§[,§.§'k§,§^!U§.§>!Y§,§<k§().GetPosition().x,§<k§().GetPosition().y - 1,2000,"",§^!U§.§#!%§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§90§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§<k§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§<k§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§<k§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§0!E§ > 0)
         {
            this.§0!E§ -= param1;
            §1I§.mTryToScream = §@1§.§2!W§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §-!Y§() : void
      {
         this.§0!E§ = §9!4§.§?^§;
         §1I§.mTryToScream = §@1§.§2!W§;
         playScreamingSoundEffect();
      }
   }
}
