package §%!&§
{
   import §%h§.§5X§;
   import §?!E§.b2World;
   import §?c§.§3!u§;
   import §?c§.final;
   import §]!2§.Sprite;
   import §`%§.§8!0§;
   
   public class §&![§ extends §;!x§
   {
      
      public static const §9!H§:int = 1750;
       
      
      private var §^f§:int = 0;
      
      public function §&![§(param1:§'"-§, param2:Sprite, param3:b2World, param4:§5X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §0!5§ = param12;
         §6!4§ = param13;
      }
      
      override public function addDestructionParticles(param1:final) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§""&§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§+G§.mW * §5X§.§,!m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§+G§.mH * §5X§.§,!m§) + Math.random() * -_loc8_ * 2;
            if(§0!5§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §6!4§);
               param1.§6!t§(§0!5§ + "_" + _loc9_,§3!u§.§-!§,final.§0e§,§3!u§.§[!%§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§9!H§ + Math.random() * 500,"",§!"5§(§6u§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§=!J§(§3!u§.§-!§,final.§0e§,§3!u§.§[!%§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§9!H§ + Math.random() * 500,"",§!"5§(§6u§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:final, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§5X§ = §8!0§.§?2§;
         if(§^!n§ < §?!`§ || getBody() == null)
         {
            _loc1_.§;!T§(this);
            _loc1_.§-6§ = false;
            return;
         }
         var _loc2_:Number = x * §5X§.§,!m§;
         var _loc3_:Number = y * §5X§.§,!m§;
         var _loc4_:String = §3!u§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§^f§ == 1)
         {
            _loc4_ = §3!u§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§^f§ == 2)
         {
            _loc4_ = §3!u§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§^f§ = (this.§^f§ + 1) % 3;
         _loc1_.particles.§=!J§(_loc4_,final.§=!o§,§3!u§.§0-§,_loc2_,_loc3_,-1,"",§3!u§.§'o§);
      }
   }
}
