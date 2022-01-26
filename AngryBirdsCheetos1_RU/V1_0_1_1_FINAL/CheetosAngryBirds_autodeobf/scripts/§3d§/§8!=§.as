package §3d§
{
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §9t§.b2World;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §^Q§.§,^§;
   
   public class §8!=§ extends §20§
   {
      
      public static const §`h§:int = 1750;
       
      
      private var §'"§:int = 0;
      
      public function §8!=§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §6j§ = param12;
         §6!,§ = param13;
      }
      
      override public function addDestructionParticles(param1:§"^§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§6p§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5!@§.mW * §`!O§.§?!O§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5!@§.mH * §`!O§.§?!O§) + Math.random() * -_loc8_ * 2;
            if(§6j§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §6!,§);
               param1.§<w§(§6j§ + "_" + _loc9_,§7!%§.§[!b§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x + _loc7_,§=!,§().GetPosition().y + _loc8_,§`h§ + Math.random() * 500,"",§8k§(§6O§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§7!%§.§[!b§,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x + _loc7_,§=!,§().GetPosition().y + _loc8_,§`h§ + Math.random() * 500,"",§8k§(§6O§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§"^§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§`!O§ = §,^§.§0K§;
         if(§2>§ < §,!,§ || §=!,§() == null)
         {
            _loc1_.§8W§(this);
            _loc1_.§@!8§ = false;
            return;
         }
         var _loc2_:Number = x * §`!O§.§?!O§;
         var _loc3_:Number = y * §`!O§.§?!O§;
         var _loc4_:String = §7!%§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§'"§ == 1)
         {
            _loc4_ = §7!%§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§'"§ == 2)
         {
            _loc4_ = §7!%§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§'"§ = (this.§'"§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§"^§.§ $§,§7!%§.§9!?§,_loc2_,_loc3_,-1,"",§7!%§.§?!]§);
      }
   }
}
