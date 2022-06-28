package §8u§
{
   import §+!?§.§"h§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §;X§ extends §0r§
   {
       
      
      private var §2!I§:int = 0;
      
      public function §;X§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §+M§ = param12;
         §?!I§ = param13;
      }
      
      override public function addDestructionParticles(param1:§;x§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§;?§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§7!;§.mW * §!E§.§#N§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§7!;§.mH * §!E§.§#N§) + Math.random() * -_loc8_ * 2;
            if(§+M§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §?!I§);
               param1.§;w§(§+M§ + "_" + _loc9_,§,i§.§+P§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x + _loc7_,§?n§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?Q§(§>!"§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§8"§(§,i§.§+P§,§;x§.§]+§,§,i§.§6I§,§?n§().GetPosition().x + _loc7_,§?n§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?Q§(§>!"§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§;x§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§!E§ = §"h§.§1C§;
         if(§@^§ < §%!J§ || §?n§() == null)
         {
            _loc1_.§%a§(this);
            _loc1_.§?5§ = false;
            return;
         }
         var _loc2_:Number = x * §!E§.§#N§;
         var _loc3_:Number = y * §!E§.§#N§;
         var _loc4_:String = §,i§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§2!I§ == 1)
         {
            _loc4_ = §,i§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§2!I§ == 2)
         {
            _loc4_ = §,i§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§2!I§ = (this.§2!I§ + 1) % 3;
         _loc1_.particles.§8"§(_loc4_,§;x§.§4!D§,§,i§.§^_§,_loc2_,_loc3_,-1,"",§,i§.§5! §);
      }
   }
}
