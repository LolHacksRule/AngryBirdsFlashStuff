package §-!&§
{
   import § N§.Sprite;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1Q§ extends §3!,§
   {
      
      public static const §>s§:int = 1750;
       
      
      private var §>!-§:int = 0;
      
      public function §1Q§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §7!H§ = param12;
         §8!O§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5!5§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§8!D§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§3! §.mW * §1r§.§[M§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§3! §.mH * §1r§.§[M§) + Math.random() * -_loc8_ * 2;
            if(§7!H§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §8!O§);
               param1.§;!8§(§7!H§ + "_" + _loc9_,§8R§.§+`§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x + _loc7_,§`%§().GetPosition().y + _loc8_,§>s§ + Math.random() * 500,"",§[q§(§4V§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§8R§.§+`§,§5!5§.§-U§,§8R§.§`R§,§`%§().GetPosition().x + _loc7_,§`%§().GetPosition().y + _loc8_,§>s§ + Math.random() * 500,"",§[q§(§4V§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5!5§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§1r§ = §#! §.§`'§;
         if(§8!2§ < §53§ || §`%§() == null)
         {
            _loc1_.§3f§(this);
            _loc1_.§5!Q§ = false;
            return;
         }
         var _loc2_:Number = x * §1r§.§[M§;
         var _loc3_:Number = y * §1r§.§[M§;
         var _loc4_:String = §8R§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§>!-§ == 1)
         {
            _loc4_ = §8R§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§>!-§ == 2)
         {
            _loc4_ = §8R§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§>!-§ = (this.§>!-§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§5!5§.§&!J§,§8R§.§!J§,_loc2_,_loc3_,-1,"",§8R§.§0k§);
      }
   }
}
