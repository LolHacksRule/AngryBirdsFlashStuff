package §^!$§
{
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §0!b§.§#!=§;
   import §<!L§.b2World;
   import §?=§.§&j§;
   import §?=§.§8S§;
   
   public class §8!U§ extends §?![§
   {
      
      public static const §4X§:int = 1750;
       
      
      private var §1!,§:int = 0;
      
      public function §8!U§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §#]§ = param12;
         §?!=§ = param13;
      }
      
      override public function addDestructionParticles(param1:§&j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§>e§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^!9§.mW * §>!2§.§9d§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^!9§.mH * §>!2§.§9d§) + Math.random() * -_loc8_ * 2;
            if(§#]§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §?!=§);
               param1.§@O§(§#]§ + "_" + _loc9_,§8S§.§=Y§,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x + _loc7_,§#!!§().GetPosition().y + _loc8_,§4X§ + Math.random() * 500,"",§"0§(§=^§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§<§(§8S§.§=Y§,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x + _loc7_,§#!!§().GetPosition().y + _loc8_,§4X§ + Math.random() * 500,"",§"0§(§=^§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§&j§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§>!2§ = §#!=§.§&![§;
         if(§+m§ < §>!`§ || §#!!§() == null)
         {
            _loc1_.§ V§(this);
            _loc1_.§ P§ = false;
            return;
         }
         var _loc2_:Number = x * §>!2§.§9d§;
         var _loc3_:Number = y * §>!2§.§9d§;
         var _loc4_:String = §8S§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§1!,§ == 1)
         {
            _loc4_ = §8S§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§1!,§ == 2)
         {
            _loc4_ = §8S§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§1!,§ = (this.§1!,§ + 1) % 3;
         _loc1_.particles.§<§(_loc4_,§&j§.§^K§,§8S§.§1B§,_loc2_,_loc3_,-1,"",§8S§.§!B§);
      }
   }
}
