package §+!#§
{
   import §#!T§.§&2§;
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §=!E§.Sprite;
   import §^t§.§<;§;
   import §^t§.§[I§;
   
   public class §]!,§ extends §9!5§
   {
      
      public static const §,?§:int = 1750;
       
      
      private var §4G§:int = 0;
      
      public function §]!,§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §'H§ = param12;
         §9!L§ = param13;
      }
      
      override public function addDestructionParticles(param1:§<;§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§,!8§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!E§.mW * §2!U§.§&%§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!E§.mH * §2!U§.§&%§) + Math.random() * -_loc8_ * 2;
            if(§'H§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §9!L§);
               param1.§"-§(§'H§ + "_" + _loc9_,§[I§.§%e§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x + _loc7_,§[!H§().GetPosition().y + _loc8_,§,?§ + Math.random() * 500,"",§6]§(§@c§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§[I§.§%e§,§<;§.§&!=§,§[I§.§6G§,§[!H§().GetPosition().x + _loc7_,§[!H§().GetPosition().y + _loc8_,§,?§ + Math.random() * 500,"",§6]§(§@c§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§<;§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§2!U§ = §&2§.§4!1§;
         if(§7!M§ < §+z§ || §[!H§() == null)
         {
            _loc1_.§@n§(this);
            _loc1_.§;!^§ = false;
            return;
         }
         var _loc2_:Number = x * §2!U§.§&%§;
         var _loc3_:Number = y * §2!U§.§&%§;
         var _loc4_:String = §[I§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§4G§ == 1)
         {
            _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§4G§ == 2)
         {
            _loc4_ = §[I§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§4G§ = (this.§4G§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§<;§.§&v§,§[I§.§%]§,_loc2_,_loc3_,-1,"",§[I§.§'!=§);
      }
   }
}
