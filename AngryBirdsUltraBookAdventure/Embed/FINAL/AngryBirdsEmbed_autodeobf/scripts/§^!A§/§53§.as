package §^!A§
{
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §53§ extends §;!%§
   {
      
      public static const §5!=§:int = 1750;
       
      
      private var §7O§:int = 0;
      
      public function §53§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §4N§ = param12;
         §0!>§ = param13;
      }
      
      override public function addDestructionParticles(param1:§2!H§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§1!=§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§;S§.mW * § !§.§`J§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§;S§.mH * § !§.§`J§) + Math.random() * -_loc8_ * 2;
            if(§4N§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §0!>§);
               param1.§?e§(§4N§ + "_" + _loc9_,§<!6§.§1X§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + _loc7_,§'[§().GetPosition().y + _loc8_,§5!=§ + Math.random() * 500,"",§4!8§(§1>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§4#§(§<!6§.§1X§,§2!H§.§"!5§,§<!6§.§!E§,§'[§().GetPosition().x + _loc7_,§'[§().GetPosition().y + _loc8_,§5!=§ + Math.random() * 500,"",§4!8§(§1>§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§ !§ = §=w§.§ o§;
         if(§`Y§ < §@!§ || §'[§() == null)
         {
            _loc1_.§[r§(this);
            _loc1_.§?<§ = false;
            return;
         }
         var _loc2_:Number = x * § !§.§`J§;
         var _loc3_:Number = y * § !§.§`J§;
         var _loc4_:String = §<!6§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§7O§ == 1)
         {
            _loc4_ = §<!6§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§7O§ == 2)
         {
            _loc4_ = §<!6§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§7O§ = (this.§7O§ + 1) % 3;
         _loc1_.particles.§4#§(_loc4_,§2!H§.§+!7§,§<!6§.§8!!§,_loc2_,_loc3_,-1,"",§<!6§.§2!2§);
      }
   }
}
