package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@V§.§#=§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   
   public class §4!X§ extends §@_§
   {
       
      
      private var §,"0§:int = 0;
      
      public function §4!X§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §@"%§ = param7;
         §8W§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@5§;
      }
      
      override protected function addDestructionParticles(param1:§`!m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§&!a§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§=K§.width * §#=§.§^!2§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§=K§.height * §#=§.§^!2§) + Math.random() * -_loc8_ * 2;
            if(§@"%§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §8W§);
               param1.§=9§(§@"%§ + "_" + _loc9_,§`""§.§?!q§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + _loc7_,§!!I§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§`""§.§6!X§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§9!@§(§`""§.§?!q§,§"w§.§,§,§`""§.§@b§,§!!I§().GetPosition().x + _loc7_,§!!I§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§`""§.§6!X§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
