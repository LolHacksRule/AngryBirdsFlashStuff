package §9!T§
{
   import §+D§.§5!P§;
   import §3-§.§1L§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §?!F§.b2World;
   import §[=§.Sprite;
   
   public class §,P§ extends §;!"§
   {
       
      
      private var § !U§:int = 0;
      
      public function §,P§(param1:§;!_§, param2:Sprite, param3:b2World, param4:§5!P§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §=W§ = param12;
         §?!G§ = param13;
      }
      
      override public function addDestructionParticles(param1:§[,§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§&@§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§1I§.mW * §5!P§.§>M§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§1I§.mH * §5!P§.§>M§) + Math.random() * -_loc8_ * 2;
            if(§=W§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §?!G§);
               param1.§!!b§(§=W§ + "_" + _loc9_,§^!U§.§`!#§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x + _loc7_,§<k§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§1!2§(§%!1§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§^!U§.§`!#§,§[,§.§'k§,§^!U§.§&6§,§<k§().GetPosition().x + _loc7_,§<k§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§1!2§(§%!1§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§[,§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§5!P§ = §1L§.§"f§;
         if(§1K§ < §0!a§ || §<k§() == null)
         {
            _loc1_.§0!#§(this);
            _loc1_.§`>§ = false;
            return;
         }
         var _loc2_:Number = x * §5!P§.§>M§;
         var _loc3_:Number = y * §5!P§.§>M§;
         var _loc4_:String = §^!U§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§ !U§ == 1)
         {
            _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§ !U§ == 2)
         {
            _loc4_ = §^!U§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§ !U§ = (this.§ !U§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§[,§.§<z§,§^!U§.§=L§,_loc2_,_loc3_,-1,"",§^!U§.§+>§);
      }
   }
}
