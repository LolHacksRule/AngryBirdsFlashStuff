package §]r§
{
   import §3!S§.§%s§;
   import §7q§.Sprite;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §=9§.b2World;
   import §=b§.§-!K§;
   
   public class §4!O§ extends §9!R§
   {
      
      public static const §-e§:int = 1750;
       
      
      private var §-! §:int = 0;
      
      public function §4!O§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §3a§ = param12;
         §6!V§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5!Y§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§2!Q§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2!7§.mW * §-!K§.§"!C§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2!7§.mH * §-!K§.§"!C§) + Math.random() * -_loc8_ * 2;
            if(§3a§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §6!V§);
               param1.§#!<§(§3a§ + "_" + _loc9_,§3"+§.§2!6§,§5!Y§.§%R§,§3"+§.§^!q§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§-e§ + Math.random() * 500,"",§`d§(§@!'§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§continue§(§3"+§.§2!6§,§5!Y§.§%R§,§3"+§.§^!q§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§-e§ + Math.random() * 500,"",§`d§(§@!'§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5!Y§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§-!K§ = §%s§.§`!f§;
         if(§7!D§ < §@!#§ || getBody() == null)
         {
            _loc1_.§5!x§(this);
            _loc1_.§7!7§ = false;
            return;
         }
         var _loc2_:Number = x * §-!K§.§"!C§;
         var _loc3_:Number = y * §-!K§.§"!C§;
         var _loc4_:String = §3"+§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§-! § == 1)
         {
            _loc4_ = §3"+§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§-! § == 2)
         {
            _loc4_ = §3"+§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§-! § = (this.§-! § + 1) % 3;
         _loc1_.particles.§continue§(_loc4_,§5!Y§.§`W§,§3"+§.§4"1§,_loc2_,_loc3_,-1,"",§3"+§.§<K§);
      }
   }
}
