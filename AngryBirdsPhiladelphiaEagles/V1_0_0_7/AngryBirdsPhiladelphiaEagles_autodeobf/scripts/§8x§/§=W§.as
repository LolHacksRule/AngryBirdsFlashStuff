package §8x§
{
   import §"^§.§9=§;
   import §,!F§.§#§;
   import §4G§.Sprite;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §=W§ extends §8C§
   {
      
      public static const §;c§:int = 1750;
       
      
      private var §throw§:int = 0;
      
      public function §=W§(param1:§>A§, param2:Sprite, param3:b2World, param4:§#§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §]s§ = param12;
         §9S§ = param13;
      }
      
      override public function addDestructionParticles(param1:§,!'§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§?!N§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5!O§.mW * §#§.§67§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5!O§.mH * §#§.§67§) + Math.random() * -_loc8_ * 2;
            if(§]s§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §9S§);
               param1.§&!#§(§]s§ + "_" + _loc9_,§ J§.§?2§,§,!'§.§=8§,§ J§.§"H§,§]!7§().GetPosition().x + _loc7_,§]!7§().GetPosition().y + _loc8_,§;c§ + Math.random() * 500,"",§]S§(§!Z§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§ J§.§?2§,§,!'§.§=8§,§ J§.§"H§,§]!7§().GetPosition().x + _loc7_,§]!7§().GetPosition().y + _loc8_,§;c§ + Math.random() * 500,"",§]S§(§!Z§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,!'§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§#§ = §9=§.§<!@§;
         if(§<5§ < §`t§ || §]!7§() == null)
         {
            _loc1_.§@z§(this);
            _loc1_.§0!%§ = false;
            return;
         }
         var _loc2_:Number = x * §#§.§67§;
         var _loc3_:Number = y * §#§.§67§;
         var _loc4_:String = § J§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§throw§ == 1)
         {
            _loc4_ = § J§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§throw§ == 2)
         {
            _loc4_ = § J§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§throw§ = (this.§throw§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§,!'§.§!!-§,§ J§.§#n§,_loc2_,_loc3_,-1,"",§ J§.§@!7§);
      }
   }
}
