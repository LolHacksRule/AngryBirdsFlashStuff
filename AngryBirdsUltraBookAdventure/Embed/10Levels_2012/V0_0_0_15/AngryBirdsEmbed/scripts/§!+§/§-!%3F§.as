package §!+§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §5H§.§[k§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §-!?§ extends §>G§
   {
       
      
      private var §7!'§:int = 0;
      
      public function §-!?§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         § !4§ = param12;
         §?C§ = param13;
      }
      
      override public function addDestructionParticles(param1:§#C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§[_§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§'j§.mW * §7!,§.§ '§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§'j§.mH * §7!,§.§ '§) + Math.random() * -_loc8_ * 2;
            if(§ !4§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §?C§);
               param1.§=!B§(§ !4§ + "_" + _loc9_,§!8§.§!!;§,§#C§.§#!'§,§!8§.§3!'§,§`t§().GetPosition().x + _loc7_,§`t§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§3^§(§2Z§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§'!;§(§!8§.§!!;§,§#C§.§#!'§,§!8§.§3!'§,§`t§().GetPosition().x + _loc7_,§`t§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§3^§(§2Z§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§#C§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§7!,§ = §[k§.§&@§;
         if(§`0§ < § !,§ || §`t§() == null)
         {
            _loc1_.§+!?§(this);
            _loc1_.§]L§ = false;
            return;
         }
         var _loc2_:Number = x * §7!,§.§ '§;
         var _loc3_:Number = y * §7!,§.§ '§;
         var _loc4_:String = §!8§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§7!'§ == 1)
         {
            _loc4_ = §!8§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§7!'§ == 2)
         {
            _loc4_ = §!8§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§7!'§ = (this.§7!'§ + 1) % 3;
         _loc1_.particles.§'!;§(_loc4_,§#C§.§=!7§,§!8§.§"_§,_loc2_,_loc3_,-1,"",§!8§.§!;§);
      }
   }
}
