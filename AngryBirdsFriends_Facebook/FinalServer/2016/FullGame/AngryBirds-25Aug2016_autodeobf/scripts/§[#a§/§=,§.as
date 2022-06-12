package §[#a§
{
   import §,#L§.§!#%§;
   import §52§.§#!,§;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §=,§ extends §="@§
   {
       
      
      private var §]!J§:int = 0;
      
      public function §=,§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §-#9§ = param7;
         §]#C§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§]B§;
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = §=$4§.getParticleMaterialFromEngineMaterial(itemName);
         if(_loc2_ == §=$4§.§[!Q§)
         {
            param1.addParticle(§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.§;";§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",_loc2_);
         }
         else
         {
            _loc3_ = 4;
            _loc4_ = Math.min(49,Math.max(1,§[r§(false))) + 1;
            _loc5_ = 90;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
               _loc8_ = (_loc8_ = -§'"s§.width * §#!,§.§?$#§) + Math.random() * -_loc8_ * 2;
               _loc9_ = (_loc9_ = -§'"s§.height * §#!,§.§?$#§) + Math.random() * -_loc9_ * 2;
               if(§-#9§ != "")
               {
                  _loc10_ = 1 + Math.floor(Math.random() * §]#C§);
                  param1.addSimpleParticle(§-#9§ + "_" + _loc10_,§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               else
               {
                  param1.addParticle(§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               _loc6_++;
            }
         }
      }
   }
}
