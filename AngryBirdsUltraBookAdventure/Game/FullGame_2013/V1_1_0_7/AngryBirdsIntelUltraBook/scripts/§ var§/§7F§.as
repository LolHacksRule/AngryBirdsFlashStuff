package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2World;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §`g§.Sprite;
   
   public class §7F§ extends §!u§
   {
      
      public static const §5""§:int = 1750;
       
      
      private var §]9§:int = 0;
      
      public function §7F§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §?!T§ = param12;
         §&!-§ = param13;
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§^!e§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§+!j§.mW * §5G§.§6+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§+!j§.mH * §5G§.§6+§) + Math.random() * -_loc8_ * 2;
            if(§?!T§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §&!-§);
               param1.§;4§(§?!T§ + "_" + _loc9_,§>p§.§,+§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + _loc7_,§63§().GetPosition().y + _loc8_,§5""§ + Math.random() * 500,"",§=!f§(§-!>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§-M§(§>p§.§,+§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + _loc7_,§63§().GetPosition().y + _loc8_,§5""§ + Math.random() * 500,"",§=!f§(§-!>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§5G§ = §,!s§.§=!I§;
         if(§0M§ < §]!3§ || §63§() == null)
         {
            _loc1_.§-!7§(this);
            _loc1_.§[!f§ = false;
            return;
         }
         var _loc2_:Number = x * §5G§.§6+§;
         var _loc3_:Number = y * §5G§.§6+§;
         var _loc4_:String = §>p§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§]9§ == 1)
         {
            _loc4_ = §>p§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§]9§ == 2)
         {
            _loc4_ = §>p§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§]9§ = (this.§]9§ + 1) % 3;
         _loc1_.particles.§-M§(_loc4_,§=!%§.§#,§,§>p§.§?-§,_loc2_,_loc3_,-1,"",§>p§.§9§);
      }
   }
}
