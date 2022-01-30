package §]!q§
{
   import §-!f§.Sprite;
   import §0I§.§!!p§;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class §"P§ extends §,[§
   {
       
      
      private var §#§:int = 0;
      
      public function §"P§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§4!J§;
      }
      
      override protected function addDestructionParticles(param1:§5z§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§3[§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§3<§.width * §!!p§.§6L§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§3<§.height * §!!p§.§6L§) + Math.random() * -_loc8_ * 2;
            param1.§`q§(§?!d§.§`t§,§`O§.§#!`§,§?!d§.§!!I§,§4!7§().GetPosition().x + _loc7_,§4!7§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?!d§.§ !s§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5z§, param2:int) : void
      {
      }
   }
}
