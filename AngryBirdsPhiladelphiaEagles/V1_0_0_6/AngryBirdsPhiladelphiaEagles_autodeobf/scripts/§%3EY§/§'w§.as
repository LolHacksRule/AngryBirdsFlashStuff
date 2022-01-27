package §>Y§
{
   import §&b§.§[F§;
   import §4!-§.§%o§;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §'w§ extends §#o§
   {
      
      public static const §<!>§:int = 1750;
       
      
      private var §0c§:int = 0;
      
      public function §'w§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §&X§ = param12;
         §50§ = param13;
      }
      
      override public function addDestructionParticles(param1:§ try§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§1+§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§%!B§.mW * §%o§.§]!?§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§%!B§.mH * §%o§.§]!?§) + Math.random() * -_loc8_ * 2;
            if(§&X§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §50§);
               param1.§&y§(§&X§ + "_" + _loc9_,§5!C§.§,!,§,§ try§.§4!+§,§5!C§.§'! §,§[5§().GetPosition().x + _loc7_,§[5§().GetPosition().y + _loc8_,§<!>§ + Math.random() * 500,"",§ 4§(§]q§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§5!C§.§,!,§,§ try§.§4!+§,§5!C§.§'! §,§[5§().GetPosition().x + _loc7_,§[5§().GetPosition().y + _loc8_,§<!>§ + Math.random() * 500,"",§ 4§(§]q§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ try§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§%o§ = §[F§.§9u§;
         if(§=4§ < §72§ || §[5§() == null)
         {
            _loc1_.§`!I§(this);
            _loc1_.§?6§ = false;
            return;
         }
         var _loc2_:Number = x * §%o§.§]!?§;
         var _loc3_:Number = y * §%o§.§]!?§;
         var _loc4_:String = §5!C§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§0c§ == 1)
         {
            _loc4_ = §5!C§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§0c§ == 2)
         {
            _loc4_ = §5!C§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§0c§ = (this.§0c§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§ try§.§`!+§,§5!C§.§?!'§,_loc2_,_loc3_,-1,"",§5!C§.§!E§);
      }
   }
}
