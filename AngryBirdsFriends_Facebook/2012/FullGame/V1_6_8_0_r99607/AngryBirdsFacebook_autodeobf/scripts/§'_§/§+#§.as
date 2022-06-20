package §'_§
{
   import § !k§.b2World;
   import §+I§.§9!%§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§[!;§;
   import §]&§.Sprite;
   
   public class §+#§ extends §9V§
   {
      
      public static const §`n§:int = 1750;
       
      
      private var §]!4§:int = 0;
      
      public function §+#§(param1:§=!&§, param2:Sprite, param3:b2World, param4:§[!;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §"!$§ = param12;
         §+!N§ = param13;
      }
      
      override public function addDestructionParticles(param1:§,>§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§+"9§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§@!'§.mW * §[!;§.§4!O§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§@!'§.mH * §[!;§.§4!O§) + Math.random() * -_loc8_ * 2;
            if(§"!$§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §+!N§);
               param1.§`K§(§"!$§ + "_" + _loc9_,§5!$§.§5%§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x + _loc7_,§2"7§().GetPosition().y + _loc8_,§`n§ + Math.random() * 500,"",§9!Z§(§+%§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§&!J§(§5!$§.§5%§,§,>§.§^!<§,§5!$§.§2!&§,§2"7§().GetPosition().x + _loc7_,§2"7§().GetPosition().y + _loc8_,§`n§ + Math.random() * 500,"",§9!Z§(§+%§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,>§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§[!;§ = §9!%§.§!!M§;
         if(§9"8§ < § i§ || §2"7§() == null)
         {
            _loc1_.§4y§(this);
            _loc1_.§=@§ = false;
            return;
         }
         var _loc2_:Number = x * §[!;§.§4!O§;
         var _loc3_:Number = y * §[!;§.§4!O§;
         var _loc4_:String = §5!$§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§]!4§ == 1)
         {
            _loc4_ = §5!$§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§]!4§ == 2)
         {
            _loc4_ = §5!$§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§]!4§ = (this.§]!4§ + 1) % 3;
         _loc1_.particles.§&!J§(_loc4_,§,>§.§2"=§,§5!$§.§`"1§,_loc2_,_loc3_,-1,"",§5!$§.§6!'§);
      }
   }
}
