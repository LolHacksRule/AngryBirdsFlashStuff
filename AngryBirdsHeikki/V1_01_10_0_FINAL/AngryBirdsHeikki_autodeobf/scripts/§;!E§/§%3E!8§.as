package §;!E§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§^!2§;
   import §+!8§.§-!N§;
   import §+!8§.§8d§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §9b§.§"!S§;
   
   public class §>!8§ extends §8d§
   {
       
      
      private var §#!5§:int;
      
      public function §>!8§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§#!5§ = 0;
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         super.activateSpecialPower(param1);
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§^!2§ = §"!S§.§-!7§;
         if(§[h§ < §'!V§ || §0c§() == null)
         {
            _loc1_.§9?§(this);
            _loc1_.§?j§ = false;
            return;
         }
         var _loc2_:Number = x * §^!2§.§3!S§;
         var _loc3_:Number = y * §^!2§.§3!S§;
         if(_loc1_.§?j§)
         {
            _loc1_.particles.addParticle(§!U§.§7!G§,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
            _loc1_.§?j§ = false;
            §9!Q§ = 0;
         }
         else if(§^!O§ > 1)
         {
            _loc1_.particles.addParticle(§!U§.§<+§,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
         }
         else
         {
            _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL1;
            if(§9!Q§ == 1)
            {
               _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(§9!Q§ == 2)
            {
               if(this.§#!5§ < 3)
               {
                  _loc4_ = §!U§.§-!_§;
                  _loc1_.particles.addParticle(_loc4_,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
                  ++this.§#!5§;
               }
               _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            §9!Q§ = (§9!Q§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
         }
         if(Math.random() < §?I§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x,§0c§().GetPosition().y,1250,"",§!U§.§9Z§(§>R§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
   }
}
