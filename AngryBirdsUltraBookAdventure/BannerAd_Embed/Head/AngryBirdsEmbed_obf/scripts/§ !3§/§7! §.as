package § !3§
{
   import §"!5§.§,!!§;
   import §%-§.Sprite;
   import §%x§.§#;§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §7! § extends §'§
   {
       
      
      private var §8r§:int = 0;
      
      public function §7! §(param1:§]!9§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §32§ = param12;
         §2!1§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5b§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§^'§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§"0§.mW * §#;§.§`!2§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§"0§.mH * §#;§.§`!2§) + Math.random() * -_loc8_ * 2;
            if(§32§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §2!1§);
               param1.§9!§(§32§ + "_" + _loc9_,§2S§.§#X§,§5b§.§?D§,§2S§.§9!>§,§9! §().GetPosition().x + _loc7_,§9! §().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§#!2§(§+i§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§ t§(§2S§.§#X§,§5b§.§?D§,§2S§.§9!>§,§9! §().GetPosition().x + _loc7_,§9! §().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§#!2§(§+i§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5b§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§#;§ = §,!!§.§;4§;
         if(§7j§ < §`9§ || §9! §() == null)
         {
            _loc1_.§=r§(this);
            _loc1_.§^!?§ = false;
            return;
         }
         var _loc2_:Number = x * §#;§.§`!2§;
         var _loc3_:Number = y * §#;§.§`!2§;
         var _loc4_:String = §2S§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§8r§ == 1)
         {
            _loc4_ = §2S§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§8r§ == 2)
         {
            _loc4_ = §2S§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§8r§ = (this.§8r§ + 1) % 3;
         _loc1_.particles.§ t§(_loc4_,§5b§.§[M§,§2S§.§^r§,_loc2_,_loc3_,-1,"",§2S§.§`+§);
      }
   }
}
