package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   
   public class §1!y§ extends §>"G§
   {
       
      
      public function §1!y§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §?"&§ = param7;
         §6$7§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§-##§;
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
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
         var _loc2_:int = §=,§.getParticleMaterialFromEngineMaterial(itemName);
         if(_loc2_ == §=,§.§?E§ && §?"&§ == "")
         {
            param1.addParticle(§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",_loc2_);
         }
         else
         {
            _loc3_ = 4;
            _loc4_ = Math.min(49,Math.max(1,§>#@§(false))) + 1;
            _loc5_ = 90;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
               _loc8_ = (_loc8_ = -§]$"§.width * §8#3§.§2K§) + Math.random() * -_loc8_ * 2;
               _loc9_ = (_loc9_ = -§]$"§.height * §8#3§.§2K§) + Math.random() * -_loc9_ * 2;
               if(§?"&§ != "")
               {
                  _loc10_ = §?"&§;
                  if(§6$7§ > 0)
                  {
                     _loc10_ += "_" + (1 + Math.floor(Math.random() * §6$7§));
                  }
                  param1.addSimpleParticle(_loc10_,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               else
               {
                  param1.addParticle(§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               _loc6_++;
            }
         }
      }
   }
}
