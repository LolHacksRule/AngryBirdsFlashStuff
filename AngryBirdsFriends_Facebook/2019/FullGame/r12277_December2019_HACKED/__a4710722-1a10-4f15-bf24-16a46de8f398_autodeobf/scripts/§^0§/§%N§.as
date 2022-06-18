package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §%N§ extends §=Q§
   {
       
      
      public function §%N§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §#!§ = param7;
         §#`§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@"<§;
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
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
         var _loc2_:int = §`#I§.getParticleMaterialFromEngineMaterial(itemName);
         if(_loc2_ == §`#I§.§@!T§ && §#!§ == "")
         {
            param1.addParticle(§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",_loc2_);
         }
         else
         {
            _loc3_ = 4;
            _loc4_ = Math.min(49,Math.max(1,§%$$§(false))) + 1;
            _loc5_ = 90;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
               _loc8_ = (_loc8_ = -§-"p§.width * §<d§.§6@§) + Math.random() * -_loc8_ * 2;
               _loc9_ = (_loc9_ = -§-"p§.height * §<d§.§6@§) + Math.random() * -_loc9_ * 2;
               if(§#!§ != "")
               {
                  _loc10_ = §#!§;
                  if(§#`§ > 0)
                  {
                     _loc10_ += "_" + (1 + Math.floor(Math.random() * §#`§));
                  }
                  param1.addSimpleParticle(_loc10_,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               else
               {
                  param1.addParticle(§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               _loc6_++;
            }
         }
      }
   }
}
