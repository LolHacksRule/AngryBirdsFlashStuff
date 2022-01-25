package §32§
{
   import § y§.b2World;
   import §#B§.§ ! §;
   import §#B§.§<%§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§2!V§;
   import §<!$§.Sprite;
   
   public class §;U§ extends §<%§
   {
       
      
      public function §;U§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = 15;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = 15 * Math.cos(_loc6_) * Math.random();
            _loc8_ = -15 * Math.sin(_loc6_) * Math.random();
            param1.§;!V§("BLOCK_COKE_RED_EXPLOSION",§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,400 + 700 * Math.random(),"",§&!^§.§5F§(§3a§),_loc7_,_loc8_,10,_loc8_ * 20,0.5 + Math.random() * 1);
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§]s§, param2:int) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc4_:int = 5;
         var _loc5_:Number = 90;
         _loc4_ *= 1;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = (_loc5_ += Math.random() * (720 / _loc4_)) / (180 / Math.PI);
            _loc8_ = 10 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -10 * Math.sin(_loc7_) * Math.random();
            param1.§;!V§("BLOCK_COKE_RED_EXPLOSION",§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,400 + 700 * Math.random(),"",§&!^§.§5F§(§3a§),_loc8_,_loc9_,10,_loc9_ * 20,0.5 + Math.random() * 0.5);
            _loc6_++;
         }
      }
   }
}
