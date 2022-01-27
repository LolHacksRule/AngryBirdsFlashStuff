package §0=§
{
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import §=z§.§0!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §3!,§ extends §2p§
   {
      
      public static const §,0§:int = 1750;
       
      
      private var §+8§:int = 0;
      
      public function §3!,§(param1:§6!M§, param2:Sprite, param3:b2World, param4:§[-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §?!1§ = param12;
         §9t§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5P§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§8!?§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^c§.mW * §[-§.§;5§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^c§.mH * §[-§.§;5§) + Math.random() * -_loc8_ * 2;
            if(§?!1§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §9t§);
               param1.§`W§(§?!1§ + "_" + _loc9_,§5Z§.§@!4§,§5P§.§=!L§,§5Z§.§@!<§,§;!M§().GetPosition().x + _loc7_,§;!M§().GetPosition().y + _loc8_,§,0§ + Math.random() * 500,"",§89§(§8!J§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§5Z§.§@!4§,§5P§.§=!L§,§5Z§.§@!<§,§;!M§().GetPosition().x + _loc7_,§;!M§().GetPosition().y + _loc8_,§,0§ + Math.random() * 500,"",§89§(§8!J§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5P§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§[-§ = §0!E§.§9!B§;
         if(§[!J§ < § !L§ || §;!M§() == null)
         {
            _loc1_.§!!§(this);
            _loc1_.§false§ = false;
            return;
         }
         var _loc2_:Number = x * §[-§.§;5§;
         var _loc3_:Number = y * §[-§.§;5§;
         var _loc4_:String = §5Z§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§+8§ == 1)
         {
            _loc4_ = §5Z§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§+8§ == 2)
         {
            _loc4_ = §5Z§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§+8§ = (this.§+8§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§5P§.§]!H§,§5Z§.§2m§,_loc2_,_loc3_,-1,"",§5Z§.§3x§);
      }
   }
}
