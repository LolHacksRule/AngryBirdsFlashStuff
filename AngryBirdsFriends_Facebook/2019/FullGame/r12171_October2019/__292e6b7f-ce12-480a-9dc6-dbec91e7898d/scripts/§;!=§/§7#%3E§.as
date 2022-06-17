package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §7#>§ extends §1!y§
   {
       
      
      public function §7#>§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function addDestructionParticles(param1:§]!m§) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§="#§ = null;
         var _loc7_:int = 0;
         while(_loc7_ < 15)
         {
            _loc8_ = _loc7_ / 15 * Math.PI;
            _loc9_ = Math.cos(-_loc8_);
            _loc10_ = Math.sin(-_loc8_);
            _loc11_ = 10 + (18 - 10) * Math.random();
            _loc12_ = getBody().GetPosition();
            (_loc13_ = param1.addObject("FIRE_BLOCK_SPARK",_loc12_.x + _loc9_ * 2,_loc12_.y + _loc10_ * 2,0,§ !i§.ID_NEXT_FREE,false,false,false,1,false,true) as §="#§).§0"y§(new b2Vec2(_loc9_ * _loc11_,_loc10_ * _loc11_));
            _loc13_.§-"m§(40 * (Math.random() * 2 - 1));
            _loc7_++;
         }
      }
   }
}
