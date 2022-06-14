package §9"%§
{
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   
   public class §&!g§ extends §&!r§
   {
      
      public static const §!" §:int = 1750;
       
      
      private var §,"#§:int = 0;
      
      public function §&!g§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         § R§ = param12;
         §9"B§ = param13;
      }
      
      override public function addDestructionParticles(param1:§^!f§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§;!"§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§"!&§.mW * §9"3§.§'"F§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§"!&§.mH * §9"3§.§'"F§) + Math.random() * -_loc8_ * 2;
            if(§ R§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §9"B§);
               param1.§4!P§(§ R§ + "_" + _loc9_,§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + _loc7_,§=!y§().GetPosition().y + _loc8_,§!" § + Math.random() * 500,"",§,">§(§2!>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§;!u§(§'G§.§"!z§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + _loc7_,§=!y§().GetPosition().y + _loc8_,§!" § + Math.random() * 500,"",§,">§(§2!>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§9"3§ = §#6§.§6!z§;
         if(§[" § < §@!h§ || §=!y§() == null)
         {
            _loc1_.§7">§(this);
            _loc1_.§!!B§ = false;
            return;
         }
         var _loc2_:Number = x * §9"3§.§'"F§;
         var _loc3_:Number = y * §9"3§.§'"F§;
         var _loc4_:String = §'G§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§,"#§ == 1)
         {
            _loc4_ = §'G§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§,"#§ == 2)
         {
            _loc4_ = §'G§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§,"#§ = (this.§,"#§ + 1) % 3;
         _loc1_.particles.§;!u§(_loc4_,§^!f§.§?i§,§'G§.§9"4§,_loc2_,_loc3_,-1,"",§'G§.§9!q§);
      }
   }
}
