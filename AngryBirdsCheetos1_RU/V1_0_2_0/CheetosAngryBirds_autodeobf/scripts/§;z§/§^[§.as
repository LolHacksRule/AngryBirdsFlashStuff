package §;z§
{
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §4!&§.b2World;
   import §@!W§.§8!W§;
   
   public class §^[§ extends §!+§
   {
      
      public static const §!2§:int = 1750;
       
      
      private var §,!C§:int = 0;
      
      public function §^[§(param1:§]!N§, param2:Sprite, param3:b2World, param4:§%9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §<N§ = param12;
         §9!#§ = param13;
      }
      
      override public function addDestructionParticles(param1:§^Z§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§4T§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§=t§.mW * §%9§.§1[§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§=t§.mH * §%9§.§1[§) + Math.random() * -_loc8_ * 2;
            if(§<N§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §9!#§);
               param1.§?L§(§<N§ + "_" + _loc9_,§+e§.§1f§,§^Z§.§<!%§,§+e§.§]@§,§^!V§().GetPosition().x + _loc7_,§^!V§().GetPosition().y + _loc8_,§!2§ + Math.random() * 500,"",§super§(§10§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§+e§.§1f§,§^Z§.§<!%§,§+e§.§]@§,§^!V§().GetPosition().x + _loc7_,§^!V§().GetPosition().y + _loc8_,§!2§ + Math.random() * 500,"",§super§(§10§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§^Z§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§%9§ = §8!W§.§=X§;
         if(§^,§ < §[!,§ || §^!V§() == null)
         {
            _loc1_.§=J§(this);
            _loc1_.§+!B§ = false;
            return;
         }
         var _loc2_:Number = x * §%9§.§1[§;
         var _loc3_:Number = y * §%9§.§1[§;
         var _loc4_:String = §+e§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§,!C§ == 1)
         {
            _loc4_ = §+e§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§,!C§ == 2)
         {
            _loc4_ = §+e§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§,!C§ = (this.§,!C§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§^Z§.§'F§,§+e§.§5%§,_loc2_,_loc3_,-1,"",§+e§.§8!N§);
      }
   }
}
