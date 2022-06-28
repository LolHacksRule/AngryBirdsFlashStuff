package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   
   public class §,Y§ extends §`!_§
   {
       
      
      private var §?!=§:int = 0;
      
      public function §,Y§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §&;§ = param12;
         §7#§ = param13;
      }
      
      override public function addDestructionParticles(param1:§^z§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§;a§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§7![§.mW * §'u§.§18§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§7![§.mH * §'u§.§18§) + Math.random() * -_loc8_ * 2;
            if(§&;§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §7#§);
               param1.§2!c§(§&;§ + "_" + _loc9_,§9!B§.§+-§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x + _loc7_,§3J§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'!4§(§^r§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§#Z§(§9!B§.§+-§,§^z§.§!!B§,§9!B§.§5!G§,§3J§().GetPosition().x + _loc7_,§3J§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'!4§(§^r§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§^z§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§'u§ = §^!c§.§5!Y§;
         if(§&!>§ < §]l§ || §3J§() == null)
         {
            _loc1_.§+N§(this);
            _loc1_.§6u§ = false;
            return;
         }
         var _loc2_:Number = x * §'u§.§18§;
         var _loc3_:Number = y * §'u§.§18§;
         var _loc4_:String = §9!B§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§?!=§ == 1)
         {
            _loc4_ = §9!B§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§?!=§ == 2)
         {
            _loc4_ = §9!B§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§?!=§ = (this.§?!=§ + 1) % 3;
         _loc1_.particles.§#Z§(_loc4_,§^z§.§#1§,§9!B§.§4!o§,_loc2_,_loc3_,-1,"",§9!B§.§!L§);
      }
   }
}
