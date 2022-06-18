package §&c§
{
   import §#;§.§4!8§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;q§.Sprite;
   import §`t§.§^?§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;P§ extends §9h§
   {
      
      public static const §@g§:int = 1750;
       
      
      private var §!!2§:int = 0;
      
      public function §;P§(param1:§<'§, param2:Sprite, param3:b2World, param4:§4!8§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §?D§ = param12;
         §>!"§ = param13;
      }
      
      override public function addDestructionParticles(param1:§"g§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§`M§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<!'§.mW * §4!8§.§5+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<!'§.mH * §4!8§.§5+§) + Math.random() * -_loc8_ * 2;
            if(§?D§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §>!"§);
               param1.§@<§(§?D§ + "_" + _loc9_,§<D§.§"!4§,§"g§.§;$§,§<D§.§'K§,§68§().GetPosition().x + _loc7_,§68§().GetPosition().y + _loc8_,§@g§ + Math.random() * 500,"",§;5§(§+!!§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§[!5§(§<D§.§"!4§,§"g§.§;$§,§<D§.§'K§,§68§().GetPosition().x + _loc7_,§68§().GetPosition().y + _loc8_,§@g§ + Math.random() * 500,"",§;5§(§+!!§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§"g§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§4!8§ = §^?§.§]!%§;
         if(§<Y§ < §;u§ || §68§() == null)
         {
            _loc1_.§]%§(this);
            _loc1_.§3T§ = false;
            return;
         }
         var _loc2_:Number = x * §4!8§.§5+§;
         var _loc3_:Number = y * §4!8§.§5+§;
         var _loc4_:String = §<D§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§!!2§ == 1)
         {
            _loc4_ = §<D§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§!!2§ == 2)
         {
            _loc4_ = §<D§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§!!2§ = (this.§!!2§ + 1) % 3;
         _loc1_.particles.§[!5§(_loc4_,§"g§.§#e§,§<D§.§6#§,_loc2_,_loc3_,-1,"",§<D§.§!!&§);
      }
   }
}
