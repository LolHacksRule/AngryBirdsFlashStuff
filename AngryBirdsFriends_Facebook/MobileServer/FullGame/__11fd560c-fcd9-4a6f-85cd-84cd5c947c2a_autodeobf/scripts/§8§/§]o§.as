package §8§#8
{
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §]o§ extends §4!y§
   {
       
      
      public function §]o§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §#!H§ = param7;
         §8Q§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§[#x§;
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = §@>§.getParticleMaterialFromEngineMaterial(itemName);
         if(_loc2_ == §@>§.§9#9§ && §#!H§ == "")
         {
            param1.addParticle(§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",_loc2_);
         }
         else
         {
            _loc3_ = 4;
            _loc4_ = Math.min(49,Math.max(1,§3"C§(false))) + 1;
            _loc5_ = 90;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
               _loc8_ = (_loc8_ = -§9"6§.width * §%!q§.§6q§) + Math.random() * -_loc8_ * 2;
               _loc9_ = (_loc9_ = -§9"6§.height * §%!q§.§6q§) + Math.random() * -_loc9_ * 2;
               if(§#!H§ != "")
               {
                  _loc10_ = §#!H§;
                  if(§8Q§ > 0)
                  {
                     _loc10_ += "_" + (1 + Math.floor(Math.random() * §8Q§));
                  }
                  param1.addSimpleParticle(_loc10_,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               else
               {
                  param1.addParticle(§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               _loc6_++;
            }
         }
      }
   }
}
