package § ""§
{
   import §'x§.§?z§;
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §1!Y§.Sprite;
   import §1!v§.§@%§;
   import §7z§.b2World;
   
   public class §?!w§ extends §%,§
   {
      
      public static const §0]§:int = 1750;
       
      
      private var §=!y§:int = 0;
      
      public function §?!w§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §5]§ = param12;
         §5"-§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5!G§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§3C§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§>!M§.mW * §@%§.§?k§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§>!M§.mH * §@%§.§?k§) + Math.random() * -_loc8_ * 2;
            if(§5]§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §5"-§);
               param1.§-!n§(§5]§ + "_" + _loc9_,§>!]§.§#&§,§5!G§.§5N§,§>!]§.§@!q§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§0]§ + Math.random() * 500,"",§`!9§(§"g§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§,D§(§>!]§.§#&§,§5!G§.§5N§,§>!]§.§@!q§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§0]§ + Math.random() * 500,"",§`!9§(§"g§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5!G§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§@%§ = §?z§.§=7§;
         if(§=!,§ < §,!f§ || getBody() == null)
         {
            _loc1_.§]A§(this);
            _loc1_.§ !"§ = false;
            return;
         }
         var _loc2_:Number = x * §@%§.§?k§;
         var _loc3_:Number = y * §@%§.§?k§;
         var _loc4_:String = §>!]§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§=!y§ == 1)
         {
            _loc4_ = §>!]§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§=!y§ == 2)
         {
            _loc4_ = §>!]§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§=!y§ = (this.§=!y§ + 1) % 3;
         _loc1_.particles.§,D§(_loc4_,§5!G§.§8N§,§>!]§.§2!f§,_loc2_,_loc3_,-1,"",§>!]§.§!E§);
      }
   }
}
