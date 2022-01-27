package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §3L§ extends § 6§
   {
       
      
      public function §3L§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§;U§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc4_:Number = §^!z§().GetPosition().x;
         var _loc5_:Number = §^!z§().GetPosition().y;
         var _loc6_:Number = §^!z§().GetLinearVelocity().x;
         var _loc7_:Number = §^!z§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         var _loc9_:Number = -_loc6_ / _loc8_;
         var _loc10_:Number = _loc7_ / _loc8_;
         var _loc11_:§ 6§;
         (_loc11_ = § 6§(param1.addObject("BIRD_BLUE",_loc4_ - _loc10_,_loc5_ - _loc9_,0,§-%§.§;!J§,true,false,false,scale))).§=9§(new b2Vec2(_loc6_ - 7 * _loc10_,_loc7_ - 7 * _loc9_));
         (_loc11_ = § 6§(param1.addObject("BIRD_BLUE",_loc4_ + _loc10_,_loc5_ + _loc9_,0,§-%§.§;!J§,true,false,false,scale))).§=9§(new b2Vec2(_loc6_ + 7 * _loc10_,_loc7_ + 7 * _loc9_));
      }
   }
}
