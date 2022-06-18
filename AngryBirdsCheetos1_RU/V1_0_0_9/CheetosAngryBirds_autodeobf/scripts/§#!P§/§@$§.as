package §#!P§
{
   import §!!B§.b2World;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§6w§;
   import §7!U§.§2!7§;
   import §7u§.Sprite;
   
   public class §@$§ extends §2!W§
   {
      
      public static const §15§:int = 1750;
       
      
      private var §7$§:int = 0;
      
      public function §@$§(param1:§#A§, param2:Sprite, param3:b2World, param4:§6w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §-X§ = param12;
         §#b§ = param13;
      }
      
      override public function addDestructionParticles(param1:§ M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§,w§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<k§.mW * §6w§.§?!^§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<k§.mH * §6w§.§?!^§) + Math.random() * -_loc8_ * 2;
            if(§-X§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §#b§);
               param1.§9U§(§-X§ + "_" + _loc9_,§4+§.§+c§,§ M§.§&^§,§4+§.§&'§,§84§().GetPosition().x + _loc7_,§84§().GetPosition().y + _loc8_,§15§ + Math.random() * 500,"",§#]§(§<Y§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§4+§.§+c§,§ M§.§&^§,§4+§.§&'§,§84§().GetPosition().x + _loc7_,§84§().GetPosition().y + _loc8_,§15§ + Math.random() * 500,"",§#]§(§<Y§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ M§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§6w§ = §2!7§.§5G§;
         if(§1!L§ < §!w§ || §84§() == null)
         {
            _loc1_.§&>§(this);
            _loc1_.§8n§ = false;
            return;
         }
         var _loc2_:Number = x * §6w§.§?!^§;
         var _loc3_:Number = y * §6w§.§?!^§;
         var _loc4_:String = §4+§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§7$§ == 1)
         {
            _loc4_ = §4+§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§7$§ == 2)
         {
            _loc4_ = §4+§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§7$§ = (this.§7$§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§ M§.§>H§,§4+§.§2!A§,_loc2_,_loc3_,-1,"",§4+§.§=n§);
      }
   }
}
