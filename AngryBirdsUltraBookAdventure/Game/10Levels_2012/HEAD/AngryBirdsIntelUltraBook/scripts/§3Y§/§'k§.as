package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §-!>§.§4!T§;
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?A§.LevelMain;
   
   public class §'k§ extends LevelObject
   {
       
      
      private var § !E§:int = 0;
      
      public function §'k§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §8@§ = param12;
         §6!E§ = param13;
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§2!2§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -§ get§.mW * LevelMain.§!5§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -§ get§.mH * LevelMain.§!5§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            if(§8@§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §6!E§);
               param1.§5V§(§8@§ + "_" + _loc9_,§8!;§.§`Q§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x + _loc7_,§8!N§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"K§(§4!W§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§%!!§(§8!;§.§`Q§,LevelParticleManager.§1!'§,§8!;§.§;Z§,§8!N§().GetPosition().x + _loc7_,§8!N§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"K§(§4!W§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:LevelMain = §4!T§.§1t§;
         if(§19§ < §^V§ || §8!N§() == null)
         {
            _loc1_.§^#§(this);
            _loc1_.§4-§ = false;
            return;
         }
         var _loc2_:Number = x * LevelMain.§!5§;
         var _loc3_:Number = y * LevelMain.§!5§;
         var _loc4_:String = §8!;§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§ !E§ == 1)
         {
            _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§ !E§ == 2)
         {
            _loc4_ = §8!;§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§ !E§ = (this.§ !E§ + 1) % 3;
         _loc1_.particles.§%!!§(_loc4_,LevelParticleManager.§`v§,§8!;§.§2!b§,_loc2_,_loc3_,-1,"",§8!;§.§9!0§);
      }
   }
}
