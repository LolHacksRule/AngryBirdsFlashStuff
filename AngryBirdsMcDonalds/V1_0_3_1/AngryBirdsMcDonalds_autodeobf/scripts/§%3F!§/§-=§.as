package §?!§
{
   import § !Y§.§2#§;
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   
   public class §-=§ extends §%o§
   {
      
      public static const §^9§:int = 1750;
       
      
      private var §^V§:int = 0;
      
      public function §-=§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §=!f§ = param12;
         §&C§ = param13;
      }
      
      override public function addDestructionParticles(param1:§4!-§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§9u§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§-s§.mW * § s§.§<!h§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§-s§.mH * § s§.§<!h§) + Math.random() * -_loc8_ * 2;
            if(§=!f§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §&C§);
               param1.§3!3§(§=!f§ + "_" + _loc9_,§65§.§7!Z§,§4!-§.§&#§,§65§.§ k§,§2!!§().GetPosition().x + _loc7_,§2!!§().GetPosition().y + _loc8_,§^9§ + Math.random() * 500,"",§"!o§(§3!G§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§ D§(§65§.§7!Z§,§4!-§.§&#§,§65§.§ k§,§2!!§().GetPosition().x + _loc7_,§2!!§().GetPosition().y + _loc8_,§^9§ + Math.random() * 500,"",§"!o§(§3!G§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§4!-§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§ s§ = §2#§.§"@§;
         if(§-&§ < §5!]§ || §2!!§() == null)
         {
            _loc1_.§%m§(this);
            _loc1_.§^E§ = false;
            return;
         }
         var _loc2_:Number = x * § s§.§<!h§;
         var _loc3_:Number = y * § s§.§<!h§;
         var _loc4_:String = §65§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§^V§ == 1)
         {
            _loc4_ = §65§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§^V§ == 2)
         {
            _loc4_ = §65§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§^V§ = (this.§^V§ + 1) % 3;
         _loc1_.particles.§ D§(_loc4_,§4!-§.§ <§,§65§.§"T§,_loc2_,_loc3_,-1,"",§65§.§?N§);
      }
   }
}
