package § T§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §7z§.§]!-§;
   import §;!X§.§7`§;
   
   public class §<>§ extends §"!2§
   {
       
      
      private var §`!7§:int = 0;
      
      public function §<>§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §>!Y§ = param12;
         §0F§ = param13;
      }
      
      override public function addDestructionParticles(param1:§0m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§,!E§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9t§.mW * §]!-§.§>C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9t§.mH * §]!-§.§>C§) + Math.random() * -_loc8_ * 2;
            if(§>!Y§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §0F§);
               param1.§4!Q§(§>!Y§ + "_" + _loc9_,§^!_§.§3!V§,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x + _loc7_,§][§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2!N§(§9@§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§^!_§.§3!V§,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x + _loc7_,§][§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2!N§(§9@§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0m§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§]!-§ = §7`§.§2'§;
         if(§'!"§ < §get § || §][§() == null)
         {
            _loc1_.§5F§(this);
            _loc1_.§>7§ = false;
            return;
         }
         var _loc2_:Number = x * §]!-§.§>C§;
         var _loc3_:Number = y * §]!-§.§>C§;
         var _loc4_:String = §^!_§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§`!7§ == 1)
         {
            _loc4_ = §^!_§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§`!7§ == 2)
         {
            _loc4_ = §^!_§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§`!7§ = (this.§`!7§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§0m§.§#4§,§^!_§.§@q§,_loc2_,_loc3_,-1,"",§^!_§.§6"§);
      }
   }
}
