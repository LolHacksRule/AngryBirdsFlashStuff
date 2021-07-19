package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   
   public class §>!9§ extends §"_§
   {
       
      
      private var §2!V§:int = 0;
      
      public function §>!9§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §`,§ = param7;
         §1!3§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§%!Q§;
      }
      
      override protected function addDestructionParticles(param1:§3!#§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§[z§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§`!f§.width * §?!'§.§'!i§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§`!f§.height * §?!'§.§'!i§) + Math.random() * -_loc8_ * 2;
            if(§`,§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §1!3§);
               param1.§+!v§(§`,§ + "_" + _loc9_,§2_§.§`!%§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + _loc7_,§^`§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2_§.§%j§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§-!,§(§2_§.§`!%§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + _loc7_,§^`§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2_§.§%j§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
