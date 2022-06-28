package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §9E§.Sprite;
   import §;u§.b2Settings;
   
   public class §-!0§ extends §-s§
   {
       
      
      private var §8!_§:Boolean = false;
      
      private var §%K§:Number = 0;
      
      public function §-!0§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §`r§ = param11;
      }
      
      override public function addDestructionParticles(param1:§,n§) : void
      {
         var _loc2_:String = !!this.§8!_§ ? §6Q§.§6F§ : §6Q§.§?@§;
         if(§`r§ == "")
         {
            param1.§=!K§(_loc2_,§,n§.§9!&§,§6Q§.§5!]§,§+$§().GetPosition().x,§+$§().GetPosition().y - 1,2000,"",§6Q§.§'!q§);
         }
         else
         {
            param1.§[!3§(§`r§,_loc2_,§,n§.§9!&§,§6Q§.§5!]§,§+$§().GetPosition().x,§+$§().GetPosition().y - 1,2000,"",§6Q§.§'!q§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§8!_§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§+$§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§+$§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§+$§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§%K§ > 0)
         {
            this.§%K§ -= param1;
            §[!"§.mTryToScream = §+s§.§'!m§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §?8§() : void
      {
         this.§%K§ = §3D§.§1!0§;
         §[!"§.mTryToScream = §+s§.§'!m§;
         playScreamingSoundEffect();
      }
   }
}
