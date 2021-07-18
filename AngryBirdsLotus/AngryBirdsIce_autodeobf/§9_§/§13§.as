package §9_§
{
   import §!Y§.§[o§;
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §13§ extends §+>§
   {
       
      
      private var §9l§:int = 0;
      
      public function §13§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§>=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§8@§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<p§.mW * §2^§.§,]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<p§.mH * §2^§.§,]§) + Math.random() * -_loc8_ * 2;
            param1.§-X§(§'b§.§=!A§,§>=§.§>!5§,§'b§.§=<§,§>b§().GetPosition().x + _loc7_,§>b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'b§.§@#§(§57§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§>=§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§2^§ = §[o§.§='§;
         if(§8!'§ < §[!3§ || §>b§() == null)
         {
            _loc1_.§%!-§(this);
            _loc1_.§^t§ = false;
            return;
         }
         var _loc2_:Number = x * §2^§.§,]§;
         var _loc3_:Number = y * §2^§.§,]§;
         var _loc4_:String = §'b§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§9l§ == 1)
         {
            _loc4_ = §'b§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§9l§ == 2)
         {
            _loc4_ = §'b§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§9l§ = (this.§9l§ + 1) % 3;
         _loc1_.particles.§-X§(_loc4_,§>=§.§8'§,§'b§.§6D§,_loc2_,_loc3_,-1,"",§'b§.§9X§);
      }
   }
}
