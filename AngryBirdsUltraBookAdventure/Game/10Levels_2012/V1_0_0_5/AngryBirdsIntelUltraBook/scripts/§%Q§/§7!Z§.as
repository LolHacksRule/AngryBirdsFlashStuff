package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §`w§.b2World;
   import §true§.§ _§;
   
   public class §7!Z§ extends §`!<§
   {
       
      
      private var §4!&§:int = 0;
      
      public function §7!Z§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §4!c§ = param12;
         §!!?§ = param13;
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§#!g§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§?!M§.mW * §^g§.§^!S§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§?!M§.mH * §^g§.§^!S§) + Math.random() * -_loc8_ * 2;
            if(§4!c§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §!!?§);
               param1.§0!>§(§4!c§ + "_" + _loc9_,§1!e§.§ !t§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"!J§(§<!]§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§ K§(§1!e§.§ !t§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"!J§(§<!]§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§+F§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§^g§ = § _§.§!6§;
         if(§%!R§ < §-!!§ || §5b§() == null)
         {
            _loc1_.§'Y§(this);
            _loc1_.§"!j§ = false;
            return;
         }
         var _loc2_:Number = x * §^g§.§^!S§;
         var _loc3_:Number = y * §^g§.§^!S§;
         var _loc4_:String = §1!e§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§4!&§ == 1)
         {
            _loc4_ = §1!e§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§4!&§ == 2)
         {
            _loc4_ = §1!e§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§4!&§ = (this.§4!&§ + 1) % 3;
         _loc1_.particles.§ K§(_loc4_,§+F§.§%!W§,§1!e§.§]!e§,_loc2_,_loc3_,-1,"",§1!e§.§+Q§);
      }
   }
}
