package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§;!E§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §use§.Sprite;
   
   public class §<!^§ extends §0N§
   {
       
      
      private var §8"6§:int = 0;
      
      public function §<!^§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
         §@!9§ = param7;
         §"m§ = param8;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§2v§;
      }
      
      override protected function addDestructionParticles(param1:§'=§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = Math.min(49,Math.max(1,§0"-§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§]!g§.width * §;!E§.§0"?§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§]!g§.height * §;!E§.§0"?§) + Math.random() * -_loc8_ * 2;
            if(§@!9§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §"m§);
               param1.§1#-§(§@!9§ + "_" + _loc9_,§?"E§.§,^§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x + _loc7_,§3"s§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?"E§.§##+§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§>#1§(§?"E§.§,^§,§^#'§.§&5§,§?"E§.§3y§,§3"s§().GetPosition().x + _loc7_,§3"s§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§?"E§.§##+§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
   }
}
