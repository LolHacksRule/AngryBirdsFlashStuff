package §"C§
{
   import §%b§.§0!Z§;
   import §'d§.§3>§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §[W§.b2World;
   import §null §.Sprite;
   
   public class §^!=§ extends §?w§
   {
       
      
      private var §#!7§:int = 0;
      
      public function §^!=§(param1:§7s§, param2:Sprite, param3:b2World, param4:§0!Z§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §"&§ = param12;
         §1N§ = param13;
      }
      
      override public function addDestructionParticles(param1:§;m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§?Q§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9X§.mW * §0!Z§.§+n§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9X§.mH * §0!Z§.§+n§) + Math.random() * -_loc8_ * 2;
            if(§"&§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §1N§);
               param1.§<m§(§"&§ + "_" + _loc9_,§=!F§.§4r§,§;m§.§?=§,§=!F§.§'U§,§?@§().GetPosition().x + _loc7_,§?@§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2T§(§]!W§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§=!F§.§4r§,§;m§.§?=§,§=!F§.§'U§,§?@§().GetPosition().x + _loc7_,§?@§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2T§(§]!W§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§;m§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§0!Z§ = §3>§.§8!$§;
         if(§;&§ < §-#§ || §?@§() == null)
         {
            _loc1_.§;P§(this);
            _loc1_.§'!Z§ = false;
            return;
         }
         var _loc2_:Number = x * §0!Z§.§+n§;
         var _loc3_:Number = y * §0!Z§.§+n§;
         var _loc4_:String = §=!F§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§#!7§ == 1)
         {
            _loc4_ = §=!F§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§#!7§ == 2)
         {
            _loc4_ = §=!F§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§#!7§ = (this.§#!7§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§;m§.§!!`§,§=!F§.§`9§,_loc2_,_loc3_,-1,"",§=!F§.§]!-§);
      }
   }
}
