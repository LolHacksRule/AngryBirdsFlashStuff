package §,y§
{
   import §+D§.§5!P§;
   import §3-§.§1L§;
   import §9!T§.§;!_§;
   import §9!T§.§;W§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §0J§ extends §;W§
   {
       
      
      private var §2!%§:int;
      
      public function §0J§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§2!%§ = 0;
      }
      
      override public function activateSpecialPower(param1:§;!_§) : Boolean
      {
         super.activateSpecialPower(param1);
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§5!P§ = §1L§.§"f§;
         if(§1K§ < §0!a§ || §<k§() == null)
         {
            _loc1_.§0!#§(this);
            _loc1_.§`>§ = false;
            return;
         }
         var _loc2_:Number = x * §5!P§.§>M§;
         var _loc3_:Number = y * §5!P§.§>M§;
         if(_loc1_.§`>§)
         {
            _loc1_.particles.addParticle(§^!U§.§3C§,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
            _loc1_.§`>§ = false;
            § !U§ = 0;
         }
         else if(§9j§ > 1)
         {
            _loc1_.particles.addParticle(§^!U§.§,p§,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
         }
         else
         {
            _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL1;
            if(§ !U§ == 1)
            {
               _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(§ !U§ == 2)
            {
               if(this.§2!%§ < 3)
               {
                  _loc4_ = §^!U§.§^!#§;
                  _loc1_.particles.addParticle(_loc4_,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
                  ++this.§2!%§;
               }
               _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            § !U§ = (§ !U§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
         }
         if(Math.random() < §1u§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x,§<k§().GetPosition().y,1250,"",§^!U§.§1!2§(§%!1§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
   }
}
