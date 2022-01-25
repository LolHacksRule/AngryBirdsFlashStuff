package §%Z§
{
   import § 2§.§=+§;
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §1H§ extends §&!-§
   {
       
      
      private var § !m§:int = 0;
      
      public function §1H§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §%H§ = param7;
         §+G§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§'S§;
      }
      
      override protected function addDestructionParticles(param1:§8!m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§3!K§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§41§.width * §=+§.§5!w§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§41§.height * §=+§.§5!w§) + Math.random() * -_loc8_ * 2;
            if(§%H§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §+G§);
               param1.§>D§(§%H§ + "_" + _loc9_,§'!P§.§>!^§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x + _loc7_,§-!N§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'!P§.§&%§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§+<§(§'!P§.§>!^§,§2!k§.§ g§,§'!P§.§>]§,§-!N§().GetPosition().x + _loc7_,§-!N§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§'!P§.§&%§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
