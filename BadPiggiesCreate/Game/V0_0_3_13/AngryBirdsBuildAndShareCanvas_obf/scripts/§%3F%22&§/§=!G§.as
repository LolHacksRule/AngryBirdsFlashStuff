package §?"&§
{
   import §7!q§.b2World;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §`L§.Sprite;
   
   public class §=!G§ extends §"!q§
   {
      
      public static const §-!r§:int = 1750;
       
      
      private var §&"7§:int = 0;
      
      public function §=!G§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §,#§ = param12;
         §]o§ = param13;
      }
      
      override public function addDestructionParticles(param1:§ !>§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§,!U§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§!!8§.mW * §?!X§.§57§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§!!8§.mH * §?!X§.§57§) + Math.random() * -_loc8_ * 2;
            if(§,#§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §]o§);
               param1.§9!?§(§,#§ + "_" + _loc9_,§=!i§.§ if§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§-!r§ + Math.random() * 500,"",§6z§(§=!+§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§-?§(§=!i§.§ if§,§ !>§.§!!]§,§=!i§.§^!3§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§-!r§ + Math.random() * 500,"",§6z§(§=!+§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§ !>§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§?!X§ = §5!U§.§,!E§;
         if(§`X§ < §&<§ || getBody() == null)
         {
            _loc1_.§-3§(this);
            _loc1_.§%D§ = false;
            return;
         }
         var _loc2_:Number = x * §?!X§.§57§;
         var _loc3_:Number = y * §?!X§.§57§;
         var _loc4_:String = §=!i§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§&"7§ == 1)
         {
            _loc4_ = §=!i§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§&"7§ == 2)
         {
            _loc4_ = §=!i§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§&"7§ = (this.§&"7§ + 1) % 3;
         _loc1_.particles.§-?§(_loc4_,§ !>§.§?!T§,§=!i§.§>?§,_loc2_,_loc3_,-1,"",§=!i§.§&f§);
      }
   }
}
