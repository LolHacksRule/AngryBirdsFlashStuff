package §5"D§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §3R§.§1!R§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §"f§ extends §6!!§
   {
       
      
      private var §9!]§:int = 0;
      
      public function §"f§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@";§;
      }
      
      override protected function addDestructionParticles(param1:§0!5§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = Math.min(49,Math.max(1,§`!%§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§;!5§.width * §1!R§.§00§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§;!5§.height * §1!R§.§00§) + Math.random() * -_loc8_ * 2;
            param1.§'!f§(§8"#§.§&!u§,§'!X§.§=!O§,§8"#§.§^;§,§9B§().GetPosition().x + _loc7_,§9B§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§8"#§.§3!j§(itemName),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§0!5§, param2:int) : void
      {
      }
   }
}
