package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §%c§.§=!X§;
   import §+S§.b2World;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §[[§ extends §]"5§
   {
      
      public static const §3o§:int = 1750;
       
      
      private var §,U§:int = 0;
      
      public function §[[§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §'K§ = param12;
         §0V§ = param13;
      }
      
      override public function addDestructionParticles(param1:§-5§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§0&§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[!g§.mW * §!w§.§4!-§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[!g§.mH * §!w§.§4!-§) + Math.random() * -_loc8_ * 2;
            if(§'K§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §0V§);
               param1.§@"&§(§'K§ + "_" + _loc9_,§&!>§.§<!Y§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§3o§ + Math.random() * 500,"",§6H§(§!F§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§[b§(§&!>§.§<!Y§,§-5§.§5Q§,§&!>§.§&W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§3o§ + Math.random() * 500,"",§6H§(§!F§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§-5§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§!w§ = §=!X§.§!'§;
         if(§@!P§ < §'">§ || getBody() == null)
         {
            _loc1_.§5!H§(this);
            _loc1_.§3"9§ = false;
            return;
         }
         var _loc2_:Number = x * §!w§.§4!-§;
         var _loc3_:Number = y * §!w§.§4!-§;
         var _loc4_:String = §&!>§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§,U§ == 1)
         {
            _loc4_ = §&!>§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§,U§ == 2)
         {
            _loc4_ = §&!>§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§,U§ = (this.§,U§ + 1) % 3;
         _loc1_.particles.§[b§(_loc4_,§-5§.§&b§,§&!>§.§?"0§,_loc2_,_loc3_,-1,"",§&!>§.§`!g§);
      }
   }
}
