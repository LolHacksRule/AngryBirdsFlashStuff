package §4!O§
{
   import §#!T§.§&2§;
   import §+!#§.§"!6§;
   import §+!#§.§73§;
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §=!E§.Sprite;
   import §^t§.§<;§;
   import §^t§.§[I§;
   
   public class §][§ extends §73§
   {
       
      
      private var §+b§:int;
      
      public function §][§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§+b§ = 0;
      }
      
      override public function activateSpecialPower(param1:§"!6§) : Boolean
      {
         super.activateSpecialPower(param1);
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§2!U§ = §&2§.§4!1§;
         if(§7!M§ < §+z§ || §[!H§() == null)
         {
            _loc1_.§@n§(this);
            _loc1_.§;!^§ = false;
            return;
         }
         var _loc2_:Number = x * §2!U§.§&%§;
         var _loc3_:Number = y * §2!U§.§&%§;
         if(_loc1_.§;!^§)
         {
            _loc1_.particles.addParticle(§[I§.§2;§,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
            _loc1_.§;!^§ = false;
            §4G§ = 0;
         }
         else if(§!V§ > 1)
         {
            _loc1_.particles.addParticle(§[I§.§]!S§,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
         }
         else
         {
            _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL1;
            if(§4G§ == 1)
            {
               _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(§4G§ == 2)
            {
               if(this.§+b§ < 3)
               {
                  _loc4_ = §[I§.§=!V§;
                  _loc1_.particles.addParticle(_loc4_,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
                  ++this.§+b§;
               }
               _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            §4G§ = (§4G§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
         }
         if(Math.random() < §2!d§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x,§[!H§().GetPosition().y,1250,"",§[I§.§6]§(§@c§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
   }
}
