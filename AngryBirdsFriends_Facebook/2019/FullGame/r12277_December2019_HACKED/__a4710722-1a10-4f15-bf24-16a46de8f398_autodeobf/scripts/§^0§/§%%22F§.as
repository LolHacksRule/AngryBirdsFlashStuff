package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §%"F§ extends §%N§
   {
       
      
      public function §%"F§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§1&§ = null;
         var _loc7_:int = 0;
         while(_loc7_ < 15)
         {
            _loc8_ = _loc7_ / 15 * Math.PI;
            _loc9_ = Math.cos(-_loc8_);
            _loc10_ = Math.sin(-_loc8_);
            _loc11_ = 10 + (18 - 10) * Math.random();
            _loc12_ = getBody().GetPosition();
            (_loc13_ = param1.addObject("FIRE_BLOCK_SPARK",_loc12_.x + _loc9_ * 2,_loc12_.y + _loc10_ * 2,0,§%"^§.ID_NEXT_FREE,false,false,false,1,false,true) as §1&§).§+!!§(new b2Vec2(_loc9_ * _loc11_,_loc10_ * _loc11_));
            _loc13_.§^l§(40 * (Math.random() * 2 - 1));
            _loc7_++;
         }
      }
   }
}
