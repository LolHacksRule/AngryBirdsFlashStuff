package §"!-§
{
   import §!!<§.§>"4§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §;'§.b2World;
   import §@"1§.§"h§;
   
   public class §44§ extends §[-§
   {
       
      
      private var §[@§:int = 0;
      
      public function §44§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§-C§;
      }
      
      override protected function addDestructionParticles(param1:§!l§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§'J§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§[c§.width * §"h§.§4<§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§[c§.height * §"h§.§4<§) + Math.random() * -_loc8_ * 2;
            param1.§;!9§(§%v§.§ j§,§8W§.§8!C§,§%v§.§!-§,§9l§().GetPosition().x + _loc7_,§9l§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§%v§.§#S§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§!l§, param2:int) : void
      {
      }
   }
}
