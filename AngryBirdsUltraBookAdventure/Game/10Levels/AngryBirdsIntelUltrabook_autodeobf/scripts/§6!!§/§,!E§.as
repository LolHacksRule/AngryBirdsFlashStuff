package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.LevelMain;
   
   public class §,!E§ extends LevelObject
   {
       
      
      private var §5!X§:int = 0;
      
      public function §,!E§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §@J§ = param12;
         §#c§ = param13;
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§0!"§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -§`!P§.mW * LevelMain.§@!d§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -§`!P§.mH * LevelMain.§@!d§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            if(§@J§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §#c§);
               param1.§2!9§(§@J§ + "_" + _loc9_,§ !_§.§4b§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x + _loc7_,§@!'§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§ do§(§ I§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§?`§(§ !_§.§4b§,LevelParticleManager.§9!H§,§ !_§.§0o§,§@!'§().GetPosition().x + _loc7_,§@!'§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§ do§(§ I§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:LevelMain = §`S§.§[o§;
         if(§3W§ < §>!"§ || §@!'§() == null)
         {
            _loc1_.§6B§(this);
            _loc1_.static = false;
            return;
         }
         var _loc2_:Number = x * LevelMain.§@!d§;
         var _loc3_:Number = y * LevelMain.§@!d§;
         var _loc4_:String = § !_§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§5!X§ == 1)
         {
            _loc4_ = § !_§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§5!X§ == 2)
         {
            _loc4_ = § !_§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§5!X§ = (this.§5!X§ + 1) % 3;
         _loc1_.particles.§?`§(_loc4_,LevelParticleManager.§%F§,§ !_§.§'!R§,_loc2_,_loc3_,-1,"",§ !_§.§>N§);
      }
   }
}
