package §2!k§
{
   import § !=§.Sprite;
   import §0!j§.b2World;
   import §;L§.§=l§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §[^§.§`!M§;
   import §]A§.§[d§;
   
   public class §]!§ extends §;;§
   {
       
      
      private var §[I§:int = 0;
      
      public function §]!§(param1:Sprite, param2:§=l§, param3:b2World, param4:§`!M§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§;!M§;
      }
      
      override protected function addDestructionParticles(param1:§?N§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§0!s§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§ !@§.width * §[d§.§]!U§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§ !@§.height * §[d§.§]!U§) + Math.random() * -_loc8_ * 2;
            param1.§;$§(§3?§.§8"4§,§@!`§.§<<§,§3?§.§72§,§ 2§().GetPosition().x + _loc7_,§ 2§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§3?§.§"N§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§?N§, param2:int) : void
      {
      }
   }
}
