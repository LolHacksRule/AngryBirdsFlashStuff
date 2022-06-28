package §3p§
{
   import § D§.§]!B§;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §0w§ extends LevelObject
   {
       
      
      private var §,b§:int = 0;
      
      public function §0w§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §!!<§ = param12;
         §0!§ = param13;
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§%W§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ += Math.random() * (720 / _loc3_);
            _loc6_ = _loc4_ / (180 / Math.PI);
            _loc7_ = -§7!O§.mW * LevelMain.§8N§;
            _loc7_ += Math.random() * -_loc7_ * 2;
            _loc8_ = -§7!O§.mH * LevelMain.§8N§;
            _loc8_ += Math.random() * -_loc8_ * 2;
            if(§!!<§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §0!§);
               param1.§3_§(§!!<§ + "_" + _loc9_,§0'§.§4!C§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x + _loc7_,§9f§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§%!`§(§#>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§@4§(§0'§.§4!C§,LevelParticleManager.§[K§,§0'§.§&A§,§9f§().GetPosition().x + _loc7_,§9f§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§%!`§(§#>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:LevelParticleManager, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:LevelMain = §]!B§.§>F§;
         if(§0o§ < §]!3§ || §9f§() == null)
         {
            _loc1_.§[]§(this);
            _loc1_.§>!=§ = false;
            return;
         }
         var _loc2_:Number = x * LevelMain.§8N§;
         var _loc3_:Number = y * LevelMain.§8N§;
         var _loc4_:String = §0'§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§,b§ == 1)
         {
            _loc4_ = §0'§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§,b§ == 2)
         {
            _loc4_ = §0'§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§,b§ = (this.§,b§ + 1) % 3;
         _loc1_.particles.§@4§(_loc4_,LevelParticleManager.§^![§,§0'§.§ 6§,_loc2_,_loc3_,-1,"",§0'§.§&"§);
      }
   }
}
