package §=!`§
{
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §,v§.b2World;
   import §-!b§.§<W§;
   import §]k§.§<S§;
   
   public class §[B§ extends §^^§
   {
       
      
      private var §?!b§:int = 0;
      
      public function §[B§(param1:Sprite, param2:§<W§, param3:b2World, param4:§9!n§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§`Y§;
      }
      
      override protected function addDestructionParticles(param1:§'`§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§@0§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8!p§.width * §<S§.§;!Q§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8!p§.height * §<S§.§;!Q§) + Math.random() * -_loc8_ * 2;
            param1.§6!=§(§=f§.§@"5§,§0!q§.§[!V§,§=f§.§@m§,§^",§().GetPosition().x + _loc7_,§^",§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§=f§.§6!M§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§'`§, param2:int) : void
      {
      }
   }
}
