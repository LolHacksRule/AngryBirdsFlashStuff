package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §^#>§.§#_§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §7";§ extends §&#=§
   {
       
      
      private var §;!H§:int = 0;
      
      public function §7";§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §@t§ = param7;
         §2"7§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§=!s§;
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§0"X§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§2N§.width * §#_§.§8]§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§2N§.height * §#_§.§8]§) + Math.random() * -_loc8_ * 2;
            if(§@t§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §2"7§);
               param1.§`?§(§@t§ + "_" + _loc9_,§ U§.§!%§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + _loc7_,§3!t§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§ U§.§`"I§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§;!0§(§ U§.§!%§,§,!w§.§ !B§,§ U§.§'# §,§3!t§().GetPosition().x + _loc7_,§3!t§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§ U§.§`"I§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
