package §>!5§
{
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §;"i§ extends §^"9§
   {
       
      
      private var §'"h§:int = 0;
      
      public function §;"i§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §#"6§ = param7;
         §##H§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§0#l§;
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
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
         var _loc2_:int = §2"^§.getParticleMaterialFromEngineMaterial(itemName);
         if(_loc2_ == §2"^§.§5#y§ && §#"6§ == "")
         {
            param1.addParticle(§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",_loc2_);
         }
         else
         {
            _loc3_ = 4;
            _loc4_ = Math.min(49,Math.max(1,§'Y§(false))) + 1;
            _loc5_ = 90;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
               _loc8_ = (_loc8_ = -§implements§.width * §!!S§.§,"3§) + Math.random() * -_loc8_ * 2;
               _loc9_ = (_loc9_ = -§implements§.height * §!!S§.§,"3§) + Math.random() * -_loc9_ * 2;
               if(§#"6§ != "")
               {
                  _loc10_ = §#"6§;
                  if(§##H§ > 0)
                  {
                     _loc10_ += "_" + (1 + Math.floor(Math.random() * §##H§));
                  }
                  param1.addSimpleParticle(_loc10_,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               else
               {
                  param1.addParticle(§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x + _loc8_,getBody().GetPosition().y + _loc9_,1750 + Math.random() * 500,"",_loc2_,_loc3_ * Math.cos(_loc7_),-_loc3_ * Math.sin(_loc7_),10,_loc3_ * 50);
               }
               _loc6_++;
            }
         }
      }
   }
}
