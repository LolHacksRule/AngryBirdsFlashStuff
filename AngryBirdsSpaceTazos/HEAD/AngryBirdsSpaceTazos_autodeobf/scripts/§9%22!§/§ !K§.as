package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §3"#§.§`"8§;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class § !K§ extends §^"3§
   {
       
      
      private var §+>§:int = 0;
      
      public function § !K§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§^!b§;
      }
      
      override protected function addDestructionParticles(param1:§0!s§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§0!B§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§"j§.width * §`"8§.§3!=§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§"j§.height * §`"8§.§3!=§) + Math.random() * -_loc8_ * 2;
            param1.§'"-§(§4R§.§&p§,§switch§.§%!y§,§4R§.§!o§,§`I§().GetPosition().x + _loc7_,§`I§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§4R§.§#!y§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0!s§, param2:int) : void
      {
      }
   }
}
