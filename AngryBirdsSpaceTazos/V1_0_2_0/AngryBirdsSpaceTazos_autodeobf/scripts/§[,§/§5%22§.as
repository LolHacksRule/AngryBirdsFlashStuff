package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §8o§.§]!U§;
   import §;"=§.§]"<§;
   import §?!<§.§'!1§;
   
   public class §5"§ extends §5,§
   {
       
      
      private var §"!y§:int = 0;
      
      public function §5"§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@Q§;
      }
      
      override protected function addDestructionParticles(param1:§class§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§&!Q§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§&"C§.width * §'!1§.§<!@§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§&"C§.height * §'!1§.§<!@§) + Math.random() * -_loc8_ * 2;
            param1.§=J§(§9!v§.§,B§,§?L§.§7!B§,§9!v§.§7!@§,§ <§().GetPosition().x + _loc7_,§ <§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§9!v§.§'!Y§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§class§, param2:int) : void
      {
      }
   }
}
