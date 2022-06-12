package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §5j§ extends §^#x§
   {
       
      
      public function §5j§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§-#9§ = null;
         var _loc7_:int = 0;
         while(_loc7_ < 15)
         {
            _loc8_ = _loc7_ / 15 * Math.PI;
            _loc9_ = Math.cos(-_loc8_);
            _loc10_ = Math.sin(-_loc8_);
            _loc11_ = 10 + (18 - 10) * Math.random();
            _loc12_ = getBody().GetPosition();
            (_loc13_ = param1.addObject("FIRE_BLOCK_SPARK",_loc12_.x + _loc9_ * 2,_loc12_.y + _loc10_ * 2,0,§'!§.ID_NEXT_FREE,false,false,false,1,false,true) as §-#9§).§-#l§(new b2Vec2(_loc9_ * _loc11_,_loc10_ * _loc11_));
            _loc13_.§9"&§(40 * (Math.random() * 2 - 1));
            _loc7_++;
         }
      }
   }
}
