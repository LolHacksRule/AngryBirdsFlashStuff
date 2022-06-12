package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §>2§.§!6§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §^#x§ extends §;!U§
   {
       
      
      public function §^#x§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §6$C§ = param7;
         §8#`§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§!"N§;
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
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
         var _loc2_:int = §6!9§.getParticleMaterialFromEngineMaterial(itemName);
         if(_loc2_ == §6!9§.§^!+§ && §6$C§ == "")
         {
            param1.addParticle(§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",_loc2_);
         }
         else
         {
            _loc3_ = 4;
            _loc4_ = Math.min(49,Math.max(1,§'"l§(false))) + 1;
            _loc5_ = 90;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
               _loc8_ = (_loc8_ = -§="!§.width * §!6§.§[#v§) + Math.random() * -_loc8_ * 2;
               _loc9_ = (_loc9_ = -§="!§.height * §!6§.§[#v§) + Math.random() * -_loc9_ * 2;
               if(§6$C§ != "")
               {
                  _loc10_ = §6$C§;
                  if(§8#`§ > 0)
                  {
                     _loc10_ += "_" + (1 + Math.floor(Math.random() * §8#`§));
                  }
                  param1.addSimpleParticle(_loc10_,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               else
               {
                  param1.addParticle(§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               _loc6_++;
            }
         }
      }
   }
}
