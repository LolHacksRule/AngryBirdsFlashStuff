package §4!#§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §&!M§.b2World;
   import §7"1§.§%W§;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   
   public class §&""§ extends §60§
   {
      
      public static const §6N§:int = 1750;
       
      
      private var §@$§:int = 0;
      
      public function §&""§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §^4§ = param12;
         §^r§ = param13;
      }
      
      override public function addDestructionParticles(param1:§>"=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§ !l§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!5§.mW * §"d§.§2!]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!5§.mH * §"d§.§2!]§) + Math.random() * -_loc8_ * 2;
            if(§^4§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §^r§);
               param1.§@!W§(§^4§ + "_" + _loc9_,§8u§.§6!4§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§6N§ + Math.random() * 500,"",§^p§(§%!t§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§""#§(§8u§.§6!4§,§>"=§.§3%§,§8u§.§@9§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§6N§ + Math.random() * 500,"",§^p§(§%!t§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§>"=§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§"d§ = §%W§.§5"8§;
         if(§2E§ < §<e§ || getBody() == null)
         {
            _loc1_.§^U§(this);
            _loc1_.§'"?§ = false;
            return;
         }
         var _loc2_:Number = x * §"d§.§2!]§;
         var _loc3_:Number = y * §"d§.§2!]§;
         var _loc4_:String = §8u§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§@$§ == 1)
         {
            _loc4_ = §8u§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§@$§ == 2)
         {
            _loc4_ = §8u§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§@$§ = (this.§@$§ + 1) % 3;
         _loc1_.particles.§""#§(_loc4_,§>"=§.§ J§,§8u§.§6!8§,_loc2_,_loc3_,-1,"",§8u§.§^t§);
      }
   }
}
