package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §9b§.§"!S§;
   
   public class §1!!§ extends §,_§
   {
      
      public static const §'T§:int = 1750;
       
      
      private var §9!Q§:int = 0;
      
      public function §1!!§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §<b§ = param12;
         §"$§ = param13;
      }
      
      override public function addDestructionParticles(param1:§?F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§[x§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[r§.mW * §^!2§.§3!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[r§.mH * §^!2§.§3!S§) + Math.random() * -_loc8_ * 2;
            if(§<b§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §"$§);
               param1.§6S§(§<b§ + "_" + _loc9_,§!U§.§4!I§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x + _loc7_,§0c§().GetPosition().y + _loc8_,§'T§ + Math.random() * 500,"",§9Z§(§>R§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§!U§.§4!I§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x + _loc7_,§0c§().GetPosition().y + _loc8_,§'T§ + Math.random() * 500,"",§9Z§(§>R§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§?F§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§^!2§ = §"!S§.§-!7§;
         if(§[h§ < §'!V§ || §0c§() == null)
         {
            _loc1_.§9?§(this);
            _loc1_.§?j§ = false;
            return;
         }
         var _loc2_:Number = x * §^!2§.§3!S§;
         var _loc3_:Number = y * §^!2§.§3!S§;
         var _loc4_:String = §!U§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§9!Q§ == 1)
         {
            _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§9!Q§ == 2)
         {
            _loc4_ = §!U§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§9!Q§ = (this.§9!Q§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§?F§.§;!;§,§!U§.§<x§,_loc2_,_loc3_,-1,"",§!U§.§^!J§);
      }
   }
}
