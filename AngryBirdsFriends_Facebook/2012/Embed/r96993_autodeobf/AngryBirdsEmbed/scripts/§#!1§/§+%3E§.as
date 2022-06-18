package §#!1§
{
   import §>%§.§]3§;
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import §`i§.§2W§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §+>§ extends §4!,§
   {
       
      
      private var §1w§:int = 0;
      
      public function §+>§(param1:§;^§, param2:Sprite, param3:b2World, param4:§2W§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §=!H§ = param12;
         §[W§ = param13;
      }
      
      override public function addDestructionParticles(param1:§=j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§%!F§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§>7§.mW * §2W§.§0;§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§>7§.mH * §2W§.§0;§) + Math.random() * -_loc8_ * 2;
            if(§=!H§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §[W§);
               param1.§&!1§(§=!H§ + "_" + _loc9_,§4!F§.§;+§,§=j§.§[m§,§4!F§.§1E§,§!v§().GetPosition().x + _loc7_,§!v§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§9-§(§=p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§#!B§(§4!F§.§;+§,§=j§.§[m§,§4!F§.§1E§,§!v§().GetPosition().x + _loc7_,§!v§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§9-§(§=p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§=j§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§2W§ = §]3§.§;v§;
         if(§,s§ < §?!+§ || §!v§() == null)
         {
            _loc1_.§3t§(this);
            _loc1_.§^$§ = false;
            return;
         }
         var _loc2_:Number = x * §2W§.§0;§;
         var _loc3_:Number = y * §2W§.§0;§;
         var _loc4_:String = §4!F§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§1w§ == 1)
         {
            _loc4_ = §4!F§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§1w§ == 2)
         {
            _loc4_ = §4!F§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§1w§ = (this.§1w§ + 1) % 3;
         _loc1_.particles.§#!B§(_loc4_,§=j§.§]O§,§4!F§.§42§,_loc2_,_loc3_,-1,"",§4!F§.§7k§);
      }
   }
}
