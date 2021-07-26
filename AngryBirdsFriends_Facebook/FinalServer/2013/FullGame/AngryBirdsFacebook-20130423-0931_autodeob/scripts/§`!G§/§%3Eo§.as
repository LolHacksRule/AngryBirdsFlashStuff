package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §>o§ extends §[!8§
   {
      
      public static const §1!9§:int = 1750;
       
      
      private var §%b§:int = 0;
      
      public function §>o§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §0"9§ = param12;
         §!"F§ = param13;
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§`!A§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!8§.mW * §'!S§.§2"<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!8§.mH * §'!S§.§2"<§) + Math.random() * -_loc8_ * 2;
            if(§0"9§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §!"F§);
               param1.§@6§(§0"9§ + "_" + _loc9_,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§1!9§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§@x§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§"!J§(§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§1!9§ + Math.random() * 500,"",getParticleMaterialFromEngineMaterial(§@x§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§'!S§ = §?l§.§'h§;
         if(§ d§ < §^!2§ || getBody() == null)
         {
            _loc1_.§-"?§(this);
            _loc1_.§!^§ = false;
            return;
         }
         var _loc2_:Number = x * §'!S§.§2"<§;
         var _loc3_:Number = y * §'!S§.§2"<§;
         var _loc4_:String = §0i§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§%b§ == 1)
         {
            _loc4_ = §0i§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§%b§ == 2)
         {
            _loc4_ = §0i§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§%b§ = (this.§%b§ + 1) % 3;
         _loc1_.particles.§"!J§(_loc4_,§6!O§.§-4§,§0i§.§>!c§,_loc2_,_loc3_,-1,"",§0i§.§7!z§);
      }
   }
}
