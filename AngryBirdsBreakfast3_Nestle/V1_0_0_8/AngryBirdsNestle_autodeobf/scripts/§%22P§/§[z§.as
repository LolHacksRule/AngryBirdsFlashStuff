package §"P§
{
   import §!"+§.§!o§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §6`§.§-!i§;
   import §9G§.§2F§;
   import §=!c§.b2World;
   
   public class §[z§ extends §^!x§
   {
       
      
      private var §%!c§:int = 0;
      
      public function §[z§(param1:Sprite, param2:§-!i§, param3:b2World, param4:§!o§, param5:§#,§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §95§ = param7;
         §5"7§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§"A§;
      }
      
      override protected function addDestructionParticles(param1:§0w§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§`z§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§9!t§.width * §2F§.§6+§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§9!t§.height * §2F§.§6+§) + Math.random() * -_loc8_ * 2;
            if(§95§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §5"7§);
               param1.§`H§(§95§ + "_" + _loc9_,§@"§.§50§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x + _loc7_,§7J§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§@"§.§?"1§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§8" §(§@"§.§50§,§>!s§.§>M§,§@"§.§7![§,§7J§().GetPosition().x + _loc7_,§7J§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§@"§.§?"1§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
