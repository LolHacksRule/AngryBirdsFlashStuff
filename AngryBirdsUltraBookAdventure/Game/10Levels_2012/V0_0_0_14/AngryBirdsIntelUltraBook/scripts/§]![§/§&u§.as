package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §5i§.§4!]§;
   import §9E§.Sprite;
   
   public class §&u§ extends §4!H§
   {
       
      
      private var §@r§:int = 0;
      
      public function §&u§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §`r§ = param12;
         §`!b§ = param13;
      }
      
      override public function addDestructionParticles(param1:§,n§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§=U§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[!"§.mW * §-!7§.§8!r§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[!"§.mH * §-!7§.§8!r§) + Math.random() * -_loc8_ * 2;
            if(§`r§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §`!b§);
               param1.§[!3§(§`r§ + "_" + _loc9_,§6Q§.§"!?§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x + _loc7_,§+$§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§5r§(§@!p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§=!K§(§6Q§.§"!?§,§,n§.§9!&§,§6Q§.§?G§,§+$§().GetPosition().x + _loc7_,§+$§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§5r§(§@!p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§,n§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§-!7§ = §4!]§.§8C§;
         if(§%,§ < §0K§ || §+$§() == null)
         {
            _loc1_.§3!+§(this);
            _loc1_.§4!$§ = false;
            return;
         }
         var _loc2_:Number = x * §-!7§.§8!r§;
         var _loc3_:Number = y * §-!7§.§8!r§;
         var _loc4_:String = §6Q§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§@r§ == 1)
         {
            _loc4_ = §6Q§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§@r§ == 2)
         {
            _loc4_ = §6Q§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§@r§ = (this.§@r§ + 1) % 3;
         _loc1_.particles.§=!K§(_loc4_,§,n§.§implements§,§6Q§.§,e§,_loc2_,_loc3_,-1,"",§6Q§.§-@§);
      }
   }
}
