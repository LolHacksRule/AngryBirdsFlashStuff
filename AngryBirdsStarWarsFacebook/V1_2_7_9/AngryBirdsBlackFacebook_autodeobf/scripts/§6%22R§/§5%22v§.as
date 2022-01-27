package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §>P§.§=!,§;
   
   public class §5"v§ extends §4!w§
   {
       
      
      private var §0"m§:int = 0;
      
      public function §5"v§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §82§ = param7;
         §"?§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§ @§;
      }
      
      override protected function addDestructionParticles(param1:§""M§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§!!D§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]h§.width * §3"X§.§;"l§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]h§.height * §3"X§.§;"l§) + Math.random() * -_loc8_ * 2;
            if(§82§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §"?§);
               param1.§-"8§(§82§ + "_" + _loc9_,§;6§.§+"8§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x + _loc7_,§?"Z§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§;6§.§ "'§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§[#$§(§;6§.§+"8§,§#"m§.§=!"§,§;6§.§7'§,§?"Z§().GetPosition().x + _loc7_,§?"Z§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§;6§.§ "'§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
